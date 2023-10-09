################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/micro/kernels/xtensa/add.cc \
../tensorflow/lite2/micro/kernels/xtensa/add_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/conv.cc \
../tensorflow/lite2/micro/kernels/xtensa/conv_common_xtensa.cc \
../tensorflow/lite2/micro/kernels/xtensa/conv_hifi.cc \
../tensorflow/lite2/micro/kernels/xtensa/conv_int16_reference.cc \
../tensorflow/lite2/micro/kernels/xtensa/conv_int8_int16.cc \
../tensorflow/lite2/micro/kernels/xtensa/conv_int8_reference.cc \
../tensorflow/lite2/micro/kernels/xtensa/conv_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/depthwise_conv.cc \
../tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_hifi.cc \
../tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/fully_connected.cc \
../tensorflow/lite2/micro/kernels/xtensa/fully_connected_common_xtensa.cc \
../tensorflow/lite2/micro/kernels/xtensa/fully_connected_int8.cc \
../tensorflow/lite2/micro/kernels/xtensa/fully_connected_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/leaky_relu.cc \
../tensorflow/lite2/micro/kernels/xtensa/logistic.cc \
../tensorflow/lite2/micro/kernels/xtensa/lstm_eval.cc \
../tensorflow/lite2/micro/kernels/xtensa/lstm_eval_hifi.cc \
../tensorflow/lite2/micro/kernels/xtensa/pad.cc \
../tensorflow/lite2/micro/kernels/xtensa/pad_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/pooling.cc \
../tensorflow/lite2/micro/kernels/xtensa/pooling_int8.cc \
../tensorflow/lite2/micro/kernels/xtensa/pooling_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/quantize.cc \
../tensorflow/lite2/micro/kernels/xtensa/reduce.cc \
../tensorflow/lite2/micro/kernels/xtensa/reduce_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/reshape.cc \
../tensorflow/lite2/micro/kernels/xtensa/reshape_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/softmax.cc \
../tensorflow/lite2/micro/kernels/xtensa/softmax_int8_int16.cc \
../tensorflow/lite2/micro/kernels/xtensa/softmax_vision.cc \
../tensorflow/lite2/micro/kernels/xtensa/strided_slice.cc \
../tensorflow/lite2/micro/kernels/xtensa/sub.cc \
../tensorflow/lite2/micro/kernels/xtensa/svdf.cc \
../tensorflow/lite2/micro/kernels/xtensa/transpose_conv.cc \
../tensorflow/lite2/micro/kernels/xtensa/unidirectional_sequence_lstm.cc 

CC_DEPS += \
./tensorflow/lite2/micro/kernels/xtensa/add.d \
./tensorflow/lite2/micro/kernels/xtensa/add_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/conv.d \
./tensorflow/lite2/micro/kernels/xtensa/conv_common_xtensa.d \
./tensorflow/lite2/micro/kernels/xtensa/conv_hifi.d \
./tensorflow/lite2/micro/kernels/xtensa/conv_int16_reference.d \
./tensorflow/lite2/micro/kernels/xtensa/conv_int8_int16.d \
./tensorflow/lite2/micro/kernels/xtensa/conv_int8_reference.d \
./tensorflow/lite2/micro/kernels/xtensa/conv_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv.d \
./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_hifi.d \
./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected.d \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected_common_xtensa.d \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected_int8.d \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/leaky_relu.d \
./tensorflow/lite2/micro/kernels/xtensa/logistic.d \
./tensorflow/lite2/micro/kernels/xtensa/lstm_eval.d \
./tensorflow/lite2/micro/kernels/xtensa/lstm_eval_hifi.d \
./tensorflow/lite2/micro/kernels/xtensa/pad.d \
./tensorflow/lite2/micro/kernels/xtensa/pad_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/pooling.d \
./tensorflow/lite2/micro/kernels/xtensa/pooling_int8.d \
./tensorflow/lite2/micro/kernels/xtensa/pooling_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/quantize.d \
./tensorflow/lite2/micro/kernels/xtensa/reduce.d \
./tensorflow/lite2/micro/kernels/xtensa/reduce_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/reshape.d \
./tensorflow/lite2/micro/kernels/xtensa/reshape_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/softmax.d \
./tensorflow/lite2/micro/kernels/xtensa/softmax_int8_int16.d \
./tensorflow/lite2/micro/kernels/xtensa/softmax_vision.d \
./tensorflow/lite2/micro/kernels/xtensa/strided_slice.d \
./tensorflow/lite2/micro/kernels/xtensa/sub.d \
./tensorflow/lite2/micro/kernels/xtensa/svdf.d \
./tensorflow/lite2/micro/kernels/xtensa/transpose_conv.d \
./tensorflow/lite2/micro/kernels/xtensa/unidirectional_sequence_lstm.d 

