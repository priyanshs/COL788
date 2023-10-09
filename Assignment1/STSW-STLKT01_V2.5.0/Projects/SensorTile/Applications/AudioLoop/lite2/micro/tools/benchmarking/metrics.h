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

#ifndef TFLM_BENCHMARK_INTERNAL_METRICS_H_
#define TFLM_BENCHMARK_INTERNAL_METRICS_H_

#include <stdio.h>

#include <cmath>
#include <cstdint>

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/micro_profiler.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/recording_micro_allocator.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/tools/benchmarking/log_utils.h"

namespace tflite {

// Logs the allocation events. Prints out two tables, one for the arena
// allocations, and one for each type of TFLM allocation type.
// Args:
//   - allocator: The recording micro allocator used during the invocation
//       process.
//   - type: Which print format should be used to output the allocation data to
//       stdout.
void LogAllocatorEvents(const tflite::RecordingMicroAllocator& allocator,
                        PrettyPrintType type);
}  // namespace tflite

#endif  // TFLM_BENCHMARK_INTERNAL_METRICS_H_
