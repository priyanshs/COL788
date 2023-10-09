Steps to Find the Inference Time on a Nucleo Board:

1. Train the Keyword Transformer Model (using train.py script with the relevant parameters or the original repository code).
2. Use the convert.py script to optimize the model to a smaller size. This outputs in the model in non_stream.tflite file.
3. Use the to_cc.py script to convert the model to C++ code in kwt.cc file.
4. Copy the contents of the kwt.cc file to the Sensortile STM32 IDE.
5. Deploy to a STM32 Nucleo board and run inference to compute the time taken.
