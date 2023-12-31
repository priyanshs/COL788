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

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/reference/hard_swish.h"

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/builtin_op_data.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/quantization_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/tensor_ctypes.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/types.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/kernel_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/op_macros.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/micro_utils.h"

namespace tflite {
namespace ops {
namespace micro {
namespace hard_swish {

constexpr int kInputTensor = 0;
constexpr int kOutputTensor = 0;

void* HardSwishInit(TfLiteContext* context, const char* buffer, size_t length) {
  void* data = nullptr;
  if (context->AllocatePersistentBuffer(context, sizeof(HardSwishParams),
                                        &data) == kTfLiteError) {
    return nullptr;
  }
  return data;
}

TfLiteStatus HardSwishPrepare(TfLiteContext* context, TfLiteNode* node) {
  TFLITE_DCHECK(node->user_data != nullptr);
  TF_LITE_ENSURE_EQ(context, NumInputs(node), 1);
  TF_LITE_ENSURE_EQ(context, NumOutputs(node), 1);

  const TfLiteTensor* input = GetInput(context, node, kInputTensor);
  TfLiteTensor* output = GetOutput(context, node, kOutputTensor);

  if (input->type == kTfLiteUInt8 || input->type == kTfLiteInt8) {
    HardSwishParams* params = static_cast<HardSwishParams*>(node->user_data);

    params->input_zero_point = input->params.zero_point;
    params->output_zero_point = output->params.zero_point;

    const float input_scale = input->params.scale;
    const float hires_input_scale = (1.0f / 128.0f) * input_scale;
    const float reluish_scale = 3.0f / 32768.0f;
    const float output_scale = output->params.scale;

    const double output_multiplier =
        static_cast<double>(hires_input_scale / output_scale);
    int32_t output_multiplier_fixedpoint_int32;
    QuantizeMultiplier(output_multiplier, &output_multiplier_fixedpoint_int32,
                       &params->output_multiplier_exponent);
    DownScaleInt32ToInt16Multiplier(
        output_multiplier_fixedpoint_int32,
        &params->output_multiplier_fixedpoint_int16);

    TF_LITE_ENSURE(context, params->output_multiplier_exponent <= 0);

    const double reluish_multiplier =
        static_cast<double>(hires_input_scale / reluish_scale);
    int32_t reluish_multiplier_fixedpoint_int32;
    QuantizeMultiplier(reluish_multiplier, &reluish_multiplier_fixedpoint_int32,
                       &params->reluish_multiplier_exponent);
    DownScaleInt32ToInt16Multiplier(
        reluish_multiplier_fixedpoint_int32,
        &params->reluish_multiplier_fixedpoint_int16);
  }

  return kTfLiteOk;
}

TfLiteStatus HardSwishEval(TfLiteContext* context, TfLiteNode* node) {
  const TfLiteTensor* input = GetInput(context, node, kInputTensor);
  TfLiteTensor* output = GetOutput(context, node, kOutputTensor);
  HardSwishParams* params = static_cast<HardSwishParams*>(node->user_data);

  switch (input->type) {
    case kTfLiteFloat32: {
      tflite::reference_ops::HardSwish<float>(
          GetTensorShape(input), GetTensorData<float>(input),
          GetTensorShape(output), GetTensorData<float>(output));
    } break;
    case kTfLiteUInt8: {
      tflite::reference_ops::HardSwish<uint8_t>(
          *params, GetTensorShape(input), GetTensorData<uint8_t>(input),
          GetTensorShape(output), GetTensorData<uint8_t>(output));
    } break;
    case kTfLiteInt8: {
      tflite::reference_ops::HardSwish<int8_t>(
          *params, GetTensorShape(input), GetTensorData<int8_t>(input),
          GetTensorShape(output), GetTensorData<int8_t>(output));
    } break;
    default: {
      TF_LITE_KERNEL_LOG(
          context, "Only float32/int8/uint8 are supported currently, got %s",
          TfLiteTypeGetName(input->type));
      return kTfLiteError;
    }
  }
  return kTfLiteOk;
}

}  // namespace hard_swish

TfLiteRegistration Register_HARD_SWISH() {
  return {/*init=*/hard_swish::HardSwishInit,
          /*free=*/nullptr,
          /*prepare=*/hard_swish::HardSwishPrepare,
          /*invoke=*/hard_swish::HardSwishEval,
          /*profiling_string=*/nullptr,
          /*builtin_code=*/0,
          /*custom_name=*/nullptr,
          /*version=*/0};
}

}  // namespace micro
}  // namespace ops
}  // namespace tflite
