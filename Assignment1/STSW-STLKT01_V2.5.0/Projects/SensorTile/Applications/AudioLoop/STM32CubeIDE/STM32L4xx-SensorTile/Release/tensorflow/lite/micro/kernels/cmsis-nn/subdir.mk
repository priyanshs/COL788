################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/kernels/cmsis-nn/add.cc \
../tensorflow/lite/micro/kernels/cmsis-nn/conv.cc \
../tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.cc \
../tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.cc \
../tensorflow/lite/micro/kernels/cmsis-nn/mul.cc \
../tensorflow/lite/micro/kernels/cmsis-nn/pooling.cc \
../tensorflow/lite/micro/kernels/cmsis-nn/softmax.cc 

CC_DEPS += \
./tensorflow/lite/micro/kernels/cmsis-nn/add.d \
./tensorflow/lite/micro/kernels/cmsis-nn/conv.d \
./tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.d \
./tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.d \
./tensorflow/lite/micro/kernels/cmsis-nn/mul.d \
./tensorflow/lite/micro/kernels/cmsis-nn/pooling.d \
./tensorflow/lite/micro/kernels/cmsis-nn/softmax.d 

OBJS += \
./tensorflow/lite/micro/kernels/cmsis-nn/add.o \
./tensorflow/lite/micro/kernels/cmsis-nn/conv.o \
./tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.o \
./tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.o \
./tensorflow/lite/micro/kernels/cmsis-nn/mul.o \
./tensorflow/lite/micro/kernels/cmsis-nn/pooling.o \
./tensorflow/lite/micro/kernels/cmsis-nn/softmax.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/kernels/cmsis-nn/%.o tensorflow/lite/micro/kernels/cmsis-nn/%.su tensorflow/lite/micro/kernels/cmsis-nn/%.cyclo: ../tensorflow/lite/micro/kernels/cmsis-nn/%.cc tensorflow/lite/micro/kernels/cmsis-nn/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/STM32L4xx_HAL_Driver/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components/Common -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/SensorTile -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/third_party/flatbuffers/include/flatbuffers -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/SensorTile -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/NN/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/DSP/Include -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis-2d-nn

clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis-2d-nn:
	-$(RM) ./tensorflow/lite/micro/kernels/cmsis-nn/add.cyclo ./tensorflow/lite/micro/kernels/cmsis-nn/add.d ./tensorflow/lite/micro/kernels/cmsis-nn/add.o ./tensorflow/lite/micro/kernels/cmsis-nn/add.su ./tensorflow/lite/micro/kernels/cmsis-nn/conv.cyclo ./tensorflow/lite/micro/kernels/cmsis-nn/conv.d ./tensorflow/lite/micro/kernels/cmsis-nn/conv.o ./tensorflow/lite/micro/kernels/cmsis-nn/conv.su ./tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.cyclo ./tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.d ./tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.o ./tensorflow/lite/micro/kernels/cmsis-nn/depthwise_conv.su ./tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.cyclo ./tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.d ./tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.o ./tensorflow/lite/micro/kernels/cmsis-nn/fully_connected.su ./tensorflow/lite/micro/kernels/cmsis-nn/mul.cyclo ./tensorflow/lite/micro/kernels/cmsis-nn/mul.d ./tensorflow/lite/micro/kernels/cmsis-nn/mul.o ./tensorflow/lite/micro/kernels/cmsis-nn/mul.su ./tensorflow/lite/micro/kernels/cmsis-nn/pooling.cyclo ./tensorflow/lite/micro/kernels/cmsis-nn/pooling.d ./tensorflow/lite/micro/kernels/cmsis-nn/pooling.o ./tensorflow/lite/micro/kernels/cmsis-nn/pooling.su ./tensorflow/lite/micro/kernels/cmsis-nn/softmax.cyclo ./tensorflow/lite/micro/kernels/cmsis-nn/softmax.d ./tensorflow/lite/micro/kernels/cmsis-nn/softmax.o ./tensorflow/lite/micro/kernels/cmsis-nn/softmax.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis-2d-nn

