################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size.cc \
../tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper.cc \
../tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.cc 

CC_DEPS += \
./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size.d \
./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper.d \
./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.d 

OBJS += \
./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size.o \
./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper.o \
./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/micro/python/tflite_size/src/%.o tensorflow/lite2/micro/python/tflite_size/src/%.su tensorflow/lite2/micro/python/tflite_size/src/%.cyclo: ../tensorflow/lite2/micro/python/tflite_size/src/%.cc tensorflow/lite2/micro/python/tflite_size/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-micro-2f-python-2f-tflite_size-2f-src

clean-tensorflow-2f-lite2-2f-micro-2f-python-2f-tflite_size-2f-src:
	-$(RM) ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size.cyclo ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size.d ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size.o ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size.su ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper.cyclo ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper.d ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper.o ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper.su ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.cyclo ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.d ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.o ./tensorflow/lite2/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.su

.PHONY: clean-tensorflow-2f-lite2-2f-micro-2f-python-2f-tflite_size-2f-src

