################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/kernels/activations.cc \
../tensorflow/lite/micro/kernels/arg_min_max.cc \
../tensorflow/lite/micro/kernels/ceil.cc \
../tensorflow/lite/micro/kernels/circular_buffer.cc \
../tensorflow/lite/micro/kernels/comparisons.cc \
../tensorflow/lite/micro/kernels/concatenation.cc \
../tensorflow/lite/micro/kernels/dequantize.cc \
../tensorflow/lite/micro/kernels/elementwise.cc \
../tensorflow/lite/micro/kernels/ethosu.cc \
../tensorflow/lite/micro/kernels/floor.cc \
../tensorflow/lite/micro/kernels/hard_swish.cc \
../tensorflow/lite/micro/kernels/l2norm.cc \
../tensorflow/lite/micro/kernels/logical.cc \
../tensorflow/lite/micro/kernels/logistic.cc \
../tensorflow/lite/micro/kernels/maximum_minimum.cc \
../tensorflow/lite/micro/kernels/neg.cc \
../tensorflow/lite/micro/kernels/pack.cc \
../tensorflow/lite/micro/kernels/pad.cc \
../tensorflow/lite/micro/kernels/prelu.cc \
../tensorflow/lite/micro/kernels/quantize.cc \
../tensorflow/lite/micro/kernels/reduce.cc \
../tensorflow/lite/micro/kernels/reshape.cc \
../tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc \
../tensorflow/lite/micro/kernels/round.cc \
../tensorflow/lite/micro/kernels/split.cc \
../tensorflow/lite/micro/kernels/strided_slice.cc \
../tensorflow/lite/micro/kernels/sub.cc \
../tensorflow/lite/micro/kernels/svdf.cc \
../tensorflow/lite/micro/kernels/tanh.cc \
../tensorflow/lite/micro/kernels/transpose.cc \
../tensorflow/lite/micro/kernels/unpack.cc 

CC_DEPS += \
./tensorflow/lite/micro/kernels/activations.d \
./tensorflow/lite/micro/kernels/arg_min_max.d \
./tensorflow/lite/micro/kernels/ceil.d \
./tensorflow/lite/micro/kernels/circular_buffer.d \
./tensorflow/lite/micro/kernels/comparisons.d \
./tensorflow/lite/micro/kernels/concatenation.d \
./tensorflow/lite/micro/kernels/dequantize.d \
./tensorflow/lite/micro/kernels/elementwise.d \
./tensorflow/lite/micro/kernels/ethosu.d \
./tensorflow/lite/micro/kernels/floor.d \
./tensorflow/lite/micro/kernels/hard_swish.d \
./tensorflow/lite/micro/kernels/l2norm.d \
./tensorflow/lite/micro/kernels/logical.d \
./tensorflow/lite/micro/kernels/logistic.d \
./tensorflow/lite/micro/kernels/maximum_minimum.d \
./tensorflow/lite/micro/kernels/neg.d \
./tensorflow/lite/micro/kernels/pack.d \
./tensorflow/lite/micro/kernels/pad.d \
./tensorflow/lite/micro/kernels/prelu.d \
./tensorflow/lite/micro/kernels/quantize.d \
./tensorflow/lite/micro/kernels/reduce.d \
./tensorflow/lite/micro/kernels/reshape.d \
./tensorflow/lite/micro/kernels/resize_nearest_neighbor.d \
./tensorflow/lite/micro/kernels/round.d \
./tensorflow/lite/micro/kernels/split.d \
./tensorflow/lite/micro/kernels/strided_slice.d \
./tensorflow/lite/micro/kernels/sub.d \
./tensorflow/lite/micro/kernels/svdf.d \
./tensorflow/lite/micro/kernels/tanh.d \
./tensorflow/lite/micro/kernels/transpose.d \
./tensorflow/lite/micro/kernels/unpack.d 

