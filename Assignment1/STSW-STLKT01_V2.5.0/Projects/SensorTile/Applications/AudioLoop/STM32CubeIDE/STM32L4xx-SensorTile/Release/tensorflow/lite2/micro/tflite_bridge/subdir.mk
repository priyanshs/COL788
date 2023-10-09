################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/micro/tflite_bridge/flatbuffer_conversions_bridge.cc \
../tensorflow/lite2/micro/tflite_bridge/micro_error_reporter.cc 

CC_DEPS += \
./tensorflow/lite2/micro/tflite_bridge/flatbuffer_conversions_bridge.d \
./tensorflow/lite2/micro/tflite_bridge/micro_error_reporter.d 

OBJS += \
./tensorflow/lite2/micro/tflite_bridge/flatbuffer_conversions_bridge.o \
./tensorflow/lite2/micro/tflite_bridge/micro_error_reporter.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/micro/tflite_bridge/%.o tensorflow/lite2/micro/tflite_bridge/%.su tensorflow/lite2/micro/tflite_bridge/%.cyclo: ../tensorflow/lite2/micro/tflite_bridge/%.cc tensorflow/lite2/micro/tflite_bridge/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-micro-2f-tflite_bridge

clean-tensorflow-2f-lite2-2f-micro-2f-tflite_bridge:
	-$(RM) ./tensorflow/lite2/micro/tflite_bridge/flatbuffer_conversions_bridge.cyclo ./tensorflow/lite2/micro/tflite_bridge/flatbuffer_conversions_bridge.d ./tensorflow/lite2/micro/tflite_bridge/flatbuffer_conversions_bridge.o ./tensorflow/lite2/micro/tflite_bridge/flatbuffer_conversions_bridge.su ./tensorflow/lite2/micro/tflite_bridge/micro_error_reporter.cyclo ./tensorflow/lite2/micro/tflite_bridge/micro_error_reporter.d ./tensorflow/lite2/micro/tflite_bridge/micro_error_reporter.o ./tensorflow/lite2/micro/tflite_bridge/micro_error_reporter.su

.PHONY: clean-tensorflow-2f-lite2-2f-micro-2f-tflite_bridge

