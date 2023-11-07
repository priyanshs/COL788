import tensorflow as tf
import preprocessing
import numpy as np
import tensorflow_addons as tfa
import tensorflow_model_optimization as tfmot

if __name__ == "__main__":
    model = tf.keras.models.load_model("KWS_transformer", custom_objects={"optimizer": tfa.optimizers.AdamW(
        learning_rate=0.001, weight_decay=0.0001
    )})
    data_dir = "data"
    filenames, commands = preprocessing.load_files()
    train_files, _, _ = preprocessing.load_train_test_val_files(filenames, data_dir)

    train_data = []
    i = 0
    for fp in train_files:
        if i > 120:
            break
        i += 1
        data, label = preprocessing.create_example(fp, commands, data_dir, trainable=False)
        train_data.append(data)

    train_data = np.array(train_data)

    def representative_dataset():
        for i in tf.data.Dataset.from_tensor_slices(train_data).batch(1).take(100):
            yield [i]


    run_model = tf.function(lambda x: model(x))

    concrete_func = run_model.get_concrete_function(
        tf.TensorSpec([1, 2, 49, 40]))

    converter = tf.lite.TFLiteConverter.from_concrete_functions([concrete_func])

    # converter = tf.lite.TFLiteConverter.from_keras_model(model)
    converter.optimizations = [tf.lite.Optimize.DEFAULT]
    converter.representative_dataset = representative_dataset
    converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS_INT8]
    converter.inference_input_type = tf.int8  # or tf.uint8
    converter.inference_output_type = tf.int8  # or tf.uint8
    tflite_quant_model = converter.convert()
    # interpreter = tf.lite.Interpreter(model_content=tflite_quant_model)
    # input_type = interpreter.get_input_details()[0]['dtype']
    # print('input: ', input_type)
    # output_type = interpreter.get_output_details()[0]['dtype']
    # print('output: ', output_type)
    with open("non_stream.tflite", "wb") as f:
        f.write(tflite_quant_model)