OBJS += \
./tensorflow/lite/micro/kernels/activations.o \
./tensorflow/lite/micro/kernels/arg_min_max.o \
./tensorflow/lite/micro/kernels/ceil.o \
./tensorflow/lite/micro/kernels/circular_buffer.o \
./tensorflow/lite/micro/kernels/comparisons.o \
./tensorflow/lite/micro/kernels/concatenation.o \
./tensorflow/lite/micro/kernels/dequantize.o \
./tensorflow/lite/micro/kernels/elementwise.o \
./tensorflow/lite/micro/kernels/ethosu.o \
./tensorflow/lite/micro/kernels/floor.o \
./tensorflow/lite/micro/kernels/hard_swish.o \
./tensorflow/lite/micro/kernels/l2norm.o \
./tensorflow/lite/micro/kernels/logical.o \
./tensorflow/lite/micro/kernels/logistic.o \
./tensorflow/lite/micro/kernels/maximum_minimum.o \
./tensorflow/lite/micro/kernels/neg.o \
./tensorflow/lite/micro/kernels/pack.o \
./tensorflow/lite/micro/kernels/pad.o \
./tensorflow/lite/micro/kernels/prelu.o \
./tensorflow/lite/micro/kernels/quantize.o \
./tensorflow/lite/micro/kernels/reduce.o \
./tensorflow/lite/micro/kernels/reshape.o \
./tensorflow/lite/micro/kernels/resize_nearest_neighbor.o \
./tensorflow/lite/micro/kernels/round.o \
./tensorflow/lite/micro/kernels/split.o \
./tensorflow/lite/micro/kernels/strided_slice.o \
./tensorflow/lite/micro/kernels/sub.o \
./tensorflow/lite/micro/kernels/svdf.o \
./tensorflow/lite/micro/kernels/tanh.o \
./tensorflow/lite/micro/kernels/transpose.o \
./tensorflow/lite/micro/kernels/unpack.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/kernels/%.o tensorflow/lite/micro/kernels/%.su tensorflow/lite/micro/kernels/%.cyclo: ../tensorflow/lite/micro/kernels/%.cc tensorflow/lite/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/STM32L4xx_HAL_Driver/Inc -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components/Common -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/SensorTile -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/third_party/flatbuffers/include/flatbuffers -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/Components -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/BSP/SensorTile -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/NN/Include -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/Drivers/CMSIS/DSP/Include -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-kernels

