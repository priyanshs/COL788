/* Copyright 2020 The TensorFlow Authors. All Rights Reserved.

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

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/micro_profiler.h"

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/compatibility.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/micro_time.h"

namespace tflite {

MicroProfiler::MicroProfiler(tflite::ErrorReporter* reporter)
    : reporter_(reporter) {}

uint32_t MicroProfiler::BeginEvent(const char* tag, EventType event_type,
                                   int64_t event_metadata1,
                                   int64_t event_metadata2) {
  start_time_ = GetCurrentTimeTicks();
  TFLITE_DCHECK(tag != nullptr);
  event_tag_ = tag;
  return 0;
}

void MicroProfiler::EndEvent(uint32_t event_handle) {
  int32_t end_time = GetCurrentTimeTicks();
  TF_LITE_REPORT_ERROR(reporter_, "%s took %d cycles\n", event_tag_,
                       end_time - start_time_);
}

}  // namespace tflite
