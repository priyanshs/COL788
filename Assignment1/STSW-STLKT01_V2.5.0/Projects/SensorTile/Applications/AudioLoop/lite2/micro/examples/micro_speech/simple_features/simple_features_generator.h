/* Copyright 2018 The TensorFlow Authors. All Rights Reserved.

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

#ifndef TENSORFLOW_LITE_MICRO_EXAMPLES_MICRO_SPEECH_SIMPLE_FEATURES_SIMPLE_FEATURES_GENERATOR_H_
#define TENSORFLOW_LITE_MICRO_EXAMPLES_MICRO_SPEECH_SIMPLE_FEATURES_SIMPLE_FEATURES_GENERATOR_H_

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c/common.h"

// Converts audio sample data into a more compact form that's appropriate for
// feeding into a neural network. There are reference implementations that use
// both floating point and fixed point available, but because the calculations
// involved can be time-consuming, it's recommended that you use or write
// specialized versions for your platform.
TfLiteStatus GenerateSimpleFeatures(const int16_t* input, int input_size,
                                    int output_size, uint8_t* output);

#endif  // TENSORFLOW_LITE_MICRO_EXAMPLES_MICRO_SPEECH_SIMPLE_FEATURES_SIMPLE_FEATURES_GENERATOR_H_