clean-tensorflow-2f-lite-2f-micro-2f-kernels:
	-$(RM) ./tensorflow/lite/micro/kernels/activations.cyclo ./tensorflow/lite/micro/kernels/activations.d ./tensorflow/lite/micro/kernels/activations.o ./tensorflow/lite/micro/kernels/activations.su ./tensorflow/lite/micro/kernels/arg_min_max.cyclo ./tensorflow/lite/micro/kernels/arg_min_max.d ./tensorflow/lite/micro/kernels/arg_min_max.o ./tensorflow/lite/micro/kernels/arg_min_max.su ./tensorflow/lite/micro/kernels/ceil.cyclo ./tensorflow/lite/micro/kernels/ceil.d ./tensorflow/lite/micro/kernels/ceil.o ./tensorflow/lite/micro/kernels/ceil.su ./tensorflow/lite/micro/kernels/circular_buffer.cyclo ./tensorflow/lite/micro/kernels/circular_buffer.d ./tensorflow/lite/micro/kernels/circular_buffer.o ./tensorflow/lite/micro/kernels/circular_buffer.su ./tensorflow/lite/micro/kernels/comparisons.cyclo ./tensorflow/lite/micro/kernels/comparisons.d ./tensorflow/lite/micro/kernels/comparisons.o ./tensorflow/lite/micro/kernels/comparisons.su ./tensorflow/lite/micro/kernels/concatenation.cyclo ./tensorflow/lite/micro/kernels/concatenation.d ./tensorflow/lite/micro/kernels/concatenation.o ./tensorflow/lite/micro/kernels/concatenation.su ./tensorflow/lite/micro/kernels/dequantize.cyclo ./tensorflow/lite/micro/kernels/dequantize.d ./tensorflow/lite/micro/kernels/dequantize.o ./tensorflow/lite/micro/kernels/dequantize.su ./tensorflow/lite/micro/kernels/elementwise.cyclo ./tensorflow/lite/micro/kernels/elementwise.d ./tensorflow/lite/micro/kernels/elementwise.o ./tensorflow/lite/micro/kernels/elementwise.su ./tensorflow/lite/micro/kernels/ethosu.cyclo ./tensorflow/lite/micro/kernels/ethosu.d ./tensorflow/lite/micro/kernels/ethosu.o ./tensorflow/lite/micro/kernels/ethosu.su ./tensorflow/lite/micro/kernels/floor.cyclo ./tensorflow/lite/micro/kernels/floor.d ./tensorflow/lite/micro/kernels/floor.o ./tensorflow/lite/micro/kernels/floor.su ./tensorflow/lite/micro/kernels/hard_swish.cyclo ./tensorflow/lite/micro/kernels/hard_swish.d ./tensorflow/lite/micro/kernels/hard_swish.o ./tensorflow/lite/micro/kernels/hard_swish.su ./tensorflow/lite/micro/kernels/l2norm.cyclo ./tensorflow/lite/micro/kernels/l2norm.d ./tensorflow/lite/micro/kernels/l2norm.o ./tensorflow/lite/micro/kernels/l2norm.su ./tensorflow/lite/micro/kernels/logical.cyclo ./tensorflow/lite/micro/kernels/logical.d ./tensorflow/lite/micro/kernels/logical.o ./tensorflow/lite/micro/kernels/logical.su ./tensorflow/lite/micro/kernels/logistic.cyclo ./tensorflow/lite/micro/kernels/logistic.d ./tensorflow/lite/micro/kernels/logistic.o ./tensorflow/lite/micro/kernels/logistic.su ./tensorflow/lite/micro/kernels/maximum_minimum.cyclo ./tensorflow/lite/micro/kernels/maximum_minimum.d ./tensorflow/lite/micro/kernels/maximum_minimum.o ./tensorflow/lite/micro/kernels/maximum_minimum.su ./tensorflow/lite/micro/kernels/neg.cyclo ./tensorflow/lite/micro/kernels/neg.d ./tensorflow/lite/micro/kernels/neg.o ./tensorflow/lite/micro/kernels/neg.su ./tensorflow/lite/micro/kernels/pack.cyclo ./tensorflow/lite/micro/kernels/pack.d ./tensorflow/lite/micro/kernels/pack.o ./tensorflow/lite/micro/kernels/pack.su ./tensorflow/lite/micro/kernels/pad.cyclo ./tensorflow/lite/micro/kernels/pad.d ./tensorflow/lite/micro/kernels/pad.o ./tensorflow/lite/micro/kernels/pad.su ./tensorflow/lite/micro/kernels/prelu.cyclo ./tensorflow/lite/micro/kernels/prelu.d ./tensorflow/lite/micro/kernels/prelu.o ./tensorflow/lite/micro/kernels/prelu.su ./tensorflow/lite/micro/kernels/quantize.cyclo ./tensorflow/lite/micro/kernels/quantize.d ./tensorflow/lite/micro/kernels/quantize.o ./tensorflow/lite/micro/kernels/quantize.su ./tensorflow/lite/micro/kernels/reduce.cyclo ./tensorflow/lite/micro/kernels/reduce.d ./tensorflow/lite/micro/kernels/reduce.o ./tensorflow/lite/micro/kernels/reduce.su ./tensorflow/lite/micro/kernels/reshape.cyclo ./tensorflow/lite/micro/kernels/reshape.d ./tensorflow/lite/micro/kernels/reshape.o ./tensorflow/lite/micro/kernels/reshape.su ./tensorflow/lite/micro/kernels/resize_nearest_neighbor.cyclo ./tensorflow/lite/micro/kernels/resize_nearest_neighbor.d ./tensorflow/lite/micro/kernels/resize_nearest_neighbor.o ./tensorflow/lite/micro/kernels/resize_nearest_neighbor.su ./tensorflow/lite/micro/kernels/round.cyclo ./tensorflow/lite/micro/kernels/round.d ./tensorflow/lite/micro/kernels/round.o ./tensorflow/lite/micro/kernels/round.su ./tensorflow/lite/micro/kernels/split.cyclo ./tensorflow/lite/micro/kernels/split.d ./tensorflow/lite/micro/kernels/split.o ./tensorflow/lite/micro/kernels/split.su ./tensorflow/lite/micro/kernels/strided_slice.cyclo ./tensorflow/lite/micro/kernels/strided_slice.d ./tensorflow/lite/micro/kernels/strided_slice.o ./tensorflow/lite/micro/kernels/strided_slice.su ./tensorflow/lite/micro/kernels/sub.cyclo ./tensorflow/lite/micro/kernels/sub.d ./tensorflow/lite/micro/kernels/sub.o ./tensorflow/lite/micro/kernels/sub.su ./tensorflow/lite/micro/kernels/svdf.cyclo ./tensorflow/lite/micro/kernels/svdf.d ./tensorflow/lite/micro/kernels/svdf.o ./tensorflow/lite/micro/kernels/svdf.su ./tensorflow/lite/micro/kernels/tanh.cyclo ./tensorflow/lite/micro/kernels/tanh.d ./tensorflow/lite/micro/kernels/tanh.o ./tensorflow/lite/micro/kernels/tanh.su ./tensorflow/lite/micro/kernels/transpose.cyclo ./tensorflow/lite/micro/kernels/transpose.d ./tensorflow/lite/micro/kernels/transpose.o ./tensorflow/lite/micro/kernels/transpose.su ./tensorflow/lite/micro/kernels/unpack.cyclo ./tensorflow/lite/micro/kernels/unpack.d ./tensorflow/lite/micro/kernels/unpack.o ./tensorflow/lite/micro/kernels/unpack.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-kernels

