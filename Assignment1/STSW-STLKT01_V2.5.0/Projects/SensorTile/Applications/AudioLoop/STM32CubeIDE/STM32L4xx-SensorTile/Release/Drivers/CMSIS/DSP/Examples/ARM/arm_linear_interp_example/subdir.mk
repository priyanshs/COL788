################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.c \
../Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.c \
../Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.c 

C_DEPS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.d \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.d \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.d 

OBJS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.o \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.o \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.c Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/tflite-micro/tensorflow -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.c Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/tflite-micro/tensorflow -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.o: /Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.c Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/tflite-micro/tensorflow -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_linear_interp_example

clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_linear_interp_example:
	-$(RM) ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.su ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.su ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_linear_interp_example

