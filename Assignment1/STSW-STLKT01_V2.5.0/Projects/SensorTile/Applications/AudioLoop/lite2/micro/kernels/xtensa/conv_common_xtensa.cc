/* Copyright 2023 The TensorFlow Authors. All Rights Reserved.

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

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/builtin_op_data.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/tensor_ctypes.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/kernel_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/kernels/conv.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/kernels/kernel_util.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/kernels/xtensa/xtensa.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/kernels/xtensa/xtensa_conv.h"

namespace tflite {

void* ConvInitXtensa(TfLiteContext* context, const char* buffer,
                     size_t length) {
  TFLITE_DCHECK(context->AllocatePersistentBuffer != nullptr);
  void* data =
      context->AllocatePersistentBuffer(context, sizeof(XtensaConvOpData));
#if defined(VISION_P6)
  if (InitXtensaContext()) {
    return nullptr;
  }
#endif  // defined(VISION_P6)

  return data;
}

TfLiteStatus ConvPrepareXtensa(TfLiteContext* context, TfLiteNode* node) {
  TF_LITE_ENSURE_OK(context, ConvPrepare(context, node));

#if defined(HIFI3) || defined(HIFI4) || defined(HIFI5)
  TF_LITE_ENSURE_OK(context, ConvPrepareHifi(context, node));
#endif  // defined(HIFI3) || defined(HIFI4) || defined(HIFI5)

#if defined(VISION_P6)
  TF_LITE_ENSURE_OK(context, ConvPrepareVision(context, node));
#endif  // defined(VISION_P6)

  return kTfLiteOk;
}

}  // namespace tflite
