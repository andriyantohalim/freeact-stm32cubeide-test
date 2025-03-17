################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/src/FreeAct.c 

OBJS += \
./frameworks/FreeAct/src/FreeAct.o 

C_DEPS += \
./frameworks/FreeAct/src/FreeAct.d 


# Each subdirectory must supply rules for building sources it contributes
frameworks/FreeAct/src/FreeAct.o: C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/src/FreeAct.c frameworks/FreeAct/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/inc" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/include" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-frameworks-2f-FreeAct-2f-src

clean-frameworks-2f-FreeAct-2f-src:
	-$(RM) ./frameworks/FreeAct/src/FreeAct.cyclo ./frameworks/FreeAct/src/FreeAct.d ./frameworks/FreeAct/src/FreeAct.o ./frameworks/FreeAct/src/FreeAct.su

.PHONY: clean-frameworks-2f-FreeAct-2f-src

