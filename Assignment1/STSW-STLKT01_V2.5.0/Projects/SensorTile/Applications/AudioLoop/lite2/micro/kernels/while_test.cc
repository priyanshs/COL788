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

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/builtin_op_data.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/kernels/kernel_runner.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/micro_arena_constants.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/micro_interpreter.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/mock_micro_graph.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/test_helper_custom_ops.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/test_helpers.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing/micro_test.h"

TF_LITE_MICRO_TESTS_BEGIN

TF_LITE_MICRO_TEST(WhileShouldNeverInvokeConditionFalse) {
  constexpr int kArenaSize = 5000;
  uint8_t arena[kArenaSize];

  const tflite::Model* model =
      tflite::testing::GetSimpleModelWithSubgraphsAndWhile();
  tflite::MicroMutableOpResolver<3> resolver;
  resolver.AddWhile();
  resolver.AddAdd();
  resolver.AddLess();
  tflite::MicroInterpreter interpreter(model, resolver, arena, kArenaSize);
  TF_LITE_MICRO_EXPECT_EQ(kTfLiteOk, interpreter.AllocateTensors());
  TfLiteTensor* input0 = interpreter.input(0);
  TfLiteTensor* input1 = interpreter.input(1);
  TfLiteTensor* output0 = interpreter.output(0);
  TfLiteTensor* output1 = interpreter.output(1);
  input0->data.f[0] = 3.0f;
  input1->data.f[0] = 2.0f;

  interpreter.Invoke();

  TF_LITE_MICRO_EXPECT_EQ(output0->data.f[0], 3.0f);
  TF_LITE_MICRO_EXPECT_EQ(output1->data.f[0], 2.0f);
}

TF_LITE_MICRO_TEST(WhileShouldInvokeOnce) {
  constexpr int kArenaSize = 5000;
  uint8_t arena[kArenaSize];

  const tflite::Model* model =
      tflite::testing::GetSimpleModelWithSubgraphsAndWhile();
  tflite::MicroMutableOpResolver<3> resolver;
  resolver.AddWhile();
  resolver.AddAdd();
  resolver.AddLess();
  tflite::MicroInterpreter interpreter(model, resolver, arena, kArenaSize);
  TF_LITE_MICRO_EXPECT_EQ(kTfLiteOk, interpreter.AllocateTensors());
  TfLiteTensor* input0 = interpreter.input(0);
  TfLiteTensor* input1 = interpreter.input(1);
  TfLiteTensor* output0 = interpreter.output(0);
  TfLiteTensor* output1 = interpreter.output(1);
  input0->data.f[0] = 2.0f;
  input1->data.f[0] = 3.0f;

  interpreter.Invoke();

  TF_LITE_MICRO_EXPECT_EQ(output0->data.f[0], 5.0f);
  TF_LITE_MICRO_EXPECT_EQ(output1->data.f[0], 3.0f);
}

TF_LITE_MICRO_TESTS_END
