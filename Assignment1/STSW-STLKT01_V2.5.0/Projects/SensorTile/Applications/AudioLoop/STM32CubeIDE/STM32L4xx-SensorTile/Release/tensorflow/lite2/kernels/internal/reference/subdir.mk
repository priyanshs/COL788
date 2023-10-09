################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/kernels/internal/reference/comparisons.cc \
../tensorflow/lite2/kernels/internal/reference/portable_tensor_utils.cc 

CC_DEPS += \
./tensorflow/lite2/kernels/internal/reference/comparisons.d \
./tensorflow/lite2/kernels/internal/reference/portable_tensor_utils.d 

OBJS += \
./tensorflow/lite2/kernels/internal/reference/comparisons.o \
./tensorflow/lite2/kernels/internal/reference/portable_tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/kernels/internal/reference/%.o tensorflow/lite2/kernels/internal/reference/%.su tensorflow/lite2/kernels/internal/reference/%.cyclo: ../tensorflow/lite2/kernels/internal/reference/%.cc tensorflow/lite2/kernels/internal/reference/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-kernels-2f-internal-2f-reference

clean-tensorflow-2f-lite2-2f-kernels-2f-internal-2f-reference:
	-$(RM) ./tensorflow/lite2/kernels/internal/reference/comparisons.cyclo ./tensorflow/lite2/kernels/internal/reference/comparisons.d ./tensorflow/lite2/kernels/internal/reference/comparisons.o ./tensorflow/lite2/kernels/internal/reference/comparisons.su ./tensorflow/lite2/kernels/internal/reference/portable_tensor_utils.cyclo ./tensorflow/lite2/kernels/internal/reference/portable_tensor_utils.d ./tensorflow/lite2/kernels/internal/reference/portable_tensor_utils.o ./tensorflow/lite2/kernels/internal/reference/portable_tensor_utils.su

.PHONY: clean-tensorflow-2f-lite2-2f-kernels-2f-internal-2f-reference

