################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/error_reporter.cc \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/flatbuffer_conversions.cc \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/op_resolver.cc \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/tensor_utils.cc 

CC_DEPS += \
./tensorflow/lite/core/api/error_reporter.d \
./tensorflow/lite/core/api/flatbuffer_conversions.d \
./tensorflow/lite/core/api/op_resolver.d \
./tensorflow/lite/core/api/tensor_utils.d 

OBJS += \
./tensorflow/lite/core/api/error_reporter.o \
./tensorflow/lite/core/api/flatbuffer_conversions.o \
./tensorflow/lite/core/api/op_resolver.o \
./tensorflow/lite/core/api/tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/core/api/error_reporter.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/error_reporter.cc tensorflow/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
tensorflow/lite/core/api/flatbuffer_conversions.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/flatbuffer_conversions.cc tensorflow/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
tensorflow/lite/core/api/op_resolver.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/op_resolver.cc tensorflow/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
tensorflow/lite/core/api/tensor_utils.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/core/api/tensor_utils.cc tensorflow/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-core-2f-api

clean-tensorflow-2f-lite-2f-core-2f-api:
	-$(RM) ./tensorflow/lite/core/api/error_reporter.cyclo ./tensorflow/lite/core/api/error_reporter.d ./tensorflow/lite/core/api/error_reporter.o ./tensorflow/lite/core/api/error_reporter.su ./tensorflow/lite/core/api/flatbuffer_conversions.cyclo ./tensorflow/lite/core/api/flatbuffer_conversions.d ./tensorflow/lite/core/api/flatbuffer_conversions.o ./tensorflow/lite/core/api/flatbuffer_conversions.su ./tensorflow/lite/core/api/op_resolver.cyclo ./tensorflow/lite/core/api/op_resolver.d ./tensorflow/lite/core/api/op_resolver.o ./tensorflow/lite/core/api/op_resolver.su ./tensorflow/lite/core/api/tensor_utils.cyclo ./tensorflow/lite/core/api/tensor_utils.d ./tensorflow/lite/core/api/tensor_utils.o ./tensorflow/lite/core/api/tensor_utils.su

.PHONY: clean-tensorflow-2f-lite-2f-core-2f-api