OBJS += \
./tensorflow/lite2/micro/kernels/xtensa/add.o \
./tensorflow/lite2/micro/kernels/xtensa/add_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/conv.o \
./tensorflow/lite2/micro/kernels/xtensa/conv_common_xtensa.o \
./tensorflow/lite2/micro/kernels/xtensa/conv_hifi.o \
./tensorflow/lite2/micro/kernels/xtensa/conv_int16_reference.o \
./tensorflow/lite2/micro/kernels/xtensa/conv_int8_int16.o \
./tensorflow/lite2/micro/kernels/xtensa/conv_int8_reference.o \
./tensorflow/lite2/micro/kernels/xtensa/conv_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv.o \
./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_hifi.o \
./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected.o \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected_common_xtensa.o \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected_int8.o \
./tensorflow/lite2/micro/kernels/xtensa/fully_connected_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/leaky_relu.o \
./tensorflow/lite2/micro/kernels/xtensa/logistic.o \
./tensorflow/lite2/micro/kernels/xtensa/lstm_eval.o \
./tensorflow/lite2/micro/kernels/xtensa/lstm_eval_hifi.o \
./tensorflow/lite2/micro/kernels/xtensa/pad.o \
./tensorflow/lite2/micro/kernels/xtensa/pad_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/pooling.o \
./tensorflow/lite2/micro/kernels/xtensa/pooling_int8.o \
./tensorflow/lite2/micro/kernels/xtensa/pooling_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/quantize.o \
./tensorflow/lite2/micro/kernels/xtensa/reduce.o \
./tensorflow/lite2/micro/kernels/xtensa/reduce_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/reshape.o \
./tensorflow/lite2/micro/kernels/xtensa/reshape_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/softmax.o \
./tensorflow/lite2/micro/kernels/xtensa/softmax_int8_int16.o \
./tensorflow/lite2/micro/kernels/xtensa/softmax_vision.o \
./tensorflow/lite2/micro/kernels/xtensa/strided_slice.o \
./tensorflow/lite2/micro/kernels/xtensa/sub.o \
./tensorflow/lite2/micro/kernels/xtensa/svdf.o \
./tensorflow/lite2/micro/kernels/xtensa/transpose_conv.o \
./tensorflow/lite2/micro/kernels/xtensa/unidirectional_sequence_lstm.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/micro/kernels/xtensa/%.o tensorflow/lite2/micro/kernels/xtensa/%.su tensorflow/lite2/micro/kernels/xtensa/%.cyclo: ../tensorflow/lite2/micro/kernels/xtensa/%.cc tensorflow/lite2/micro/kernels/xtensa/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-micro-2f-kernels-2f-xtensa

