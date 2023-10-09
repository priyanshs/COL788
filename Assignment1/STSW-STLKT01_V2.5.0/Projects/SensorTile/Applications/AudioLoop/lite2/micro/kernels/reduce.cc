/* Copyright 2022 The TensorFlow Authors. All Rights Reserved.

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

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/reference/reduce.h"

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/builtin_op_data.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/quantization_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/reference/integer_ops/mean.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/tensor_ctypes.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/types.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/kernel_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/kernels/kernel_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/kernels/reduce.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/micro_utils.h"

namespace tflite {

void* InitReduce(TfLiteContext* context, const char* buffer, size_t length) {
  return context->AllocatePersistentBuffer(context, sizeof(OpDataReduce));
}

TfLiteStatus PrepareMax(TfLiteContext* context, TfLiteNode* node) {
  return PrepareMaxHelper(context, node,
                          static_cast<OpDataReduce*>(node->user_data));
}

TfLiteStatus PrepareMeanOrSum(TfLiteContext* context, TfLiteNode* node) {
  return PrepareMeanOrSumHelper(context, node,
                                static_cast<OpDataReduce*>(node->user_data));
}

TfLiteStatus EvalMean(TfLiteContext* context, TfLiteNode* node) {
  return EvalMeanHelper(context, node,
                        static_cast<OpDataReduce*>(node->user_data));
}

TfLiteStatus EvalMax(TfLiteContext* context, TfLiteNode* node) {
  OpDataReduce* op_data = static_cast<OpDataReduce*>(node->user_data);
  return EvalMaxHelper(context, node, op_data);
}

TfLiteStatus EvalSum(TfLiteContext* context, TfLiteNode* node) {
  return EvalSumHelper(context, node,
                       static_cast<OpDataReduce*>(node->user_data));
}

TFLMRegistration Register_MEAN() {
  return tflite::micro::RegisterOp(InitReduce, PrepareMeanOrSum, EvalMean);
}

TFLMRegistration Register_REDUCE_MAX() {
  return tflite::micro::RegisterOp(InitReduce, PrepareMax, EvalMax);
}

TFLMRegistration Register_SUM() {
  return tflite::micro::RegisterOp(InitReduce, PrepareMeanOrSum, EvalSum);
}

}  // namespace tflite
