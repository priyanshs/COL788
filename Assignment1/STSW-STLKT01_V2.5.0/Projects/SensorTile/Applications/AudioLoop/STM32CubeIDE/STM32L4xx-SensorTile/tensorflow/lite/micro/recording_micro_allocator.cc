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

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/recording_micro_allocator.h"

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/core/api/error_reporter.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/kernels/internal/compatibility.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/compatibility.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/recording_simple_memory_allocator.h"

namespace tflite {

RecordingMicroAllocator::RecordingMicroAllocator(
    RecordingSimpleMemoryAllocator* recording_memory_allocator,
    ErrorReporter* error_reporter)
    : MicroAllocator(recording_memory_allocator, error_reporter),
      recording_memory_allocator_(recording_memory_allocator) {}

RecordingMicroAllocator* RecordingMicroAllocator::Create(
    uint8_t* tensor_arena, size_t arena_size, ErrorReporter* error_reporter) {
  TFLITE_DCHECK(error_reporter != nullptr);

  RecordingSimpleMemoryAllocator* simple_memory_allocator =
      RecordingSimpleMemoryAllocator::Create(error_reporter, tensor_arena,
                                             arena_size);
  TFLITE_DCHECK(simple_memory_allocator != nullptr);

  uint8_t* allocator_buffer = simple_memory_allocator->AllocateFromTail(
      sizeof(RecordingMicroAllocator), alignof(RecordingMicroAllocator));
  RecordingMicroAllocator* allocator = new (allocator_buffer)
      RecordingMicroAllocator(simple_memory_allocator, error_reporter);
  return allocator;
}

RecordedAllocation RecordingMicroAllocator::GetRecordedAllocation(
    RecordedAllocationType allocation_type) const {
  switch (allocation_type) {
    case RecordedAllocationType::kTfLiteTensorArray:
      return recorded_tflite_tensor_array_data_;
    case RecordedAllocationType::kTfLiteTensorArrayQuantizationData:
      return recorded_tflite_tensor_array_quantization_data_;
    case RecordedAllocationType::kTfLiteTensorVariableBufferData:
      return recorded_tflite_tensor_variable_buffer_data_;
    case RecordedAllocationType::kNodeAndRegistrationArray:
      return recorded_node_and_registration_array_data_;
    case RecordedAllocationType::kOpData:
      return recorded_op_data_;
  }
  TF_LITE_REPORT_ERROR(error_reporter(), "Invalid allocation type supplied: %d",
                       allocation_type);
  return RecordedAllocation();
}

const RecordingSimpleMemoryAllocator*
RecordingMicroAllocator::GetSimpleMemoryAllocator() const {
  return recording_memory_allocator_;
}

void RecordingMicroAllocator::PrintAllocations() const {
  TF_LITE_REPORT_ERROR(
      error_reporter(),
      "[RecordingMicroAllocator] Arena allocation total %d bytes",
      recording_memory_allocator_->GetUsedBytes());
  TF_LITE_REPORT_ERROR(
      error_reporter(),
      "[RecordingMicroAllocator] Arena allocation head %d bytes",
      recording_memory_allocator_->GetHeadUsedBytes());
  TF_LITE_REPORT_ERROR(
      error_reporter(),
      "[RecordingMicroAllocator] Arena allocation tail %d bytes",
      recording_memory_allocator_->GetTailUsedBytes());
  PrintRecordedAllocation(RecordedAllocationType::kTfLiteTensorArray,
                          "TfLiteTensor struct", "tensors");
  PrintRecordedAllocation(
      RecordedAllocationType::kTfLiteTensorArrayQuantizationData,
      "TfLiteTensor quantization data", "allocations");
  PrintRecordedAllocation(
      RecordedAllocationType::kTfLiteTensorVariableBufferData,
      "TfLiteTensor variable buffer data", "allocations");
  PrintRecordedAllocation(RecordedAllocationType::kNodeAndRegistrationArray,
                          "NodeAndRegistration struct",
                          "NodeAndRegistration structs");
  PrintRecordedAllocation(RecordedAllocationType::kOpData,
                          "Operator runtime data", "OpData structs");
}

void RecordingMicroAllocator::PrintRecordedAllocation(
    RecordedAllocationType allocation_type, const char* allocation_name,
    const char* allocation_description) const {
  RecordedAllocation allocation = GetRecordedAllocation(allocation_type);
  TF_LITE_REPORT_ERROR(
      error_reporter(),
      "[RecordingMicroAllocator] '%s' used %d bytes with alignment overhead "
      "(requested %d bytes for %d %s)",
      allocation_name, allocation.used_bytes, allocation.requested_bytes,
      allocation.count, allocation_description);
}

TfLiteStatus RecordingMicroAllocator::AllocateTfLiteTensorArray(
    TfLiteContext* context, const SubGraph* subgraph) {
  RecordedAllocation allocations = SnapshotAllocationUsage();

  TfLiteStatus status =
      MicroAllocator::AllocateTfLiteTensorArray(context, subgraph);

  RecordAllocationUsage(allocations, recorded_tflite_tensor_array_data_);
  // The allocation for this recording will always be 1. This is because the
  // parent class mallocs one large allocation for the number of tensors in the
  // graph (e.g. sizeof(TfLiteTensor) * num_tensors).
  // To prevent extra overhead and potential for fragmentation, manually adjust
  // the accounting by decrementing by 1 and adding the actual number of tensors
  // used in the graph:
  recorded_tflite_tensor_array_data_.count += context->tensors_size - 1;
  return status;
}

TfLiteStatus RecordingMicroAllocator::PopulateTfLiteTensorArrayFromFlatbuffer(
    const Model* model, TfLiteContext* context, const SubGraph* subgraph) {
  RecordedAllocation allocations = SnapshotAllocationUsage();

  TfLiteStatus status = MicroAllocator::PopulateTfLiteTensorArrayFromFlatbuffer(
      model, context, subgraph);

  RecordAllocationUsage(allocations,
                        recorded_tflite_tensor_array_quantization_data_);
  return status;
}

TfLiteStatus RecordingMicroAllocator::AllocateNodeAndRegistrations(
    const SubGraph* subgraph, NodeAndRegistration** node_and_registrations) {
  RecordedAllocation allocations = SnapshotAllocationUsage();

  TfLiteStatus status = MicroAllocator::AllocateNodeAndRegistrations(
      subgraph, node_and_registrations);

  RecordAllocationUsage(allocations,
                        recorded_node_and_registration_array_data_);
  // The allocation count in SimpleMemoryAllocator will only be 1. To provide
  // better logging, decrement by 1 and add in the actual number of operators
  // used in the graph:
  // The allocation for this recording will always be 1. This is because the
  // parent class mallocs one large allocation for the number of nodes in the
  // graph (e.g. sizeof(NodeAndRegistration) * num_nodes).
  // To prevent extra overhead and potential for fragmentation, manually adjust
  // the accounting by decrementing by 1 and adding the actual number of nodes
  // used in the graph:
  recorded_node_and_registration_array_data_.count +=
      subgraph->operators()->size() - 1;
  return status;
}

TfLiteStatus
RecordingMicroAllocator::PrepareNodeAndRegistrationDataFromFlatbuffer(
    const Model* model, const SubGraph* subgraph,
    const MicroOpResolver& op_resolver,
    NodeAndRegistration* node_and_registrations) {
  RecordedAllocation allocations = SnapshotAllocationUsage();

  TfLiteStatus status =
      MicroAllocator::PrepareNodeAndRegistrationDataFromFlatbuffer(
          model, subgraph, op_resolver, node_and_registrations);

  RecordAllocationUsage(allocations, recorded_op_data_);
  return status;
}

TfLiteStatus RecordingMicroAllocator::AllocateVariables(
    TfLiteContext* context, const SubGraph* subgraph) {
  RecordedAllocation allocations = SnapshotAllocationUsage();

  TfLiteStatus status = MicroAllocator::AllocateVariables(context, subgraph);

  RecordAllocationUsage(allocations,
                        recorded_tflite_tensor_variable_buffer_data_);
  return status;
}

RecordedAllocation RecordingMicroAllocator::SnapshotAllocationUsage() const {
  return {/*requested_bytes=*/recording_memory_allocator_->GetRequestedBytes(),
          /*used_bytes=*/recording_memory_allocator_->GetUsedBytes(),
          /*count=*/recording_memory_allocator_->GetAllocatedCount()};
}

void RecordingMicroAllocator::RecordAllocationUsage(
    const RecordedAllocation& snapshotted_allocation,
    RecordedAllocation& recorded_allocation) {
  recorded_allocation.requested_bytes +=
      recording_memory_allocator_->GetRequestedBytes() -
      snapshotted_allocation.requested_bytes;
  recorded_allocation.used_bytes +=
      recording_memory_allocator_->GetUsedBytes() -
      snapshotted_allocation.used_bytes;
  recorded_allocation.count +=
      recording_memory_allocator_->GetAllocatedCount() -
      snapshotted_allocation.count;
}

}  // namespace tflite
