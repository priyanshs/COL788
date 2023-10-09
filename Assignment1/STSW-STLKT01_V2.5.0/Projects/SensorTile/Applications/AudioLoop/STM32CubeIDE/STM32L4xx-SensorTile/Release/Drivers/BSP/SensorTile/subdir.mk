################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile/SensorTile.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile/SensorTile_audio.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile/SensorTile_bus.c 

C_DEPS += \
./Drivers/BSP/SensorTile/SensorTile.d \
./Drivers/BSP/SensorTile/SensorTile_audio.d \
./Drivers/BSP/SensorTile/SensorTile_bus.d 

OBJS += \
./Drivers/BSP/SensorTile/SensorTile.o \
./Drivers/BSP/SensorTile/SensorTile_audio.o \
./Drivers/BSP/SensorTile/SensorTile_bus.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/SensorTile/SensorTile.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile/SensorTile.c Drivers/BSP/SensorTile/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/tflite-micro/tensorflow -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/SensorTile/SensorTile_audio.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile/SensorTile_audio.c Drivers/BSP/SensorTile/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/tflite-micro/tensorflow -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/SensorTile/SensorTile_bus.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile/SensorTile_bus.c Drivers/BSP/SensorTile/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/tflite-micro/tensorflow -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-SensorTile

clean-Drivers-2f-BSP-2f-SensorTile:
	-$(RM) ./Drivers/BSP/SensorTile/SensorTile.cyclo ./Drivers/BSP/SensorTile/SensorTile.d ./Drivers/BSP/SensorTile/SensorTile.o ./Drivers/BSP/SensorTile/SensorTile.su ./Drivers/BSP/SensorTile/SensorTile_audio.cyclo ./Drivers/BSP/SensorTile/SensorTile_audio.d ./Drivers/BSP/SensorTile/SensorTile_audio.o ./Drivers/BSP/SensorTile/SensorTile_audio.su ./Drivers/BSP/SensorTile/SensorTile_bus.cyclo ./Drivers/BSP/SensorTile/SensorTile_bus.d ./Drivers/BSP/SensorTile/SensorTile_bus.o ./Drivers/BSP/SensorTile/SensorTile_bus.su

.PHONY: clean-Drivers-2f-BSP-2f-SensorTile

