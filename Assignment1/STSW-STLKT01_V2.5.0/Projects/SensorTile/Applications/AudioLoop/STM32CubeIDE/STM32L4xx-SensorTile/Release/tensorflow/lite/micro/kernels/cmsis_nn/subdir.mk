################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/kernels/cmsis_nn/add.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/conv.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/mul.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/pooling.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/softmax.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/svdf.cc \
../tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cc 

CC_DEPS += \
./tensorflow/lite/micro/kernels/cmsis_nn/add.d \
./tensorflow/lite/micro/kernels/cmsis_nn/conv.d \
./tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d \
./tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d \
./tensorflow/lite/micro/kernels/cmsis_nn/mul.d \
./tensorflow/lite/micro/kernels/cmsis_nn/pooling.d \
./tensorflow/lite/micro/kernels/cmsis_nn/softmax.d \
./tensorflow/lite/micro/kernels/cmsis_nn/svdf.d \
./tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d 

OBJS += \
./tensorflow/lite/micro/kernels/cmsis_nn/add.o \
./tensorflow/lite/micro/kernels/cmsis_nn/conv.o \
./tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o \
./tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o \
./tensorflow/lite/micro/kernels/cmsis_nn/mul.o \
./tensorflow/lite/micro/kernels/cmsis_nn/pooling.o \
./tensorflow/lite/micro/kernels/cmsis_nn/softmax.o \
./tensorflow/lite/micro/kernels/cmsis_nn/svdf.o \
./tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/kernels/cmsis_nn/%.o tensorflow/lite/micro/kernels/cmsis_nn/%.su tensorflow/lite/micro/kernels/cmsis_nn/%.cyclo: ../tensorflow/lite/micro/kernels/cmsis_nn/%.cc tensorflow/lite/micro/kernels/cmsis_nn/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn:
	-$(RM) ./tensorflow/lite/micro/kernels/cmsis_nn/add.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/add.d ./tensorflow/lite/micro/kernels/cmsis_nn/add.o ./tensorflow/lite/micro/kernels/cmsis_nn/add.su ./tensorflow/lite/micro/kernels/cmsis_nn/conv.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/conv.d ./tensorflow/lite/micro/kernels/cmsis_nn/conv.o ./tensorflow/lite/micro/kernels/cmsis_nn/conv.su ./tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d ./tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o ./tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.su ./tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d ./tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o ./tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.su ./tensorflow/lite/micro/kernels/cmsis_nn/mul.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/mul.d ./tensorflow/lite/micro/kernels/cmsis_nn/mul.o ./tensorflow/lite/micro/kernels/cmsis_nn/mul.su ./tensorflow/lite/micro/kernels/cmsis_nn/pooling.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/pooling.d ./tensorflow/lite/micro/kernels/cmsis_nn/pooling.o ./tensorflow/lite/micro/kernels/cmsis_nn/pooling.su ./tensorflow/lite/micro/kernels/cmsis_nn/softmax.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/softmax.d ./tensorflow/lite/micro/kernels/cmsis_nn/softmax.o ./tensorflow/lite/micro/kernels/cmsis_nn/softmax.su ./tensorflow/lite/micro/kernels/cmsis_nn/svdf.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/svdf.d ./tensorflow/lite/micro/kernels/cmsis_nn/svdf.o ./tensorflow/lite/micro/kernels/cmsis_nn/svdf.su ./tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cyclo ./tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d ./tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o ./tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

