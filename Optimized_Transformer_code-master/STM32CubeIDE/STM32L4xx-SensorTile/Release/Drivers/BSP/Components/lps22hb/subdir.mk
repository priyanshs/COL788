################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lps22hb/lps22hb.c \
/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lps22hb/lps22hb_reg.c 

C_DEPS += \
./Drivers/BSP/Components/lps22hb/lps22hb.d \
./Drivers/BSP/Components/lps22hb/lps22hb_reg.d 

OBJS += \
./Drivers/BSP/Components/lps22hb/lps22hb.o \
./Drivers/BSP/Components/lps22hb/lps22hb_reg.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/lps22hb/lps22hb.o: /home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lps22hb/lps22hb.c Drivers/BSP/Components/lps22hb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/Common -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/SensorTile -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/pcm1774 -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/flatbuffers/include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/gemmlowp -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/ruy -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/lps22hb/lps22hb_reg.o: /home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/lps22hb/lps22hb_reg.c Drivers/BSP/Components/lps22hb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/Common -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/SensorTile -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/pcm1774 -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/flatbuffers/include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/gemmlowp -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/ruy -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components-2f-lps22hb

clean-Drivers-2f-BSP-2f-Components-2f-lps22hb:
	-$(RM) ./Drivers/BSP/Components/lps22hb/lps22hb.cyclo ./Drivers/BSP/Components/lps22hb/lps22hb.d ./Drivers/BSP/Components/lps22hb/lps22hb.o ./Drivers/BSP/Components/lps22hb/lps22hb.su ./Drivers/BSP/Components/lps22hb/lps22hb_reg.cyclo ./Drivers/BSP/Components/lps22hb/lps22hb_reg.d ./Drivers/BSP/Components/lps22hb/lps22hb_reg.o ./Drivers/BSP/Components/lps22hb/lps22hb_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-lps22hb
