/* Copyright 2019 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/reference/reduce.h"

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/c/builtin_op_data.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/c/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/quantization_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/reference/integer_ops/mean.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/tensor_ctypes.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/types.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/kernel_util.h"

namespace tflite {
namespace ops {
namespace micro {
namespace reduce {

constexpr int kMaxNumberOfAxis = 4;
constexpr int kMaxNumberOfReducedAxis = 2;

struct OpData {
  int32_t multiplier;
  int shift;
  int temp_buffer_idx;
};

void* InitMean(TfLiteContext* context, const char* buffer, size_t length) {
  void* raw;
  context->AllocatePersistentBuffer(context, sizeof(OpData), &raw);
  return raw;
}

TfLiteStatus PrepareSimple(TfLiteContext* context, TfLiteNode* node) {
  // Inputs Tensor (dtype depends on quantization):
  // [0] = Input
  // [1] = Axis

  // Outputs Tensor (dtype depends on quantization):
  // [0] = Output

  // Validate number of inputs and outputs
  TF_LITE_ENSURE_EQ(context, node->inputs->size, 2);
  TF_LITE_ENSURE_EQ(context, node->outputs->size, 1);

  // Validate axis type
  const TfLiteTensor* axis = GetInput(context, node, 1);
  TF_LITE_ENSURE_TYPES_EQ(context, axis->type, kTfLiteInt32);
  return kTfLiteOk;
}

TfLiteStatus PrepareMeanOrSum(TfLiteContext* context, TfLiteNode* node) {
  const TfLiteTensor* input = GetInput(context, node, 0);
  OpData* op_data = reinterpret_cast<OpData*>(node->user_data);
  const TfLiteTensor* output = GetOutput(context, node, 0);
  if (input->type == kTfLiteInt8) {
    const double real_multiplier = static_cast<double>(input->params.scale) /
                                   static_cast<double>(output->params.scale);
    QuantizeMultiplier(real_multiplier, &op_data->multiplier, &op_data->shift);
  }

  int output_size = NumElements(output);
  if (input->type == kTfLiteInt8 || input->type == kTfLiteUInt8) {
    context->RequestScratchBufferInArena(context, output_size * sizeof(int32_t),
                                         &op_data->temp_buffer_idx);
  }

  TF_LITE_ENSURE_OK(context, PrepareSimple(context, node));
  // TODO(b/144955155): Support uint8(b/144955155) and int8(b/144955018)
  return kTfLiteOk;
}

void ResolveAxis(const int* axis_data, int axis_count,
                 tflite::MeanParams* op_params) {
  int i = 0;
  for (; i < axis_count; ++i) {
    op_params->axis[i] = static_cast<int16>(axis_data[i]);
  }
  for (; i < 4; ++i) {
    op_params->axis[i] = 1;
  }
  op_params->axis_count = axis_count;
}

TfLiteStatus EvalMean(TfLiteContext* context, TfLiteNode* node) {
  const TfLiteTensor* input = GetInput(context, node, 0);
  const TfLiteTensor* axis = GetInput(context, node, 1);
  TfLiteTensor* output = GetOutput(context, node, 0);
  TfLiteReducerParams* params =
      reinterpret_cast<TfLiteReducerParams*>(node->builtin_data);
  OpData* op_data = reinterpret_cast<OpData*>(node->user_data);

  int num_axis = static_cast<int>(NumElements(axis));
  int temp_index[kMaxNumberOfAxis];
  int resolved_axis[kMaxNumberOfReducedAxis];

  tflite::MeanParams op_params;
  ResolveAxis(GetTensorData<int>(axis), num_axis, &op_params);
  // TODO(b/146571391): Support only 4D Input and 2D Axis for Mean until
  // scratch tensor allocation has been implemented in (b/132070898)
  bool is_valid_inputs =
      (NumDimensions(input) == 4 && op_params.axis_count == 2 &&
       ((op_params.axis[0] == 1 && op_params.axis[1] == 2) ||
        (op_params.axis[0] == 2 && op_params.axis[1] == 1)));
  TF_LITE_ENSURE_MSG(
      context, is_valid_inputs == true,
      "Number of Input "
      "dimensions != 4 OR the Axis is not either [1, 2] or [2, 1]");
  switch (input->type) {
    case kTfLiteFloat32: {
      // TODO(b/139102329): Handle the below special case in the combined
      // reference method.
      // Defer to specialized implementation for 4D Mean across axes 1 & 2.
      if (params->keep_dims) {
        reference_ops::Mean(op_params, GetTensorShape(input),
                            GetTensorData<float>(input), GetTensorShape(output),
                            GetTensorData<float>(output));
      } else {
        TF_LITE_ENSURE(
            context,
            reference_ops::Mean(GetTensorData<float>(input), input->dims->data,
                                input->dims->size, GetTensorData<float>(output),
                                output->dims->data, output->dims->size,
                                GetTensorData<int>(axis), num_axis,
                                params->keep_dims, temp_index, resolved_axis,
                                GetTensorData<float>(output)));
      }
    } break;
    case kTfLiteInt8: {
      if (params->keep_dims) {
        reference_integer_ops::Mean(
            op_params, op_data->multiplier, op_data->shift,
            GetTensorShape(input), GetTensorData<int8_t>(input),
            input->params.zero_point, GetTensorShape(output),
            GetTensorData<int8_t>(output), output->params.zero_point);
      } else if (input->params.zero_point == output->params.zero_point &&
                 input->params.scale == output->params.scale) {
        int32_t* temp_buffer = static_cast<int32_t*>(
            context->GetScratchBuffer(context, op_data->temp_buffer_idx));
        TF_LITE_ENSURE(
            context, reference_ops::Mean(
                         GetTensorData<int8_t>(input), input->dims->data,
                         input->dims->size, GetTensorData<int8_t>(output),
                         output->dims->data, output->dims->size,
                         GetTensorData<int>(axis), num_axis, params->keep_dims,
                         temp_index, resolved_axis, temp_buffer));
      } else {
        int32_t* temp_buffer = static_cast<int32_t*>(
            context->GetScratchBuffer(context, op_data->temp_buffer_idx));
        TF_LITE_ENSURE(
            context,
            reference_ops::QuantizedMeanOrSum(
                GetTensorData<int8_t>(input), input->params.zero_point,
                input->params.scale, input->dims->data, input->dims->size,
                GetTensorData<int8_t>(output), output->params.zero_point,
                output->params.scale, output->dims->data, output->dims->size,
                GetTensorData<int>(axis), num_axis, params->keep_dims,
                temp_index, resolved_axis, temp_buffer, false));
      }
    } break;
    case kTfLiteUInt8: {
      if (params->keep_dims) {
        reference_ops::Mean(
            op_params, GetTensorShape(input), GetTensorData<uint8_t>(input),
            input->params.zero_point, input->params.scale,
            GetTensorShape(output), GetTensorData<uint8_t>(output),
            output->params.zero_point, output->params.scale);
      } else if (input->params.zero_point == output->params.zero_point &&
                 input->params.scale == output->params.scale) {
        uint32_t* temp_buffer = static_cast<uint32_t*>(
            context->GetScratchBuffer(context, op_data->temp_buffer_idx));
        TF_LITE_ENSURE(
            context, reference_ops::Mean(
                         GetTensorData<uint8_t>(input), input->dims->data,
                         input->dims->size, GetTensorData<uint8_t>(output),
                         output->dims->data, output->dims->size,
                         GetTensorData<int>(axis), num_axis, params->keep_dims,
                         temp_index, resolved_axis, temp_buffer));
      } else {
        uint32_t* temp_buffer = static_cast<uint32_t*>(
            context->GetScratchBuffer(context, op_data->temp_buffer_idx));
        TF_LITE_ENSURE(
            context,
            reference_ops::QuantizedMeanOrSum(
                GetTensorData<uint8_t>(input), input->params.zero_point,
                input->params.scale, input->dims->data, input->dims->size,
                GetTensorData<uint8_t>(output), output->params.zero_point,
                output->params.scale, output->dims->data, output->dims->size,
                GetTensorData<int>(axis), num_axis, params->keep_dims,
                temp_index, resolved_axis, temp_buffer, false));
      }
    } break;
    default:
      // TODO(b/144955155): Support uint8(b/144955155) and int8(b/144955018)
      TF_LITE_ENSURE_MSG(context, false,
                         "Currently, only float32, int8 or uint8 input type "
                         "is supported.");
  }
  return kTfLiteOk;
}
}  // namespace reduce

TfLiteRegistration Register_MEAN() {
  return {/*init=*/reduce::InitMean,
          /*free=*/nullptr,
          /*prepare=*/reduce::PrepareMeanOrSum,
          /*invoke=*/reduce::EvalMean,
          /*profiling_string=*/nullptr,
          /*builtin_code=*/0,
          /*custom_name=*/nullptr,
          /*version=*/0};
}
}  // namespace micro
}  // namespace ops
}  // namespace tflite
