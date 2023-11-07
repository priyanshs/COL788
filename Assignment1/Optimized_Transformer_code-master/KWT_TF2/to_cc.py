from tensorflow.lite.python.util import convert_bytes_to_c_source

if __name__ == "__main__":
    f = open('non_stream.tflite', "rb")
    tflite_model = f.read()

    source_text, header_text = convert_bytes_to_c_source(tflite_model,  "kwt")

    with open('kwt.cc',  'w') as file:
        file.write(source_text)
