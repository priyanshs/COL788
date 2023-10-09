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

#ifndef TENSORFLOW_LITE_MICRO_TEST_HELPERS_H_
#define TENSORFLOW_LITE_MICRO_TEST_HELPERS_H_

// Useful functions for writing tests.

#include <cstdint>

#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/third_party/flatbuffers/include/flatbuffers/flatbuffers.h"  // from @flatbuffers
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/c/common.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/compatibility.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/all_ops_resolver.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/micro_utils.h"
#include "/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/schema/schema_generated.h"

namespace tflite {
namespace testing {

constexpr int kOfflinePlannerHeaderSize = 3;

struct NodeConnection_ {
  std::initializer_list<int32_t> input;
  std::initializer_list<int32_t> output;
};
typedef struct NodeConnection_ NodeConnection;

// A simple operator that returns the median of the input with the number of
// times the kernel was invoked. The implementation below is deliberately
// complicated, just to demonstrate how kernel memory planning works.
class SimpleStatefulOp {
  static constexpr int kBufferNotAllocated = 0;
  // Inputs:
  static constexpr int kInputTensor = 0;
  // Outputs:
  static constexpr int kMedianTensor = 0;
  static constexpr int kInvokeCount = 1;
  struct OpData {
    int invoke_count = 0;
    int sorting_buffer = kBufferNotAllocated;
  };

 public:
  static const TfLiteRegistration* getRegistration();
  static TfLiteRegistration* GetMutableRegistration();
  static void* Init(TfLiteContext* context, const char* buffer, size_t length);
  static TfLiteStatus Prepare(TfLiteContext* context, TfLiteNode* node);
  static TfLiteStatus Invoke(TfLiteContext* context, TfLiteNode* node);
};

class MockCustom {
 public:
  static const TfLiteRegistration* getRegistration();
  static TfLiteRegistration* GetMutableRegistration();
  static void* Init(TfLiteContext* context, const char* buffer, size_t length);
  static void Free(TfLiteContext* context, void* buffer);
  static TfLiteStatus Prepare(TfLiteContext* context, TfLiteNode* node);
  static TfLiteStatus Invoke(TfLiteContext* context, TfLiteNode* node);

  static bool freed_;
};

// Returns an Op Resolver that can be used in the testing code.
AllOpsResolver GetOpResolver();

// Returns a simple example flatbuffer TensorFlow Lite model. Contains 1 input,
// 1 layer of weights, 1 output Tensor, and 1 operator.
const Model* GetSimpleMockModel();

// Returns a flatbuffer TensorFlow Lite model with more inputs, variable
// tensors, and operators.
const Model* GetComplexMockModel();

// Returns a simple flatbuffer model with two branches.
const Model* GetSimpleModelWithBranch();

// Returns a simple flatbuffer model with offline planned tensors
const Model* GetModelWithOfflinePlanning(int num_tensors,
                                         const int32_t* metadata_buffer,
                                         NodeConnection* node_conn,
                                         int num_conns);

// Returns a flatbuffer model with `simple_stateful_op`
const Model* GetSimpleStatefulModel();

// Builds a one-dimensional flatbuffer tensor of the given size.
const Tensor* Create1dFlatbufferTensor(int size, bool is_variable = false);

// Builds a one-dimensional flatbuffer tensor of the given size with
// quantization metadata.
const Tensor* CreateQuantizedFlatbufferTensor(int size);

// Creates a one-dimensional tensor with no quantization metadata.
const Tensor* CreateMissingQuantizationFlatbufferTensor(int size);

// Creates a vector of flatbuffer buffers.
const flatbuffers::Vector<flatbuffers::Offset<Buffer>>*
CreateFlatbufferBuffers();

// Performs a simple string comparison without requiring standard C library.
int TestStrcmp(const char* a, const char* b);

// Wrapper to forward kernel errors to the interpreter's error reporter.
void ReportOpError(struct TfLiteContext* context, const char* format, ...);

void PopulateContext(TfLiteTensor* tensors, int tensors_size,
                     TfLiteContext* context);

// Create a TfLiteIntArray from an array of ints.  The first element in the
// supplied array must be the size of the array expressed as an int.
TfLiteIntArray* IntArrayFromInts(const int* int_array);

// Create a TfLiteFloatArray from an array of floats.  The first element in the
// supplied array must be the size of the array expressed as a float.
TfLiteFloatArray* FloatArrayFromFloats(const float* floats);

TfLiteTensor CreateFloatTensor(const float* data, TfLiteIntArray* dims,
                               bool is_variable = false);

void PopulateFloatTensor(TfLiteTensor* tensor, float* begin, float* end);

TfLiteTensor CreateBoolTensor(const bool* data, TfLiteIntArray* dims,
                              bool is_variable = false);

TfLiteTensor CreateInt32Tensor(const int32_t*, TfLiteIntArray* dims,
                               bool is_variable = false);

TfLiteTensor CreateQuantizedTensor(const uint8_t* data, TfLiteIntArray* dims,
                                   float scale, int zero_point,
                                   bool is_variable = false);

TfLiteTensor CreateQuantizedTensor(const int8_t* data, TfLiteIntArray* dims,
                                   float scale, int zero_point,
                                   bool is_variable = false);

TfLiteTensor CreateQuantizedTensor(const int16_t* data, TfLiteIntArray* dims,
                                   float scale, int zero_point,
                                   bool is_variable = false);

template <typename T>
TfLiteTensor CreateQuantizedTensor(const float* input, T* quantized,
                                   TfLiteIntArray* dims, float scale,
                                   int zero_point, bool is_variable = false) {
  int input_size = ElementCount(*dims);
  tflite::AsymmetricQuantize(input, quantized, input_size, scale, zero_point);
  return CreateQuantizedTensor(quantized, dims, scale, zero_point, is_variable);
}

TfLiteTensor CreateQuantizedBiasTensor(const float* data, int32_t* quantized,
                                       TfLiteIntArray* dims, float input_scale,
                                       float weights_scale,
                                       bool is_variable = false);

// Quantizes int32 bias tensor with per-channel weights determined by input
// scale multiplied by weight scale for each channel.
TfLiteTensor CreatePerChannelQuantizedBiasTensor(
    const float* input, int32_t* quantized, TfLiteIntArray* dims,
    float input_scale, float* weight_scales, float* scales, int* zero_points,
    TfLiteAffineQuantization* affine_quant, int quantized_dimension,
    bool is_variable = false);

TfLiteTensor CreateSymmetricPerChannelQuantizedTensor(
    const float* input, int8_t* quantized, TfLiteIntArray* dims, float* scales,
    int* zero_points, TfLiteAffineQuantization* affine_quant,
    int quantized_dimension, bool is_variable = false);

}  // namespace testing
}  // namespace tflite

#endif  // TENSORFLOW_LITE_MICRO_TEST_HELPERS_H_
