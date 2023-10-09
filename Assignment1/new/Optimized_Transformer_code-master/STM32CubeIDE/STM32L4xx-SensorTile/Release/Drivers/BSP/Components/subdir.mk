################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/priyansh/Git-Repos/Drivers/BSP/Components/pcm1774/PCM1774.c \
/Users/priyansh/Git-Repos/Drivers/BSP/Components/pcm1774/PCM1774_reg.c 

C_DEPS += \
./Drivers/BSP/Components/PCM1774.d \
./Drivers/BSP/Components/PCM1774_reg.d 

OBJS += \
./Drivers/BSP/Components/PCM1774.o \
./Drivers/BSP/Components/PCM1774_reg.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/PCM1774.o: /Users/priyansh/Git-Repos/Drivers/BSP/Components/pcm1774/PCM1774.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/PCM1774_reg.o: /Users/priyansh/Git-Repos/Drivers/BSP/Components/pcm1774/PCM1774_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/PCM1774.cyclo ./Drivers/BSP/Components/PCM1774.d ./Drivers/BSP/Components/PCM1774.o ./Drivers/BSP/Components/PCM1774.su ./Drivers/BSP/Components/PCM1774_reg.cyclo ./Drivers/BSP/Components/PCM1774_reg.d ./Drivers/BSP/Components/PCM1774_reg.o ./Drivers/BSP/Components/PCM1774_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

