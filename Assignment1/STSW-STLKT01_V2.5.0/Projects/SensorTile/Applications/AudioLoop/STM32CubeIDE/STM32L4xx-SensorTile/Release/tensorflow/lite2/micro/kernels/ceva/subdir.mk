################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/micro/kernels/ceva/ceva_common.cc \
../tensorflow/lite2/micro/kernels/ceva/conv.cc \
../tensorflow/lite2/micro/kernels/ceva/depthwise_conv.cc \
../tensorflow/lite2/micro/kernels/ceva/fully_connected.cc \
../tensorflow/lite2/micro/kernels/ceva/logistic.cc \
../tensorflow/lite2/micro/kernels/ceva/quantize.cc \
../tensorflow/lite2/micro/kernels/ceva/softmax.cc 

CC_DEPS += \
./tensorflow/lite2/micro/kernels/ceva/ceva_common.d \
./tensorflow/lite2/micro/kernels/ceva/conv.d \
./tensorflow/lite2/micro/kernels/ceva/depthwise_conv.d \
./tensorflow/lite2/micro/kernels/ceva/fully_connected.d \
./tensorflow/lite2/micro/kernels/ceva/logistic.d \
./tensorflow/lite2/micro/kernels/ceva/quantize.d \
./tensorflow/lite2/micro/kernels/ceva/softmax.d 

OBJS += \
./tensorflow/lite2/micro/kernels/ceva/ceva_common.o \
./tensorflow/lite2/micro/kernels/ceva/conv.o \
./tensorflow/lite2/micro/kernels/ceva/depthwise_conv.o \
./tensorflow/lite2/micro/kernels/ceva/fully_connected.o \
./tensorflow/lite2/micro/kernels/ceva/logistic.o \
./tensorflow/lite2/micro/kernels/ceva/quantize.o \
./tensorflow/lite2/micro/kernels/ceva/softmax.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/micro/kernels/ceva/%.o tensorflow/lite2/micro/kernels/ceva/%.su tensorflow/lite2/micro/kernels/ceva/%.cyclo: ../tensorflow/lite2/micro/kernels/ceva/%.cc tensorflow/lite2/micro/kernels/ceva/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-micro-2f-kernels-2f-ceva

clean-tensorflow-2f-lite2-2f-micro-2f-kernels-2f-ceva:
	-$(RM) ./tensorflow/lite2/micro/kernels/ceva/ceva_common.cyclo ./tensorflow/lite2/micro/kernels/ceva/ceva_common.d ./tensorflow/lite2/micro/kernels/ceva/ceva_common.o ./tensorflow/lite2/micro/kernels/ceva/ceva_common.su ./tensorflow/lite2/micro/kernels/ceva/conv.cyclo ./tensorflow/lite2/micro/kernels/ceva/conv.d ./tensorflow/lite2/micro/kernels/ceva/conv.o ./tensorflow/lite2/micro/kernels/ceva/conv.su ./tensorflow/lite2/micro/kernels/ceva/depthwise_conv.cyclo ./tensorflow/lite2/micro/kernels/ceva/depthwise_conv.d ./tensorflow/lite2/micro/kernels/ceva/depthwise_conv.o ./tensorflow/lite2/micro/kernels/ceva/depthwise_conv.su ./tensorflow/lite2/micro/kernels/ceva/fully_connected.cyclo ./tensorflow/lite2/micro/kernels/ceva/fully_connected.d ./tensorflow/lite2/micro/kernels/ceva/fully_connected.o ./tensorflow/lite2/micro/kernels/ceva/fully_connected.su ./tensorflow/lite2/micro/kernels/ceva/logistic.cyclo ./tensorflow/lite2/micro/kernels/ceva/logistic.d ./tensorflow/lite2/micro/kernels/ceva/logistic.o ./tensorflow/lite2/micro/kernels/ceva/logistic.su ./tensorflow/lite2/micro/kernels/ceva/quantize.cyclo ./tensorflow/lite2/micro/kernels/ceva/quantize.d ./tensorflow/lite2/micro/kernels/ceva/quantize.o ./tensorflow/lite2/micro/kernels/ceva/quantize.su ./tensorflow/lite2/micro/kernels/ceva/softmax.cyclo ./tensorflow/lite2/micro/kernels/ceva/softmax.d ./tensorflow/lite2/micro/kernels/ceva/softmax.o ./tensorflow/lite2/micro/kernels/ceva/softmax.su

.PHONY: clean-tensorflow-2f-lite2-2f-micro-2f-kernels-2f-ceva

