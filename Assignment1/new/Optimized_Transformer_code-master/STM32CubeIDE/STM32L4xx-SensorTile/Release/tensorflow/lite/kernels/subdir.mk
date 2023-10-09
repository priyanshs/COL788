################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/kernel_util.cc 

CC_DEPS += \
./tensorflow/lite/kernels/kernel_util.d 

OBJS += \
./tensorflow/lite/kernels/kernel_util.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/kernels/kernel_util.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/kernel_util.cc tensorflow/lite/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-kernels

clean-tensorflow-2f-lite-2f-kernels:
	-$(RM) ./tensorflow/lite/kernels/kernel_util.cyclo ./tensorflow/lite/kernels/kernel_util.d ./tensorflow/lite/kernels/kernel_util.o ./tensorflow/lite/kernels/kernel_util.su

.PHONY: clean-tensorflow-2f-lite-2f-kernels

