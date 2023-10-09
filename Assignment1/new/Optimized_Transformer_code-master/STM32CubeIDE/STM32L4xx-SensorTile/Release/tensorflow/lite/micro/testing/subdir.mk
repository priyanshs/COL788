################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/testing/test_conv_model.cc \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/testing/test_utils.cc 

CC_DEPS += \
./tensorflow/lite/micro/testing/test_conv_model.d \
./tensorflow/lite/micro/testing/test_utils.d 

OBJS += \
./tensorflow/lite/micro/testing/test_conv_model.o \
./tensorflow/lite/micro/testing/test_utils.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/testing/test_conv_model.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/testing/test_conv_model.cc tensorflow/lite/micro/testing/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
tensorflow/lite/micro/testing/test_utils.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/testing/test_utils.cc tensorflow/lite/micro/testing/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-testing

clean-tensorflow-2f-lite-2f-micro-2f-testing:
	-$(RM) ./tensorflow/lite/micro/testing/test_conv_model.cyclo ./tensorflow/lite/micro/testing/test_conv_model.d ./tensorflow/lite/micro/testing/test_conv_model.o ./tensorflow/lite/micro/testing/test_conv_model.su ./tensorflow/lite/micro/testing/test_utils.cyclo ./tensorflow/lite/micro/testing/test_utils.d ./tensorflow/lite/micro/testing/test_utils.o ./tensorflow/lite/micro/testing/test_utils.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-testing

