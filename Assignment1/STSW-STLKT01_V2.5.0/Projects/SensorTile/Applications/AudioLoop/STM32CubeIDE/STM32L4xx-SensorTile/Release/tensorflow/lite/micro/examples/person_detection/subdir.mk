################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite/micro/examples/person_detection/detection_responder.cc \
../tensorflow/lite/micro/examples/person_detection/detection_responder_test.cc \
../tensorflow/lite/micro/examples/person_detection/image_provider.cc \
../tensorflow/lite/micro/examples/person_detection/image_provider_test.cc \
../tensorflow/lite/micro/examples/person_detection/main.cc \
../tensorflow/lite/micro/examples/person_detection/main_functions.cc \
../tensorflow/lite/micro/examples/person_detection/model_settings.cc \
../tensorflow/lite/micro/examples/person_detection/person_detection_test.cc 

CC_DEPS += \
./tensorflow/lite/micro/examples/person_detection/detection_responder.d \
./tensorflow/lite/micro/examples/person_detection/detection_responder_test.d \
./tensorflow/lite/micro/examples/person_detection/image_provider.d \
./tensorflow/lite/micro/examples/person_detection/image_provider_test.d \
./tensorflow/lite/micro/examples/person_detection/main.d \
./tensorflow/lite/micro/examples/person_detection/main_functions.d \
./tensorflow/lite/micro/examples/person_detection/model_settings.d \
./tensorflow/lite/micro/examples/person_detection/person_detection_test.d 

OBJS += \
./tensorflow/lite/micro/examples/person_detection/detection_responder.o \
./tensorflow/lite/micro/examples/person_detection/detection_responder_test.o \
./tensorflow/lite/micro/examples/person_detection/image_provider.o \
./tensorflow/lite/micro/examples/person_detection/image_provider_test.o \
./tensorflow/lite/micro/examples/person_detection/main.o \
./tensorflow/lite/micro/examples/person_detection/main_functions.o \
./tensorflow/lite/micro/examples/person_detection/model_settings.o \
./tensorflow/lite/micro/examples/person_detection/person_detection_test.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/micro/examples/person_detection/%.o tensorflow/lite/micro/examples/person_detection/%.su tensorflow/lite/micro/examples/person_detection/%.cyclo: ../tensorflow/lite/micro/examples/person_detection/%.cc tensorflow/lite/micro/examples/person_detection/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-micro-2f-examples-2f-person_detection

clean-tensorflow-2f-lite-2f-micro-2f-examples-2f-person_detection:
	-$(RM) ./tensorflow/lite/micro/examples/person_detection/detection_responder.cyclo ./tensorflow/lite/micro/examples/person_detection/detection_responder.d ./tensorflow/lite/micro/examples/person_detection/detection_responder.o ./tensorflow/lite/micro/examples/person_detection/detection_responder.su ./tensorflow/lite/micro/examples/person_detection/detection_responder_test.cyclo ./tensorflow/lite/micro/examples/person_detection/detection_responder_test.d ./tensorflow/lite/micro/examples/person_detection/detection_responder_test.o ./tensorflow/lite/micro/examples/person_detection/detection_responder_test.su ./tensorflow/lite/micro/examples/person_detection/image_provider.cyclo ./tensorflow/lite/micro/examples/person_detection/image_provider.d ./tensorflow/lite/micro/examples/person_detection/image_provider.o ./tensorflow/lite/micro/examples/person_detection/image_provider.su ./tensorflow/lite/micro/examples/person_detection/image_provider_test.cyclo ./tensorflow/lite/micro/examples/person_detection/image_provider_test.d ./tensorflow/lite/micro/examples/person_detection/image_provider_test.o ./tensorflow/lite/micro/examples/person_detection/image_provider_test.su ./tensorflow/lite/micro/examples/person_detection/main.cyclo ./tensorflow/lite/micro/examples/person_detection/main.d ./tensorflow/lite/micro/examples/person_detection/main.o ./tensorflow/lite/micro/examples/person_detection/main.su ./tensorflow/lite/micro/examples/person_detection/main_functions.cyclo ./tensorflow/lite/micro/examples/person_detection/main_functions.d ./tensorflow/lite/micro/examples/person_detection/main_functions.o ./tensorflow/lite/micro/examples/person_detection/main_functions.su ./tensorflow/lite/micro/examples/person_detection/model_settings.cyclo ./tensorflow/lite/micro/examples/person_detection/model_settings.d ./tensorflow/lite/micro/examples/person_detection/model_settings.o ./tensorflow/lite/micro/examples/person_detection/model_settings.su ./tensorflow/lite/micro/examples/person_detection/person_detection_test.cyclo ./tensorflow/lite/micro/examples/person_detection/person_detection_test.d ./tensorflow/lite/micro/examples/person_detection/person_detection_test.o ./tensorflow/lite/micro/examples/person_detection/person_detection_test.su

.PHONY: clean-tensorflow-2f-lite-2f-micro-2f-examples-2f-person_detection

