################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/micro/debug_log.cc \
../tensorflow/lite2/micro/fake_micro_context.cc \
../tensorflow/lite2/micro/fake_micro_context_test.cc \
../tensorflow/lite2/micro/flatbuffer_utils.cc \
../tensorflow/lite2/micro/flatbuffer_utils_test.cc \
../tensorflow/lite2/micro/memory_arena_threshold_test.cc \
../tensorflow/lite2/micro/memory_helpers.cc \
../tensorflow/lite2/micro/memory_helpers_test.cc \
../tensorflow/lite2/micro/micro_allocation_info.cc \
../tensorflow/lite2/micro/micro_allocation_info_test.cc \
../tensorflow/lite2/micro/micro_allocator.cc \
../tensorflow/lite2/micro/micro_allocator_test.cc \
../tensorflow/lite2/micro/micro_context.cc \
../tensorflow/lite2/micro/micro_interpreter.cc \
../tensorflow/lite2/micro/micro_interpreter_context.cc \
../tensorflow/lite2/micro/micro_interpreter_context_test.cc \
../tensorflow/lite2/micro/micro_interpreter_graph.cc \
../tensorflow/lite2/micro/micro_interpreter_test.cc \
../tensorflow/lite2/micro/micro_log.cc \
../tensorflow/lite2/micro/micro_log_test.cc \
../tensorflow/lite2/micro/micro_mutable_op_resolver_test.cc \
../tensorflow/lite2/micro/micro_op_resolver.cc \
../tensorflow/lite2/micro/micro_profiler.cc \
../tensorflow/lite2/micro/micro_resource_variable.cc \
../tensorflow/lite2/micro/micro_resource_variable_test.cc \
../tensorflow/lite2/micro/micro_time.cc \
../tensorflow/lite2/micro/micro_time_test.cc \
../tensorflow/lite2/micro/micro_utils.cc \
../tensorflow/lite2/micro/micro_utils_test.cc \
../tensorflow/lite2/micro/mock_micro_graph.cc \
../tensorflow/lite2/micro/recording_micro_allocator.cc \
../tensorflow/lite2/micro/recording_micro_allocator_test.cc \
../tensorflow/lite2/micro/system_setup.cc \
../tensorflow/lite2/micro/test_helper_custom_ops.cc \
../tensorflow/lite2/micro/test_helpers.cc \
../tensorflow/lite2/micro/testing_helpers_test.cc 

CC_DEPS += \
./tensorflow/lite2/micro/debug_log.d \
./tensorflow/lite2/micro/fake_micro_context.d \
./tensorflow/lite2/micro/fake_micro_context_test.d \
./tensorflow/lite2/micro/flatbuffer_utils.d \
./tensorflow/lite2/micro/flatbuffer_utils_test.d \
./tensorflow/lite2/micro/memory_arena_threshold_test.d \
./tensorflow/lite2/micro/memory_helpers.d \
./tensorflow/lite2/micro/memory_helpers_test.d \
./tensorflow/lite2/micro/micro_allocation_info.d \
./tensorflow/lite2/micro/micro_allocation_info_test.d \
./tensorflow/lite2/micro/micro_allocator.d \
./tensorflow/lite2/micro/micro_allocator_test.d \
./tensorflow/lite2/micro/micro_context.d \
./tensorflow/lite2/micro/micro_interpreter.d \
./tensorflow/lite2/micro/micro_interpreter_context.d \
./tensorflow/lite2/micro/micro_interpreter_context_test.d \
./tensorflow/lite2/micro/micro_interpreter_graph.d \
./tensorflow/lite2/micro/micro_interpreter_test.d \
./tensorflow/lite2/micro/micro_log.d \
./tensorflow/lite2/micro/micro_log_test.d \
./tensorflow/lite2/micro/micro_mutable_op_resolver_test.d \
./tensorflow/lite2/micro/micro_op_resolver.d \
./tensorflow/lite2/micro/micro_profiler.d \
./tensorflow/lite2/micro/micro_resource_variable.d \
./tensorflow/lite2/micro/micro_resource_variable_test.d \
./tensorflow/lite2/micro/micro_time.d \
./tensorflow/lite2/micro/micro_time_test.d \
./tensorflow/lite2/micro/micro_utils.d \
./tensorflow/lite2/micro/micro_utils_test.d \
./tensorflow/lite2/micro/mock_micro_graph.d \
./tensorflow/lite2/micro/recording_micro_allocator.d \
./tensorflow/lite2/micro/recording_micro_allocator_test.d \
./tensorflow/lite2/micro/system_setup.d \
./tensorflow/lite2/micro/test_helper_custom_ops.d \
./tensorflow/lite2/micro/test_helpers.d \
./tensorflow/lite2/micro/testing_helpers_test.d 

