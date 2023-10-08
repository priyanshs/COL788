import numpy as np
import tensorflow as tf
from scipy.signal import resample
import librosa

# Load the TensorFlow Lite model and allocate tensors.
interpreter = tf.lite.Interpreter(model_path="quantized_model.tflite")
interpreter.allocate_tensors()

# Get input details (information about input tensor)
input_details = interpreter.get_input_details()

# Load an audio file
audio_path = "horn.wav"
y, sr = librosa.load(audio_path)

# Resize the audio to match the model's input size (64x96)
desired_height = 64
desired_width = 96
y_resized = resample(y, int(desired_height * desired_width))

# Add batch and channel dimensions
audio_input = y_resized.reshape(1, desired_height, desired_width, 1)

# Ensure the data type is suitable for your model
audio_input = audio_input.astype(np.int8)  # Expects the input in int8

# Get output details (information about output tensor)
output_details = interpreter.get_output_details()

# Set input tensor
input_tensor_index = input_details[0]['index']  # Assuming only one input tensor
interpreter.set_tensor(input_tensor_index, audio_input)

# Run inference
interpreter.invoke()

# Get output tensor(s)
output_tensor_index = output_details[0]['index']  # Assuming only one output tensor
output_data = interpreter.get_tensor(output_tensor_index)

# Now 'output_data' contains the inference results
print(output_data)
