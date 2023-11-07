################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../AudioLoop/User/cube_hal_l4.c \
../AudioLoop/User/stm32l4xx_it.c \
../AudioLoop/User/syscalls.c \
../AudioLoop/User/usbd_audio_if.c \
../AudioLoop/User/usbd_cdc_if.c \
../AudioLoop/User/usbd_cdc_interface.c \
../AudioLoop/User/usbd_desc.c 

CPP_SRCS += \
../AudioLoop/User/arm_avepool_q7_HWC_nonsquare.cpp \
../AudioLoop/User/dnn.cpp \
../AudioLoop/User/ds_cnn.cpp \
../AudioLoop/User/kws.cpp \
../AudioLoop/User/kws_dnn.cpp \
../AudioLoop/User/kws_ds_cnn.cpp \
../AudioLoop/User/kws_f746ng.cpp \
../AudioLoop/User/main.cpp \
../AudioLoop/User/mfcc.cpp \
../AudioLoop/User/nn.cpp \
../AudioLoop/User/stm32l4xx_hal_msp.cpp 

C_DEPS += \
./AudioLoop/User/cube_hal_l4.d \
./AudioLoop/User/stm32l4xx_it.d \
./AudioLoop/User/syscalls.d \
./AudioLoop/User/usbd_audio_if.d \
./AudioLoop/User/usbd_cdc_if.d \
./AudioLoop/User/usbd_cdc_interface.d \
./AudioLoop/User/usbd_desc.d 

OBJS += \
./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.o \
./AudioLoop/User/cube_hal_l4.o \
./AudioLoop/User/dnn.o \
./AudioLoop/User/ds_cnn.o \
./AudioLoop/User/kws.o \
./AudioLoop/User/kws_dnn.o \
./AudioLoop/User/kws_ds_cnn.o \
./AudioLoop/User/kws_f746ng.o \
./AudioLoop/User/main.o \
./AudioLoop/User/mfcc.o \
./AudioLoop/User/nn.o \
./AudioLoop/User/stm32l4xx_hal_msp.o \
./AudioLoop/User/stm32l4xx_it.o \
./AudioLoop/User/syscalls.o \
./AudioLoop/User/usbd_audio_if.o \
./AudioLoop/User/usbd_cdc_if.o \
./AudioLoop/User/usbd_cdc_interface.o \
./AudioLoop/User/usbd_desc.o 

CPP_DEPS += \
./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.d \
./AudioLoop/User/dnn.d \
./AudioLoop/User/ds_cnn.d \
./AudioLoop/User/kws.d \
./AudioLoop/User/kws_dnn.d \
./AudioLoop/User/kws_ds_cnn.d \
./AudioLoop/User/kws_f746ng.d \
./AudioLoop/User/main.d \
./AudioLoop/User/mfcc.d \
./AudioLoop/User/nn.d \
./AudioLoop/User/stm32l4xx_hal_msp.d 


# Each subdirectory must supply rules for building sources it contributes
AudioLoop/User/%.o AudioLoop/User/%.su AudioLoop/User/%.cyclo: ../AudioLoop/User/%.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/NN/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/DSP/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/Common -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/SensorTile -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/pcm1774 -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/flatbuffers/include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/gemmlowp -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/ruy -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/%.o AudioLoop/User/%.su AudioLoop/User/%.cyclo: ../AudioLoop/User/%.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/NN/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/DSP/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/CMSIS/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/Common -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/SensorTile -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/Drivers/BSP/Components/pcm1774 -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/flatbuffers/include -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/gemmlowp -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/third_party/ruy -I/home/dell/COL788/Assignment1/Optimized_Transformer_code-master/tensorflow -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-AudioLoop-2f-User

clean-AudioLoop-2f-User:
	-$(RM) ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.cyclo ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.d ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.o ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.su ./AudioLoop/User/cube_hal_l4.cyclo ./AudioLoop/User/cube_hal_l4.d ./AudioLoop/User/cube_hal_l4.o ./AudioLoop/User/cube_hal_l4.su ./AudioLoop/User/dnn.cyclo ./AudioLoop/User/dnn.d ./AudioLoop/User/dnn.o ./AudioLoop/User/dnn.su ./AudioLoop/User/ds_cnn.cyclo ./AudioLoop/User/ds_cnn.d ./AudioLoop/User/ds_cnn.o ./AudioLoop/User/ds_cnn.su ./AudioLoop/User/kws.cyclo ./AudioLoop/User/kws.d ./AudioLoop/User/kws.o ./AudioLoop/User/kws.su ./AudioLoop/User/kws_dnn.cyclo ./AudioLoop/User/kws_dnn.d ./AudioLoop/User/kws_dnn.o ./AudioLoop/User/kws_dnn.su ./AudioLoop/User/kws_ds_cnn.cyclo ./AudioLoop/User/kws_ds_cnn.d ./AudioLoop/User/kws_ds_cnn.o ./AudioLoop/User/kws_ds_cnn.su ./AudioLoop/User/kws_f746ng.cyclo ./AudioLoop/User/kws_f746ng.d ./AudioLoop/User/kws_f746ng.o ./AudioLoop/User/kws_f746ng.su ./AudioLoop/User/main.cyclo ./AudioLoop/User/main.d ./AudioLoop/User/main.o ./AudioLoop/User/main.su ./AudioLoop/User/mfcc.cyclo ./AudioLoop/User/mfcc.d ./AudioLoop/User/mfcc.o ./AudioLoop/User/mfcc.su ./AudioLoop/User/nn.cyclo ./AudioLoop/User/nn.d ./AudioLoop/User/nn.o ./AudioLoop/User/nn.su ./AudioLoop/User/stm32l4xx_hal_msp.cyclo ./AudioLoop/User/stm32l4xx_hal_msp.d ./AudioLoop/User/stm32l4xx_hal_msp.o ./AudioLoop/User/stm32l4xx_hal_msp.su ./AudioLoop/User/stm32l4xx_it.cyclo ./AudioLoop/User/stm32l4xx_it.d ./AudioLoop/User/stm32l4xx_it.o ./AudioLoop/User/stm32l4xx_it.su ./AudioLoop/User/syscalls.cyclo ./AudioLoop/User/syscalls.d ./AudioLoop/User/syscalls.o ./AudioLoop/User/syscalls.su ./AudioLoop/User/usbd_audio_if.cyclo ./AudioLoop/User/usbd_audio_if.d ./AudioLoop/User/usbd_audio_if.o ./AudioLoop/User/usbd_audio_if.su ./AudioLoop/User/usbd_cdc_if.cyclo ./AudioLoop/User/usbd_cdc_if.d ./AudioLoop/User/usbd_cdc_if.o ./AudioLoop/User/usbd_cdc_if.su ./AudioLoop/User/usbd_cdc_interface.cyclo ./AudioLoop/User/usbd_cdc_interface.d ./AudioLoop/User/usbd_cdc_interface.o ./AudioLoop/User/usbd_cdc_interface.su ./AudioLoop/User/usbd_desc.cyclo ./AudioLoop/User/usbd_desc.d ./AudioLoop/User/usbd_desc.o ./AudioLoop/User/usbd_desc.su

.PHONY: clean-AudioLoop-2f-User

