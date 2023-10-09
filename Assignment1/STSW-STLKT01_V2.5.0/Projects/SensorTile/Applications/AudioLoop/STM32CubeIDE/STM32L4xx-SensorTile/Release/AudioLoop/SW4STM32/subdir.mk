################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/startup_stm32l476xx.s 

S_DEPS += \
./AudioLoop/SW4STM32/startup_stm32l476xx.d 

OBJS += \
./AudioLoop/SW4STM32/startup_stm32l476xx.o 


# Each subdirectory must supply rules for building sources it contributes
AudioLoop/SW4STM32/startup_stm32l476xx.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/startup_stm32l476xx.s AudioLoop/SW4STM32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"../../../../../../..//Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-AudioLoop-2f-SW4STM32

clean-AudioLoop-2f-SW4STM32:
	-$(RM) ./AudioLoop/SW4STM32/startup_stm32l476xx.d ./AudioLoop/SW4STM32/startup_stm32l476xx.o

.PHONY: clean-AudioLoop-2f-SW4STM32

