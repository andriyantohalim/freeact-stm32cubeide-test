/*
 * FreeRTOSConfig.h
 *
 *  Created on: Mar 17, 2025
 *      Author: andri
 */

#ifndef INC_FREERTOSCONFIG_H_
#define INC_FREERTOSCONFIG_H_

#define configUSE_PREEMPTION            1
#define configUSE_IDLE_HOOK             1
#define configUSE_TICK_HOOK             1
#define configCPU_CLOCK_HZ              ( SystemCoreClock )
#define configTICK_RATE_HZ              ( ( TickType_t ) 1000 )
#define configMINIMAL_STACK_SIZE        ( ( unsigned short ) 256 )
#define configTOTAL_HEAP_SIZE           ( ( size_t ) ( 0 ) )
#define configMAX_TASK_NAME_LEN         ( 8 )
#define configUSE_TRACE_FACILITY        0
#define configUSE_16_BIT_TICKS          0
#define configIDLE_SHOULD_YIELD         0
#define configUSE_CO_ROUTINES           0
#define configUSE_MUTEXES               1
#define configUSE_RECURSIVE_MUTEXES     1
#define configCHECK_FOR_STACK_OVERFLOW  2
#define configUSE_QUEUE_SETS            0
#define configUSE_COUNTING_SEMAPHORES   1

#define configMAX_PRIORITIES            ( 32UL )
#define configMAX_CO_ROUTINE_PRIORITIES ( 2 )
#define configQUEUE_REGISTRY_SIZE       10
#define configSUPPORT_DYNAMIC_ALLOCATION 0
#define configSUPPORT_STATIC_ALLOCATION  1

/* Timer related defines. */
#define configUSE_TIMERS                1
#define configTIMER_TASK_PRIORITY       2
#define configTIMER_QUEUE_LENGTH        20
#define configTIMER_TASK_STACK_DEPTH    ( configMINIMAL_STACK_SIZE * 2 )

/* Set the following definitions to 1 to include the API function, or zero
to exclude the API function. */

#define INCLUDE_vTaskPrioritySet        0
#define INCLUDE_uxTaskPriorityGet       0
#define INCLUDE_vTaskDelete             1
#define INCLUDE_vTaskCleanUpResources   0
#define INCLUDE_vTaskSuspend            0
#define INCLUDE_vTaskDelayUntil         0
#define INCLUDE_vTaskDelay              1
#define INCLUDE_uxTaskGetStackHighWaterMark    1
#define INCLUDE_xTaskGetSchedulerState         1
#define INCLUDE_xTimerGetTimerDaemonTaskHandle 0
#define INCLUDE_xTaskGetIdleTaskHandle         0
#define INCLUDE_xSemaphoreGetMutexHolder       1
#define INCLUDE_eTaskGetState                  1
#define INCLUDE_xTimerPendFunctionCall         0

#define configKERNEL_INTERRUPT_PRIORITY         ( 7 << 5 )    /* Priority 7, or 255 as only the top three bits are implemented.  This is the lowest priority. */
/* !!!! configMAX_SYSCALL_INTERRUPT_PRIORITY must not be set to zero !!!!
See http://www.FreeRTOS.org/RTOS-Cortex-M3-M4.html. */
#define configMAX_SYSCALL_INTERRUPT_PRIORITY     ( 5 << 5 )  /* Priority 5, or 160 as only the top three bits are implemented. */

/* Use the Cortex-M3 optimised task selection rather than the generic C code
version. */
#define configUSE_PORT_OPTIMISED_TASK_SELECTION 1

/* Prevent the inclusion of items the assembler will not understand in assembly files. */
#ifndef __IAR_SYSTEMS_ASM__
    #define configASSERT( x ) if( ( x ) == 0 ) assert_failed( __FILE__, __LINE__ );

    void assert_failed(char const * const module, int location);
    extern uint32_t SystemCoreClock;
#endif

/* Map the FreeRTOS port interrupt handlers to their CMSIS standard names. */
#define vPortSVCHandler SVC_Handler
#define xPortPendSVHandler PendSV_Handler
#define xPortSysTickHandler SysTick_Handler

#endif /* INC_FREERTOSCONFIG_H_ */
