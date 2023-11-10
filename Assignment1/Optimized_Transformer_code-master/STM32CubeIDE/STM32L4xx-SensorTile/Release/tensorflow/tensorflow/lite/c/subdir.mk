################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/c/common.c 

C_DEPS += \
./tensorflow/tensorflow/lite/c/common.d 

OBJS += \
./tensorflow/tensorflow/lite/c/common.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/tensorflow/lite/c/common.o: /home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/c/common.c tensorflow/tensorflow/lite/c/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Inc -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/NN/Include -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lsm6dsm -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/DSP/Include -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Include -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lsm6dsm -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/hts221 -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lps22hb -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lsm303agr -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/pcm1774 -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/Common -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/SensorTile -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/pcm1774 -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/third_party/flatbuffers/include -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/third_party/gemmlowp -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/third_party/ruy -I/home/dell/COL788/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-tensorflow-2f-lite-2f-c

clean-tensorflow-2f-tensorflow-2f-lite-2f-c:
	-$(RM) ./tensorflow/tensorflow/lite/c/common.cyclo ./tensorflow/tensorflow/lite/c/common.d ./tensorflow/tensorflow/lite/c/common.o ./tensorflow/tensorflow/lite/c/common.su

.PHONY: clean-tensorflow-2f-tensorflow-2f-lite-2f-c