OBJS += \
./tensorflow/lite2/micro/debug_log.o \
./tensorflow/lite2/micro/fake_micro_context.o \
./tensorflow/lite2/micro/fake_micro_context_test.o \
./tensorflow/lite2/micro/flatbuffer_utils.o \
./tensorflow/lite2/micro/flatbuffer_utils_test.o \
./tensorflow/lite2/micro/memory_arena_threshold_test.o \
./tensorflow/lite2/micro/memory_helpers.o \
./tensorflow/lite2/micro/memory_helpers_test.o \
./tensorflow/lite2/micro/micro_allocation_info.o \
./tensorflow/lite2/micro/micro_allocation_info_test.o \
./tensorflow/lite2/micro/micro_allocator.o \
./tensorflow/lite2/micro/micro_allocator_test.o \
./tensorflow/lite2/micro/micro_context.o \
./tensorflow/lite2/micro/micro_interpreter.o \
./tensorflow/lite2/micro/micro_interpreter_context.o \
./tensorflow/lite2/micro/micro_interpreter_context_test.o \
./tensorflow/lite2/micro/micro_interpreter_graph.o \
./tensorflow/lite2/micro/micro_interpreter_test.o \
./tensorflow/lite2/micro/micro_log.o \
./tensorflow/lite2/micro/micro_log_test.o \
./tensorflow/lite2/micro/micro_mutable_op_resolver_test.o \
./tensorflow/lite2/micro/micro_op_resolver.o \
./tensorflow/lite2/micro/micro_profiler.o \
./tensorflow/lite2/micro/micro_resource_variable.o \
./tensorflow/lite2/micro/micro_resource_variable_test.o \
./tensorflow/lite2/micro/micro_time.o \
./tensorflow/lite2/micro/micro_time_test.o \
./tensorflow/lite2/micro/micro_utils.o \
./tensorflow/lite2/micro/micro_utils_test.o \
./tensorflow/lite2/micro/mock_micro_graph.o \
./tensorflow/lite2/micro/recording_micro_allocator.o \
./tensorflow/lite2/micro/recording_micro_allocator_test.o \
./tensorflow/lite2/micro/system_setup.o \
./tensorflow/lite2/micro/test_helper_custom_ops.o \
./tensorflow/lite2/micro/test_helpers.o \
./tensorflow/lite2/micro/testing_helpers_test.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/micro/%.o tensorflow/lite2/micro/%.su tensorflow/lite2/micro/%.cyclo: ../tensorflow/lite2/micro/%.cc tensorflow/lite2/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-micro

