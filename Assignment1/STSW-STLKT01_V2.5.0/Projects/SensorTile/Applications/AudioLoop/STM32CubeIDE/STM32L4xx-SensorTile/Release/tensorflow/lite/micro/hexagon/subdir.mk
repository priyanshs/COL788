################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/hexagon/micro_time.cc \
../tensorflow/lite/micro/hexagon/system_setup.cc 

CC_DEPS += \
./tensorflow/lite/micro/hexagon/micro_time.d \
./tensorflow/lite/micro/hexagon/system_setup.d 

OBJS += \
./tensorflow/lite/micro/hexagon/micro_time.o \
./tensorflow/lite/micro/hexagon/system_setup.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/hexagon/%.o tensorflow/lite/micro/hexagon/%.su tensorflow/lite/micro/hexagon/%.cyclo: ../tensorflow/lite/micro/hexagon/%.cc tensorflow/lite/micro/hexagon/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-hexagon

clean-tensorflow-2f-lite-2f-micro-2f-hexagon:
	-$(RM) ./tensorflow/lite/micro/hexagon/micro_time.cyclo ./tensorflow/lite/micro/hexagon/micro_time.d ./tensorflow/lite/micro/hexagon/micro_time.o ./tensorflow/lite/micro/hexagon/micro_time.su ./tensorflow/lite/micro/hexagon/system_setup.cyclo ./tensorflow/lite/micro/hexagon/system_setup.d ./tensorflow/lite/micro/hexagon/system_setup.o ./tensorflow/lite/micro/hexagon/system_setup.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-hexagon

