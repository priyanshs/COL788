################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/cube_hal_l4.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/stm32l4xx_it.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/syscalls.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_audio_if.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_cdc_if.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_cdc_interface.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_conf_l4.c \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_desc.c 

CPP_SRCS += \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/arm_avepool_q7_HWC_nonsquare.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/dnn.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/ds_cnn.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws_dnn.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws_ds_cnn.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws_f746ng.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/main.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/mfcc.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/nn.cpp \
/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/stm32l4xx_hal_msp.cpp 

C_DEPS += \
./AudioLoop/User/cube_hal_l4.d \
./AudioLoop/User/stm32l4xx_it.d \
./AudioLoop/User/syscalls.d \
./AudioLoop/User/usbd_audio_if.d \
./AudioLoop/User/usbd_cdc_if.d \
./AudioLoop/User/usbd_cdc_interface.d \
./AudioLoop/User/usbd_conf_l4.d \
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
./AudioLoop/User/usbd_conf_l4.o \
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
AudioLoop/User/arm_avepool_q7_HWC_nonsquare.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/arm_avepool_q7_HWC_nonsquare.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/cube_hal_l4.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/cube_hal_l4.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/dnn.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/dnn.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/ds_cnn.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/ds_cnn.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/kws.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/kws_dnn.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws_dnn.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/kws_ds_cnn.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws_ds_cnn.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/kws_f746ng.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/kws_f746ng.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/main.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/main.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/mfcc.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/mfcc.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/nn.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/nn.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/stm32l4xx_hal_msp.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/stm32l4xx_hal_msp.cpp AudioLoop/User/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite -I/Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/STM32CubeIDE/Drivers/CMSIS -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/stm32l4xx_it.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/stm32l4xx_it.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/syscalls.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/syscalls.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/usbd_audio_if.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_audio_if.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/usbd_cdc_if.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_cdc_if.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/usbd_cdc_interface.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_cdc_interface.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/usbd_conf_l4.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_conf_l4.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
AudioLoop/User/usbd_desc.o: /Users/priyansh/Git-Repos/COL788/Assignment1/new/Optimized_Transformer_code-master/Src/usbd_desc.c AudioLoop/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-AudioLoop-2f-User

clean-AudioLoop-2f-User:
	-$(RM) ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.cyclo ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.d ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.o ./AudioLoop/User/arm_avepool_q7_HWC_nonsquare.su ./AudioLoop/User/cube_hal_l4.cyclo ./AudioLoop/User/cube_hal_l4.d ./AudioLoop/User/cube_hal_l4.o ./AudioLoop/User/cube_hal_l4.su ./AudioLoop/User/dnn.cyclo ./AudioLoop/User/dnn.d ./AudioLoop/User/dnn.o ./AudioLoop/User/dnn.su ./AudioLoop/User/ds_cnn.cyclo ./AudioLoop/User/ds_cnn.d ./AudioLoop/User/ds_cnn.o ./AudioLoop/User/ds_cnn.su ./AudioLoop/User/kws.cyclo ./AudioLoop/User/kws.d ./AudioLoop/User/kws.o ./AudioLoop/User/kws.su ./AudioLoop/User/kws_dnn.cyclo ./AudioLoop/User/kws_dnn.d ./AudioLoop/User/kws_dnn.o ./AudioLoop/User/kws_dnn.su ./AudioLoop/User/kws_ds_cnn.cyclo ./AudioLoop/User/kws_ds_cnn.d ./AudioLoop/User/kws_ds_cnn.o ./AudioLoop/User/kws_ds_cnn.su ./AudioLoop/User/kws_f746ng.cyclo ./AudioLoop/User/kws_f746ng.d ./AudioLoop/User/kws_f746ng.o ./AudioLoop/User/kws_f746ng.su ./AudioLoop/User/main.cyclo ./AudioLoop/User/main.d ./AudioLoop/User/main.o ./AudioLoop/User/main.su ./AudioLoop/User/mfcc.cyclo ./AudioLoop/User/mfcc.d ./AudioLoop/User/mfcc.o ./AudioLoop/User/mfcc.su ./AudioLoop/User/nn.cyclo ./AudioLoop/User/nn.d ./AudioLoop/User/nn.o ./AudioLoop/User/nn.su ./AudioLoop/User/stm32l4xx_hal_msp.cyclo ./AudioLoop/User/stm32l4xx_hal_msp.d ./AudioLoop/User/stm32l4xx_hal_msp.o ./AudioLoop/User/stm32l4xx_hal_msp.su ./AudioLoop/User/stm32l4xx_it.cyclo ./AudioLoop/User/stm32l4xx_it.d ./AudioLoop/User/stm32l4xx_it.o ./AudioLoop/User/stm32l4xx_it.su ./AudioLoop/User/syscalls.cyclo ./AudioLoop/User/syscalls.d ./AudioLoop/User/syscalls.o ./AudioLoop/User/syscalls.su ./AudioLoop/User/usbd_audio_if.cyclo ./AudioLoop/User/usbd_audio_if.d ./AudioLoop/User/usbd_audio_if.o ./AudioLoop/User/usbd_audio_if.su ./AudioLoop/User/usbd_cdc_if.cyclo ./AudioLoop/User/usbd_cdc_if.d ./AudioLoop/User/usbd_cdc_if.o ./AudioLoop/User/usbd_cdc_if.su ./AudioLoop/User/usbd_cdc_interface.cyclo ./AudioLoop/User/usbd_cdc_interface.d ./AudioLoop/User/usbd_cdc_interface.o ./AudioLoop/User/usbd_cdc_interface.su ./AudioLoop/User/usbd_conf_l4.cyclo ./AudioLoop/User/usbd_conf_l4.d ./AudioLoop/User/usbd_conf_l4.o ./AudioLoop/User/usbd_conf_l4.su ./AudioLoop/User/usbd_desc.cyclo ./AudioLoop/User/usbd_desc.d ./AudioLoop/User/usbd_desc.o ./AudioLoop/User/usbd_desc.su

.PHONY: clean-AudioLoop-2f-User
