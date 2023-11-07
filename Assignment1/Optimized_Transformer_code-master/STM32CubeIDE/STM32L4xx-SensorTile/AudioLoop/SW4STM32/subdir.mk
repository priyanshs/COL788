################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/STM32CubeIDE/startup_stm32l476xx.s 

S_DEPS += \
./AudioLoop/SW4STM32/startup_stm32l476xx.d 

OBJS += \
./AudioLoop/SW4STM32/startup_stm32l476xx.o 


# Each subdirectory must supply rules for building sources it contributes
AudioLoop/SW4STM32/startup_stm32l476xx.o: /home/dell/COL788/Assignment1/Optimized_Transformer_code-master/STM32CubeIDE/startup_stm32l476xx.s AudioLoop/SW4STM32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/Common -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/SensorTile -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/pcm1774 -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/flatbuffers/include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/gemmlowp -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/ruy -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-AudioLoop-2f-SW4STM32

clean-AudioLoop-2f-SW4STM32:
	-$(RM) ./AudioLoop/SW4STM32/startup_stm32l476xx.d ./AudioLoop/SW4STM32/startup_stm32l476xx.o

.PHONY: clean-AudioLoop-2f-SW4STM32