clean-tensorflow-2f-lite2-2f-micro:
	-$(RM) ./tensorflow/lite2/micro/debug_log.cyclo ./tensorflow/lite2/micro/debug_log.d ./tensorflow/lite2/micro/debug_log.o ./tensorflow/lite2/micro/debug_log.su ./tensorflow/lite2/micro/fake_micro_context.cyclo ./tensorflow/lite2/micro/fake_micro_context.d ./tensorflow/lite2/micro/fake_micro_context.o ./tensorflow/lite2/micro/fake_micro_context.su ./tensorflow/lite2/micro/fake_micro_context_test.cyclo ./tensorflow/lite2/micro/fake_micro_context_test.d ./tensorflow/lite2/micro/fake_micro_context_test.o ./tensorflow/lite2/micro/fake_micro_context_test.su ./tensorflow/lite2/micro/flatbuffer_utils.cyclo ./tensorflow/lite2/micro/flatbuffer_utils.d ./tensorflow/lite2/micro/flatbuffer_utils.o ./tensorflow/lite2/micro/flatbuffer_utils.su ./tensorflow/lite2/micro/flatbuffer_utils_test.cyclo ./tensorflow/lite2/micro/flatbuffer_utils_test.d ./tensorflow/lite2/micro/flatbuffer_utils_test.o ./tensorflow/lite2/micro/flatbuffer_utils_test.su ./tensorflow/lite2/micro/memory_arena_threshold_test.cyclo ./tensorflow/lite2/micro/memory_arena_threshold_test.d ./tensorflow/lite2/micro/memory_arena_threshold_test.o ./tensorflow/lite2/micro/memory_arena_threshold_test.su ./tensorflow/lite2/micro/memory_helpers.cyclo ./tensorflow/lite2/micro/memory_helpers.d ./tensorflow/lite2/micro/memory_helpers.o ./tensorflow/lite2/micro/memory_helpers.su ./tensorflow/lite2/micro/memory_helpers_test.cyclo ./tensorflow/lite2/micro/memory_helpers_test.d ./tensorflow/lite2/micro/memory_helpers_test.o ./tensorflow/lite2/micro/memory_helpers_test.su ./tensorflow/lite2/micro/micro_allocation_info.cyclo ./tensorflow/lite2/micro/micro_allocation_info.d ./tensorflow/lite2/micro/micro_allocation_info.o ./tensorflow/lite2/micro/micro_allocation_info.su ./tensorflow/lite2/micro/micro_allocation_info_test.cyclo ./tensorflow/lite2/micro/micro_allocation_info_test.d ./tensorflow/lite2/micro/micro_allocation_info_test.o ./tensorflow/lite2/micro/micro_allocation_info_test.su ./tensorflow/lite2/micro/micro_allocator.cyclo ./tensorflow/lite2/micro/micro_allocator.d ./tensorflow/lite2/micro/micro_allocator.o ./tensorflow/lite2/micro/micro_allocator.su ./tensorflow/lite2/micro/micro_allocator_test.cyclo ./tensorflow/lite2/micro/micro_allocator_test.d ./tensorflow/lite2/micro/micro_allocator_test.o ./tensorflow/lite2/micro/micro_allocator_test.su ./tensorflow/lite2/micro/micro_context.cyclo ./tensorflow/lite2/micro/micro_context.d ./tensorflow/lite2/micro/micro_context.o ./tensorflow/lite2/micro/micro_context.su ./tensorflow/lite2/micro/micro_interpreter.cyclo ./tensorflow/lite2/micro/micro_interpreter.d ./tensorflow/lite2/micro/micro_interpreter.o ./tensorflow/lite2/micro/micro_interpreter.su ./tensorflow/lite2/micro/micro_interpreter_context.cyclo ./tensorflow/lite2/micro/micro_interpreter_context.d ./tensorflow/lite2/micro/micro_interpreter_context.o ./tensorflow/lite2/micro/micro_interpreter_context.su ./tensorflow/lite2/micro/micro_interpreter_context_test.cyclo ./tensorflow/lite2/micro/micro_interpreter_context_test.d ./tensorflow/lite2/micro/micro_interpreter_context_test.o ./tensorflow/lite2/micro/micro_interpreter_context_test.su ./tensorflow/lite2/micro/micro_interpreter_graph.cyclo ./tensorflow/lite2/micro/micro_interpreter_graph.d ./tensorflow/lite2/micro/micro_interpreter_graph.o ./tensorflow/lite2/micro/micro_interpreter_graph.su ./tensorflow/lite2/micro/micro_interpreter_test.cyclo ./tensorflow/lite2/micro/micro_interpreter_test.d ./tensorflow/lite2/micro/micro_interpreter_test.o ./tensorflow/lite2/micro/micro_interpreter_test.su ./tensorflow/lite2/micro/micro_log.cyclo ./tensorflow/lite2/micro/micro_log.d ./tensorflow/lite2/micro/micro_log.o ./tensorflow/lite2/micro/micro_log.su ./tensorflow/lite2/micro/micro_log_test.cyclo ./tensorflow/lite2/micro/micro_log_test.d ./tensorflow/lite2/micro/micro_log_test.o ./tensorflow/lite2/micro/micro_log_test.su ./tensorflow/lite2/micro/micro_mutable_op_resolver_test.cyclo ./tensorflow/lite2/micro/micro_mutable_op_resolver_test.d ./tensorflow/lite2/micro/micro_mutable_op_resolver_test.o ./tensorflow/lite2/micro/micro_mutable_op_resolver_test.su ./tensorflow/lite2/micro/micro_op_resolver.cyclo ./tensorflow/lite2/micro/micro_op_resolver.d ./tensorflow/lite2/micro/micro_op_resolver.o ./tensorflow/lite2/micro/micro_op_resolver.su ./tensorflow/lite2/micro/micro_profiler.cyclo ./tensorflow/lite2/micro/micro_profiler.d ./tensorflow/lite2/micro/micro_profiler.o ./tensorflow/lite2/micro/micro_profiler.su ./tensorflow/lite2/micro/micro_resource_variable.cyclo ./tensorflow/lite2/micro/micro_resource_variable.d ./tensorflow/lite2/micro/micro_resource_variable.o ./tensorflow/lite2/micro/micro_resource_variable.su ./tensorflow/lite2/micro/micro_resource_variable_test.cyclo ./tensorflow/lite2/micro/micro_resource_variable_test.d ./tensorflow/lite2/micro/micro_resource_variable_test.o ./tensorflow/lite2/micro/micro_resource_variable_test.su ./tensorflow/lite2/micro/micro_time.cyclo ./tensorflow/lite2/micro/micro_time.d ./tensorflow/lite2/micro/micro_time.o ./tensorflow/lite2/micro/micro_time.su ./tensorflow/lite2/micro/micro_time_test.cyclo ./tensorflow/lite2/micro/micro_time_test.d ./tensorflow/lite2/micro/micro_time_test.o ./tensorflow/lite2/micro/micro_time_test.su ./tensorflow/lite2/micro/micro_utils.cyclo ./tensorflow/lite2/micro/micro_utils.d ./tensorflow/lite2/micro/micro_utils.o ./tensorflow/lite2/micro/micro_utils.su ./tensorflow/lite2/micro/micro_utils_test.cyclo ./tensorflow/lite2/micro/micro_utils_test.d ./tensorflow/lite2/micro/micro_utils_test.o ./tensorflow/lite2/micro/micro_utils_test.su ./tensorflow/lite2/micro/mock_micro_graph.cyclo ./tensorflow/lite2/micro/mock_micro_graph.d ./tensorflow/lite2/micro/mock_micro_graph.o ./tensorflow/lite2/micro/mock_micro_graph.su ./tensorflow/lite2/micro/recording_micro_allocator.cyclo ./tensorflow/lite2/micro/recording_micro_allocator.d ./tensorflow/lite2/micro/recording_micro_allocator.o ./tensorflow/lite2/micro/recording_micro_allocator.su
	-$(RM) ./tensorflow/lite2/micro/recording_micro_allocator_test.cyclo ./tensorflow/lite2/micro/recording_micro_allocator_test.d ./tensorflow/lite2/micro/recording_micro_allocator_test.o ./tensorflow/lite2/micro/recording_micro_allocator_test.su ./tensorflow/lite2/micro/system_setup.cyclo ./tensorflow/lite2/micro/system_setup.d ./tensorflow/lite2/micro/system_setup.o ./tensorflow/lite2/micro/system_setup.su ./tensorflow/lite2/micro/test_helper_custom_ops.cyclo ./tensorflow/lite2/micro/test_helper_custom_ops.d ./tensorflow/lite2/micro/test_helper_custom_ops.o ./tensorflow/lite2/micro/test_helper_custom_ops.su ./tensorflow/lite2/micro/test_helpers.cyclo ./tensorflow/lite2/micro/test_helpers.d ./tensorflow/lite2/micro/test_helpers.o ./tensorflow/lite2/micro/test_helpers.su ./tensorflow/lite2/micro/testing_helpers_test.cyclo ./tensorflow/lite2/micro/testing_helpers_test.d ./tensorflow/lite2/micro/testing_helpers_test.o ./tensorflow/lite2/micro/testing_helpers_test.su

.PHONY: clean-tensorflow-2f-lite2-2f-micro

