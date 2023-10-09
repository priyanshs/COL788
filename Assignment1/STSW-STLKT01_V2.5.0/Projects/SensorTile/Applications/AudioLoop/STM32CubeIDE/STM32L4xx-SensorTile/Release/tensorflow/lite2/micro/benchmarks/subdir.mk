################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/micro/benchmarks/keyword_benchmark.cc \
../tensorflow/lite2/micro/benchmarks/keyword_benchmark_8bit.cc \
../tensorflow/lite2/micro/benchmarks/person_detection_benchmark.cc 

CC_DEPS += \
./tensorflow/lite2/micro/benchmarks/keyword_benchmark.d \
./tensorflow/lite2/micro/benchmarks/keyword_benchmark_8bit.d \
./tensorflow/lite2/micro/benchmarks/person_detection_benchmark.d 

OBJS += \
./tensorflow/lite2/micro/benchmarks/keyword_benchmark.o \
./tensorflow/lite2/micro/benchmarks/keyword_benchmark_8bit.o \
./tensorflow/lite2/micro/benchmarks/person_detection_benchmark.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/micro/benchmarks/%.o tensorflow/lite2/micro/benchmarks/%.su tensorflow/lite2/micro/benchmarks/%.cyclo: ../tensorflow/lite2/micro/benchmarks/%.cc tensorflow/lite2/micro/benchmarks/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-micro-2f-benchmarks

clean-tensorflow-2f-lite2-2f-micro-2f-benchmarks:
	-$(RM) ./tensorflow/lite2/micro/benchmarks/keyword_benchmark.cyclo ./tensorflow/lite2/micro/benchmarks/keyword_benchmark.d ./tensorflow/lite2/micro/benchmarks/keyword_benchmark.o ./tensorflow/lite2/micro/benchmarks/keyword_benchmark.su ./tensorflow/lite2/micro/benchmarks/keyword_benchmark_8bit.cyclo ./tensorflow/lite2/micro/benchmarks/keyword_benchmark_8bit.d ./tensorflow/lite2/micro/benchmarks/keyword_benchmark_8bit.o ./tensorflow/lite2/micro/benchmarks/keyword_benchmark_8bit.su ./tensorflow/lite2/micro/benchmarks/person_detection_benchmark.cyclo ./tensorflow/lite2/micro/benchmarks/person_detection_benchmark.d ./tensorflow/lite2/micro/benchmarks/person_detection_benchmark.o ./tensorflow/lite2/micro/benchmarks/person_detection_benchmark.su

.PHONY: clean-tensorflow-2f-lite2-2f-micro-2f-benchmarks

