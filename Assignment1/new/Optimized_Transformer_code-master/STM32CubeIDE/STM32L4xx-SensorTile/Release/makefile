################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include tensorflow/lite/micro/testing/subdir.mk
-include tensorflow/lite/micro/memory_planner/subdir.mk
-include tensorflow/lite/micro/kernels/cmsis-nn/subdir.mk
-include tensorflow/lite/micro/kernels/subdir.mk
-include tensorflow/lite/micro/benchmarks/subdir.mk
-include tensorflow/lite/micro/subdir.mk
-include tensorflow/lite/kernels/internal/subdir.mk
-include tensorflow/lite/kernels/subdir.mk
-include tensorflow/lite/core/api/subdir.mk
-include tensorflow/lite/c/subdir.mk
-include Middlewares/STM32_USB_Device_Library/subdir.mk
-include Drivers/STM32L4xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/SensorTile/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Doc/subdir.mk
-include AudioLoop/User/subdir.mk
-include AudioLoop/SW4STM32/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := STSW-STLKT01-AudioLoop
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
STSW-STLKT01-AudioLoop.elf \

MAP_FILES += \
STSW-STLKT01-AudioLoop.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
STSW-STLKT01-AudioLoop.list \


# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: STSW-STLKT01-AudioLoop.elf secondary-outputs

# Tool invocations
STSW-STLKT01-AudioLoop.elf STSW-STLKT01-AudioLoop.map: $(OBJS) $(USER_OBJS) ../LinkerScript.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "STSW-STLKT01-AudioLoop.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"../LinkerScript.ld" -Wl,-Map="STSW-STLKT01-AudioLoop.map" -Wl,--gc-sections -static -L"C:\Users\rashu\Downloads\STSW-STLKT01_V2.2.0\STSW-STLKT01_V2.2.0" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

STSW-STLKT01-AudioLoop.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "STSW-STLKT01-AudioLoop.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) STSW-STLKT01-AudioLoop.elf STSW-STLKT01-AudioLoop.list STSW-STLKT01-AudioLoop.map default.size.stdout
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O binary "STSW-STLKT01-AudioLoop.elf" "STSW-STLKT01-AudioLoop.bin"
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified post-build

-include ../makefile.targets
