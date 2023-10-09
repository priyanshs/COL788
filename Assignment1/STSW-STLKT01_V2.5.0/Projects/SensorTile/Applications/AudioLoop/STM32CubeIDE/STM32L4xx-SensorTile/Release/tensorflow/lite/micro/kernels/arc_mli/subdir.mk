################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/kernels/arc_mli/add.cc \
../tensorflow/lite/micro/kernels/arc_mli/conv.cc \
../tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.cc \
../tensorflow/lite/micro/kernels/arc_mli/fully_connected.cc \
../tensorflow/lite/micro/kernels/arc_mli/mli_interface.cc \
../tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.cc \
../tensorflow/lite/micro/kernels/arc_mli/mli_slicers.cc \
../tensorflow/lite/micro/kernels/arc_mli/pooling.cc \
../tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.cc \
../tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.cc 

CC_DEPS += \
./tensorflow/lite/micro/kernels/arc_mli/add.d \
./tensorflow/lite/micro/kernels/arc_mli/conv.d \
./tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.d \
./tensorflow/lite/micro/kernels/arc_mli/fully_connected.d \
./tensorflow/lite/micro/kernels/arc_mli/mli_interface.d \
./tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.d \
./tensorflow/lite/micro/kernels/arc_mli/mli_slicers.d \
./tensorflow/lite/micro/kernels/arc_mli/pooling.d \
./tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.d \
./tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.d 

OBJS += \
./tensorflow/lite/micro/kernels/arc_mli/add.o \
./tensorflow/lite/micro/kernels/arc_mli/conv.o \
./tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.o \
./tensorflow/lite/micro/kernels/arc_mli/fully_connected.o \
./tensorflow/lite/micro/kernels/arc_mli/mli_interface.o \
./tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.o \
./tensorflow/lite/micro/kernels/arc_mli/mli_slicers.o \
./tensorflow/lite/micro/kernels/arc_mli/pooling.o \
./tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.o \
./tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/kernels/arc_mli/%.o tensorflow/lite/micro/kernels/arc_mli/%.su tensorflow/lite/micro/kernels/arc_mli/%.cyclo: ../tensorflow/lite/micro/kernels/arc_mli/%.cc tensorflow/lite/micro/kernels/arc_mli/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-arc_mli

clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-arc_mli:
	-$(RM) ./tensorflow/lite/micro/kernels/arc_mli/add.cyclo ./tensorflow/lite/micro/kernels/arc_mli/add.d ./tensorflow/lite/micro/kernels/arc_mli/add.o ./tensorflow/lite/micro/kernels/arc_mli/add.su ./tensorflow/lite/micro/kernels/arc_mli/conv.cyclo ./tensorflow/lite/micro/kernels/arc_mli/conv.d ./tensorflow/lite/micro/kernels/arc_mli/conv.o ./tensorflow/lite/micro/kernels/arc_mli/conv.su ./tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.cyclo ./tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.d ./tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.o ./tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.su ./tensorflow/lite/micro/kernels/arc_mli/fully_connected.cyclo ./tensorflow/lite/micro/kernels/arc_mli/fully_connected.d ./tensorflow/lite/micro/kernels/arc_mli/fully_connected.o ./tensorflow/lite/micro/kernels/arc_mli/fully_connected.su ./tensorflow/lite/micro/kernels/arc_mli/mli_interface.cyclo ./tensorflow/lite/micro/kernels/arc_mli/mli_interface.d ./tensorflow/lite/micro/kernels/arc_mli/mli_interface.o ./tensorflow/lite/micro/kernels/arc_mli/mli_interface.su ./tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.cyclo ./tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.d ./tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.o ./tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.su ./tensorflow/lite/micro/kernels/arc_mli/mli_slicers.cyclo ./tensorflow/lite/micro/kernels/arc_mli/mli_slicers.d ./tensorflow/lite/micro/kernels/arc_mli/mli_slicers.o ./tensorflow/lite/micro/kernels/arc_mli/mli_slicers.su ./tensorflow/lite/micro/kernels/arc_mli/pooling.cyclo ./tensorflow/lite/micro/kernels/arc_mli/pooling.d ./tensorflow/lite/micro/kernels/arc_mli/pooling.o ./tensorflow/lite/micro/kernels/arc_mli/pooling.su ./tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.cyclo ./tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.d ./tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.o ./tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.su ./tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.cyclo ./tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.d ./tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.o ./tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-kernels-2f-arc_mli