clean-tensorflow-2f-lite2-2f-micro-2f-kernels-2f-xtensa:
	-$(RM) ./tensorflow/lite2/micro/kernels/xtensa/add.cyclo ./tensorflow/lite2/micro/kernels/xtensa/add.d ./tensorflow/lite2/micro/kernels/xtensa/add.o ./tensorflow/lite2/micro/kernels/xtensa/add.su ./tensorflow/lite2/micro/kernels/xtensa/add_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/add_vision.d ./tensorflow/lite2/micro/kernels/xtensa/add_vision.o ./tensorflow/lite2/micro/kernels/xtensa/add_vision.su ./tensorflow/lite2/micro/kernels/xtensa/conv.cyclo ./tensorflow/lite2/micro/kernels/xtensa/conv.d ./tensorflow/lite2/micro/kernels/xtensa/conv.o ./tensorflow/lite2/micro/kernels/xtensa/conv.su ./tensorflow/lite2/micro/kernels/xtensa/conv_common_xtensa.cyclo ./tensorflow/lite2/micro/kernels/xtensa/conv_common_xtensa.d ./tensorflow/lite2/micro/kernels/xtensa/conv_common_xtensa.o ./tensorflow/lite2/micro/kernels/xtensa/conv_common_xtensa.su ./tensorflow/lite2/micro/kernels/xtensa/conv_hifi.cyclo ./tensorflow/lite2/micro/kernels/xtensa/conv_hifi.d ./tensorflow/lite2/micro/kernels/xtensa/conv_hifi.o ./tensorflow/lite2/micro/kernels/xtensa/conv_hifi.su ./tensorflow/lite2/micro/kernels/xtensa/conv_int16_reference.cyclo ./tensorflow/lite2/micro/kernels/xtensa/conv_int16_reference.d ./tensorflow/lite2/micro/kernels/xtensa/conv_int16_reference.o ./tensorflow/lite2/micro/kernels/xtensa/conv_int16_reference.su ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_int16.cyclo ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_int16.d ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_int16.o ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_int16.su ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_reference.cyclo ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_reference.d ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_reference.o ./tensorflow/lite2/micro/kernels/xtensa/conv_int8_reference.su ./tensorflow/lite2/micro/kernels/xtensa/conv_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/conv_vision.d ./tensorflow/lite2/micro/kernels/xtensa/conv_vision.o ./tensorflow/lite2/micro/kernels/xtensa/conv_vision.su ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv.cyclo ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv.d ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv.o ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv.su ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_hifi.cyclo ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_hifi.d ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_hifi.o ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_hifi.su ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_vision.d ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_vision.o ./tensorflow/lite2/micro/kernels/xtensa/depthwise_conv_vision.su ./tensorflow/lite2/micro/kernels/xtensa/fully_connected.cyclo ./tensorflow/lite2/micro/kernels/xtensa/fully_connected.d ./tensorflow/lite2/micro/kernels/xtensa/fully_connected.o ./tensorflow/lite2/micro/kernels/xtensa/fully_connected.su ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_common_xtensa.cyclo ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_common_xtensa.d ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_common_xtensa.o ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_common_xtensa.su ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_int8.cyclo ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_int8.d ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_int8.o ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_int8.su ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_vision.d ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_vision.o ./tensorflow/lite2/micro/kernels/xtensa/fully_connected_vision.su ./tensorflow/lite2/micro/kernels/xtensa/leaky_relu.cyclo ./tensorflow/lite2/micro/kernels/xtensa/leaky_relu.d ./tensorflow/lite2/micro/kernels/xtensa/leaky_relu.o ./tensorflow/lite2/micro/kernels/xtensa/leaky_relu.su ./tensorflow/lite2/micro/kernels/xtensa/logistic.cyclo ./tensorflow/lite2/micro/kernels/xtensa/logistic.d ./tensorflow/lite2/micro/kernels/xtensa/logistic.o ./tensorflow/lite2/micro/kernels/xtensa/logistic.su ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval.cyclo ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval.d ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval.o ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval.su ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval_hifi.cyclo ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval_hifi.d ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval_hifi.o ./tensorflow/lite2/micro/kernels/xtensa/lstm_eval_hifi.su ./tensorflow/lite2/micro/kernels/xtensa/pad.cyclo ./tensorflow/lite2/micro/kernels/xtensa/pad.d ./tensorflow/lite2/micro/kernels/xtensa/pad.o ./tensorflow/lite2/micro/kernels/xtensa/pad.su ./tensorflow/lite2/micro/kernels/xtensa/pad_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/pad_vision.d ./tensorflow/lite2/micro/kernels/xtensa/pad_vision.o ./tensorflow/lite2/micro/kernels/xtensa/pad_vision.su ./tensorflow/lite2/micro/kernels/xtensa/pooling.cyclo ./tensorflow/lite2/micro/kernels/xtensa/pooling.d ./tensorflow/lite2/micro/kernels/xtensa/pooling.o ./tensorflow/lite2/micro/kernels/xtensa/pooling.su ./tensorflow/lite2/micro/kernels/xtensa/pooling_int8.cyclo ./tensorflow/lite2/micro/kernels/xtensa/pooling_int8.d ./tensorflow/lite2/micro/kernels/xtensa/pooling_int8.o ./tensorflow/lite2/micro/kernels/xtensa/pooling_int8.su ./tensorflow/lite2/micro/kernels/xtensa/pooling_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/pooling_vision.d ./tensorflow/lite2/micro/kernels/xtensa/pooling_vision.o ./tensorflow/lite2/micro/kernels/xtensa/pooling_vision.su ./tensorflow/lite2/micro/kernels/xtensa/quantize.cyclo ./tensorflow/lite2/micro/kernels/xtensa/quantize.d ./tensorflow/lite2/micro/kernels/xtensa/quantize.o ./tensorflow/lite2/micro/kernels/xtensa/quantize.su
	-$(RM) ./tensorflow/lite2/micro/kernels/xtensa/reduce.cyclo ./tensorflow/lite2/micro/kernels/xtensa/reduce.d ./tensorflow/lite2/micro/kernels/xtensa/reduce.o ./tensorflow/lite2/micro/kernels/xtensa/reduce.su ./tensorflow/lite2/micro/kernels/xtensa/reduce_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/reduce_vision.d ./tensorflow/lite2/micro/kernels/xtensa/reduce_vision.o ./tensorflow/lite2/micro/kernels/xtensa/reduce_vision.su ./tensorflow/lite2/micro/kernels/xtensa/reshape.cyclo ./tensorflow/lite2/micro/kernels/xtensa/reshape.d ./tensorflow/lite2/micro/kernels/xtensa/reshape.o ./tensorflow/lite2/micro/kernels/xtensa/reshape.su ./tensorflow/lite2/micro/kernels/xtensa/reshape_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/reshape_vision.d ./tensorflow/lite2/micro/kernels/xtensa/reshape_vision.o ./tensorflow/lite2/micro/kernels/xtensa/reshape_vision.su ./tensorflow/lite2/micro/kernels/xtensa/softmax.cyclo ./tensorflow/lite2/micro/kernels/xtensa/softmax.d ./tensorflow/lite2/micro/kernels/xtensa/softmax.o ./tensorflow/lite2/micro/kernels/xtensa/softmax.su ./tensorflow/lite2/micro/kernels/xtensa/softmax_int8_int16.cyclo ./tensorflow/lite2/micro/kernels/xtensa/softmax_int8_int16.d ./tensorflow/lite2/micro/kernels/xtensa/softmax_int8_int16.o ./tensorflow/lite2/micro/kernels/xtensa/softmax_int8_int16.su ./tensorflow/lite2/micro/kernels/xtensa/softmax_vision.cyclo ./tensorflow/lite2/micro/kernels/xtensa/softmax_vision.d ./tensorflow/lite2/micro/kernels/xtensa/softmax_vision.o ./tensorflow/lite2/micro/kernels/xtensa/softmax_vision.su ./tensorflow/lite2/micro/kernels/xtensa/strided_slice.cyclo ./tensorflow/lite2/micro/kernels/xtensa/strided_slice.d ./tensorflow/lite2/micro/kernels/xtensa/strided_slice.o ./tensorflow/lite2/micro/kernels/xtensa/strided_slice.su ./tensorflow/lite2/micro/kernels/xtensa/sub.cyclo ./tensorflow/lite2/micro/kernels/xtensa/sub.d ./tensorflow/lite2/micro/kernels/xtensa/sub.o ./tensorflow/lite2/micro/kernels/xtensa/sub.su ./tensorflow/lite2/micro/kernels/xtensa/svdf.cyclo ./tensorflow/lite2/micro/kernels/xtensa/svdf.d ./tensorflow/lite2/micro/kernels/xtensa/svdf.o ./tensorflow/lite2/micro/kernels/xtensa/svdf.su ./tensorflow/lite2/micro/kernels/xtensa/transpose_conv.cyclo ./tensorflow/lite2/micro/kernels/xtensa/transpose_conv.d ./tensorflow/lite2/micro/kernels/xtensa/transpose_conv.o ./tensorflow/lite2/micro/kernels/xtensa/transpose_conv.su ./tensorflow/lite2/micro/kernels/xtensa/unidirectional_sequence_lstm.cyclo ./tensorflow/lite2/micro/kernels/xtensa/unidirectional_sequence_lstm.d ./tensorflow/lite2/micro/kernels/xtensa/unidirectional_sequence_lstm.o ./tensorflow/lite2/micro/kernels/xtensa/unidirectional_sequence_lstm.su

.PHONY: clean-tensorflow-2f-lite2-2f-micro-2f-kernels-2f-xtensa

