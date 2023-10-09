################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.c 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.d 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.c Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/tflite-micro/tensorflow -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32L4xx-2f-Source-2f-Templates

clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32L4xx-2f-Source-2f-Templates:
	-$(RM) ./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.cyclo ./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.d ./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.o ./Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.su

.PHONY: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32L4xx-2f-Source-2f-Templates

