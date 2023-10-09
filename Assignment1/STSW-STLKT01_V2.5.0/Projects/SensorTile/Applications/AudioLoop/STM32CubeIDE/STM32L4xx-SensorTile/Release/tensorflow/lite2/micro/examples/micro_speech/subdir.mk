################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow/lite2/micro/examples/micro_speech/audio_provider.cc \
../tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock.cc \
../tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock_test.cc \
../tensorflow/lite2/micro/examples/micro_speech/audio_provider_test.cc \
../tensorflow/lite2/micro/examples/micro_speech/command_responder.cc \
../tensorflow/lite2/micro/examples/micro_speech/command_responder_test.cc \
../tensorflow/lite2/micro/examples/micro_speech/feature_provider.cc \
../tensorflow/lite2/micro/examples/micro_speech/feature_provider_mock_test.cc \
../tensorflow/lite2/micro/examples/micro_speech/feature_provider_test.cc \
../tensorflow/lite2/micro/examples/micro_speech/main.cc \
../tensorflow/lite2/micro/examples/micro_speech/main_functions.cc \
../tensorflow/lite2/micro/examples/micro_speech/micro_speech_test.cc \
../tensorflow/lite2/micro/examples/micro_speech/recognize_commands.cc \
../tensorflow/lite2/micro/examples/micro_speech/recognize_commands_test.cc 

CC_DEPS += \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider.d \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock.d \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock_test.d \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider_test.d \
./tensorflow/lite2/micro/examples/micro_speech/command_responder.d \
./tensorflow/lite2/micro/examples/micro_speech/command_responder_test.d \
./tensorflow/lite2/micro/examples/micro_speech/feature_provider.d \
./tensorflow/lite2/micro/examples/micro_speech/feature_provider_mock_test.d \
./tensorflow/lite2/micro/examples/micro_speech/feature_provider_test.d \
./tensorflow/lite2/micro/examples/micro_speech/main.d \
./tensorflow/lite2/micro/examples/micro_speech/main_functions.d \
./tensorflow/lite2/micro/examples/micro_speech/micro_speech_test.d \
./tensorflow/lite2/micro/examples/micro_speech/recognize_commands.d \
./tensorflow/lite2/micro/examples/micro_speech/recognize_commands_test.d 

OBJS += \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider.o \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock.o \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock_test.o \
./tensorflow/lite2/micro/examples/micro_speech/audio_provider_test.o \
./tensorflow/lite2/micro/examples/micro_speech/command_responder.o \
./tensorflow/lite2/micro/examples/micro_speech/command_responder_test.o \
./tensorflow/lite2/micro/examples/micro_speech/feature_provider.o \
./tensorflow/lite2/micro/examples/micro_speech/feature_provider_mock_test.o \
./tensorflow/lite2/micro/examples/micro_speech/feature_provider_test.o \
./tensorflow/lite2/micro/examples/micro_speech/main.o \
./tensorflow/lite2/micro/examples/micro_speech/main_functions.o \
./tensorflow/lite2/micro/examples/micro_speech/micro_speech_test.o \
./tensorflow/lite2/micro/examples/micro_speech/recognize_commands.o \
./tensorflow/lite2/micro/examples/micro_speech/recognize_commands_test.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite2/micro/examples/micro_speech/%.o tensorflow/lite2/micro/examples/micro_speech/%.su tensorflow/lite2/micro/examples/micro_speech/%.cyclo: ../tensorflow/lite2/micro/examples/micro_speech/%.cc tensorflow/lite2/micro/examples/micro_speech/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/micro/testing -I/Users/priyansh/Git-Repos/COL788/Assignment1/STSW-STLKT01_V2.5.0/Projects/SensorTile/Applications/AudioLoop/STM32CubeIDE/STM32L4xx-SensorTile/tensorflow/lite/c -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite2-2f-micro-2f-examples-2f-micro_speech

clean-tensorflow-2f-lite2-2f-micro-2f-examples-2f-micro_speech:
	-$(RM) ./tensorflow/lite2/micro/examples/micro_speech/audio_provider.cyclo ./tensorflow/lite2/micro/examples/micro_speech/audio_provider.d ./tensorflow/lite2/micro/examples/micro_speech/audio_provider.o ./tensorflow/lite2/micro/examples/micro_speech/audio_provider.su ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock.cyclo ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock.d ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock.o ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock.su ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock_test.cyclo ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock_test.d ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock_test.o ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_mock_test.su ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_test.cyclo ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_test.d ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_test.o ./tensorflow/lite2/micro/examples/micro_speech/audio_provider_test.su ./tensorflow/lite2/micro/examples/micro_speech/command_responder.cyclo ./tensorflow/lite2/micro/examples/micro_speech/command_responder.d ./tensorflow/lite2/micro/examples/micro_speech/command_responder.o ./tensorflow/lite2/micro/examples/micro_speech/command_responder.su ./tensorflow/lite2/micro/examples/micro_speech/command_responder_test.cyclo ./tensorflow/lite2/micro/examples/micro_speech/command_responder_test.d ./tensorflow/lite2/micro/examples/micro_speech/command_responder_test.o ./tensorflow/lite2/micro/examples/micro_speech/command_responder_test.su ./tensorflow/lite2/micro/examples/micro_speech/feature_provider.cyclo ./tensorflow/lite2/micro/examples/micro_speech/feature_provider.d ./tensorflow/lite2/micro/examples/micro_speech/feature_provider.o ./tensorflow/lite2/micro/examples/micro_speech/feature_provider.su ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_mock_test.cyclo ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_mock_test.d ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_mock_test.o ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_mock_test.su ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_test.cyclo ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_test.d ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_test.o ./tensorflow/lite2/micro/examples/micro_speech/feature_provider_test.su ./tensorflow/lite2/micro/examples/micro_speech/main.cyclo ./tensorflow/lite2/micro/examples/micro_speech/main.d ./tensorflow/lite2/micro/examples/micro_speech/main.o ./tensorflow/lite2/micro/examples/micro_speech/main.su ./tensorflow/lite2/micro/examples/micro_speech/main_functions.cyclo ./tensorflow/lite2/micro/examples/micro_speech/main_functions.d ./tensorflow/lite2/micro/examples/micro_speech/main_functions.o ./tensorflow/lite2/micro/examples/micro_speech/main_functions.su ./tensorflow/lite2/micro/examples/micro_speech/micro_speech_test.cyclo ./tensorflow/lite2/micro/examples/micro_speech/micro_speech_test.d ./tensorflow/lite2/micro/examples/micro_speech/micro_speech_test.o ./tensorflow/lite2/micro/examples/micro_speech/micro_speech_test.su ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands.cyclo ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands.d ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands.o ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands.su ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands_test.cyclo ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands_test.d ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands_test.o ./tensorflow/lite2/micro/examples/micro_speech/recognize_commands_test.su

.PHONY: clean-tensorflow-2f-lite2-2f-micro-2f-examples-2f-micro_speech

