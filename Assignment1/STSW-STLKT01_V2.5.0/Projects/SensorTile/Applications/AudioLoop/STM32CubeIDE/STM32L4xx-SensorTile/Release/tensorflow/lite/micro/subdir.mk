################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/all_ops_resolver.cc \
../tensorflow/lite/micro/memory_helpers.cc \
../tensorflow/lite/micro/micro_allocator.cc \
../tensorflow/lite/micro/micro_error_reporter.cc \
../tensorflow/lite/micro/micro_interpreter.cc \
../tensorflow/lite/micro/micro_optional_debug_tools.cc \
../tensorflow/lite/micro/micro_profiler.cc \
../tensorflow/lite/micro/micro_string.cc \
../tensorflow/lite/micro/micro_time.cc \
../tensorflow/lite/micro/micro_utils.cc \
../tensorflow/lite/micro/recording_micro_allocator.cc \
../tensorflow/lite/micro/recording_simple_memory_allocator.cc \
../tensorflow/lite/micro/simple_memory_allocator.cc \
../tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./tensorflow/lite/micro/all_ops_resolver.d \
./tensorflow/lite/micro/memory_helpers.d \
./tensorflow/lite/micro/micro_allocator.d \
./tensorflow/lite/micro/micro_error_reporter.d \
./tensorflow/lite/micro/micro_interpreter.d \
./tensorflow/lite/micro/micro_optional_debug_tools.d \
./tensorflow/lite/micro/micro_profiler.d \
./tensorflow/lite/micro/micro_string.d \
./tensorflow/lite/micro/micro_time.d \
./tensorflow/lite/micro/micro_utils.d \
./tensorflow/lite/micro/recording_micro_allocator.d \
./tensorflow/lite/micro/recording_simple_memory_allocator.d \
./tensorflow/lite/micro/simple_memory_allocator.d \
./tensorflow/lite/micro/test_helpers.d 

OBJS += \
./tensorflow/lite/micro/all_ops_resolver.o \
./tensorflow/lite/micro/memory_helpers.o \
./tensorflow/lite/micro/micro_allocator.o \
./tensorflow/lite/micro/micro_error_reporter.o \
./tensorflow/lite/micro/micro_interpreter.o \
./tensorflow/lite/micro/micro_optional_debug_tools.o \
./tensorflow/lite/micro/micro_profiler.o \
./tensorflow/lite/micro/micro_string.o \
./tensorflow/lite/micro/micro_time.o \
./tensorflow/lite/micro/micro_utils.o \
./tensorflow/lite/micro/recording_micro_allocator.o \
./tensorflow/lite/micro/recording_simple_memory_allocator.o \
./tensorflow/lite/micro/simple_memory_allocator.o \
./tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/%.o tensorflow/lite/micro/%.su tensorflow/lite/micro/%.cyclo: ../tensorflow/lite/micro/%.cc tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/STM32L4xx_HAL_Driver/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components/Common -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/SensorTile -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/third_party/flatbuffers/include/flatbuffers -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/SensorTile -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/NN/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/DSP/Include -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro

clean-tensorflow-2f-lite-2f-micro:
	-$(RM) ./tensorflow/lite/micro/all_ops_resolver.cyclo ./tensorflow/lite/micro/all_ops_resolver.d ./tensorflow/lite/micro/all_ops_resolver.o ./tensorflow/lite/micro/all_ops_resolver.su ./tensorflow/lite/micro/memory_helpers.cyclo ./tensorflow/lite/micro/memory_helpers.d ./tensorflow/lite/micro/memory_helpers.o ./tensorflow/lite/micro/memory_helpers.su ./tensorflow/lite/micro/micro_allocator.cyclo ./tensorflow/lite/micro/micro_allocator.d ./tensorflow/lite/micro/micro_allocator.o ./tensorflow/lite/micro/micro_allocator.su ./tensorflow/lite/micro/micro_error_reporter.cyclo ./tensorflow/lite/micro/micro_error_reporter.d ./tensorflow/lite/micro/micro_error_reporter.o ./tensorflow/lite/micro/micro_error_reporter.su ./tensorflow/lite/micro/micro_interpreter.cyclo ./tensorflow/lite/micro/micro_interpreter.d ./tensorflow/lite/micro/micro_interpreter.o ./tensorflow/lite/micro/micro_interpreter.su ./tensorflow/lite/micro/micro_optional_debug_tools.cyclo ./tensorflow/lite/micro/micro_optional_debug_tools.d ./tensorflow/lite/micro/micro_optional_debug_tools.o ./tensorflow/lite/micro/micro_optional_debug_tools.su ./tensorflow/lite/micro/micro_profiler.cyclo ./tensorflow/lite/micro/micro_profiler.d ./tensorflow/lite/micro/micro_profiler.o ./tensorflow/lite/micro/micro_profiler.su ./tensorflow/lite/micro/micro_string.cyclo ./tensorflow/lite/micro/micro_string.d ./tensorflow/lite/micro/micro_string.o ./tensorflow/lite/micro/micro_string.su ./tensorflow/lite/micro/micro_time.cyclo ./tensorflow/lite/micro/micro_time.d ./tensorflow/lite/micro/micro_time.o ./tensorflow/lite/micro/micro_time.su ./tensorflow/lite/micro/micro_utils.cyclo ./tensorflow/lite/micro/micro_utils.d ./tensorflow/lite/micro/micro_utils.o ./tensorflow/lite/micro/micro_utils.su ./tensorflow/lite/micro/recording_micro_allocator.cyclo ./tensorflow/lite/micro/recording_micro_allocator.d ./tensorflow/lite/micro/recording_micro_allocator.o ./tensorflow/lite/micro/recording_micro_allocator.su ./tensorflow/lite/micro/recording_simple_memory_allocator.cyclo ./tensorflow/lite/micro/recording_simple_memory_allocator.d ./tensorflow/lite/micro/recording_simple_memory_allocator.o ./tensorflow/lite/micro/recording_simple_memory_allocator.su ./tensorflow/lite/micro/simple_memory_allocator.cyclo ./tensorflow/lite/micro/simple_memory_allocator.d ./tensorflow/lite/micro/simple_memory_allocator.o ./tensorflow/lite/micro/simple_memory_allocator.su ./tensorflow/lite/micro/test_helpers.cyclo ./tensorflow/lite/micro/test_helpers.d ./tensorflow/lite/micro/test_helpers.o ./tensorflow/lite/micro/test_helpers.su

.PHONY: clean-tensorflow-2f-lite-2f-micro

