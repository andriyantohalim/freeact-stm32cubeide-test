################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/list.c \
C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/queue.c \
C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/tasks.c \
C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/timers.c 

OBJS += \
./frameworks/FreeRTOS/list.o \
./frameworks/FreeRTOS/queue.o \
./frameworks/FreeRTOS/tasks.o \
./frameworks/FreeRTOS/timers.o 

C_DEPS += \
./frameworks/FreeRTOS/list.d \
./frameworks/FreeRTOS/queue.d \
./frameworks/FreeRTOS/tasks.d \
./frameworks/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
frameworks/FreeRTOS/list.o: C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/list.c frameworks/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/inc" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/include" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
frameworks/FreeRTOS/queue.o: C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/queue.c frameworks/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/inc" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/include" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
frameworks/FreeRTOS/tasks.o: C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/tasks.c frameworks/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/inc" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/include" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
frameworks/FreeRTOS/timers.o: C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/timers.c frameworks/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_NUCLEO_64 -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/inc" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/include" -I"C:/Users/andri/STM32CubeIDE/workspace_1.17.0/freeact-stm32cubeide-test/frameworks/FreeAct/3rd_party/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/BSP/STM32H7xx_Nucleo -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-frameworks-2f-FreeRTOS

clean-frameworks-2f-FreeRTOS:
	-$(RM) ./frameworks/FreeRTOS/list.cyclo ./frameworks/FreeRTOS/list.d ./frameworks/FreeRTOS/list.o ./frameworks/FreeRTOS/list.su ./frameworks/FreeRTOS/queue.cyclo ./frameworks/FreeRTOS/queue.d ./frameworks/FreeRTOS/queue.o ./frameworks/FreeRTOS/queue.su ./frameworks/FreeRTOS/tasks.cyclo ./frameworks/FreeRTOS/tasks.d ./frameworks/FreeRTOS/tasks.o ./frameworks/FreeRTOS/tasks.su ./frameworks/FreeRTOS/timers.cyclo ./frameworks/FreeRTOS/timers.d ./frameworks/FreeRTOS/timers.o ./frameworks/FreeRTOS/timers.su

.PHONY: clean-frameworks-2f-FreeRTOS

