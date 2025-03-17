/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "FreeAct.h" /* Free Active Object interface */
#include "bsp.h"
#include <stdbool.h>

/* The BlinkyButton AO ===========================================================*/
typedef struct {
    Active super; /* inherit Active base class */
    /* add private data for the AO... */
    TimeEvent te;
    bool isLedOn;
} BlinkyButton;

/* Function Prototype ============================================================*/
void BlinkyButton_ctor(BlinkyButton * const me);

static void BlinkyButton_dispatch(BlinkyButton * const me, Event const * const e) {
    switch (e->sig) {
        case INIT_SIG: /* intentionally fall through... */
        case TIMEOUT_SIG: {
            if (!me->isLedOn) { /* LED not on */
                BSP_led0_on();
                me->isLedOn = true;
                TimeEvent_arm(&me->te, (200 / portTICK_RATE_MS));
            }
            else {  /* LED is on */
                BSP_led0_off();
                me->isLedOn = false;
                TimeEvent_arm(&me->te, (800 / portTICK_RATE_MS));
            }
            break;
        }
        case BUTTON_PRESSED_SIG: {
            BSP_led1_on();
            break;
        }
        case BUTTON_RELEASED_SIG: {
            BSP_led1_off();
            break;
        }
        default: {
            break;
        }
    }
}
void BlinkyButton_ctor(BlinkyButton * const me) {
    Active_ctor(&me->super, (DispatchHandler)&BlinkyButton_dispatch);
    me->te.type = TYPE_ONE_SHOT;
    TimeEvent_ctor(&me->te, TIMEOUT_SIG, &me->super);
    me->isLedOn = false;
}
static StackType_t blinkyButton_stack[configMINIMAL_STACK_SIZE]; /* task stack */
static Event *blinkyButton_queue[10];
static BlinkyButton blinkyButton;
Active *AO_blinkyButton = &blinkyButton.super;

/* the main function =======================================================*/
int main() {

    BSP_init(); /* initialize the BSP */

    /* create and start the BlinkyButton AO */
    BlinkyButton_ctor(&blinkyButton);
    Active_start(AO_blinkyButton,
                 1U,
                 blinkyButton_queue,
                 sizeof(blinkyButton_queue)/sizeof(blinkyButton_queue[0]),
                 blinkyButton_stack,
                 sizeof(blinkyButton_stack),
                 0U);

    BSP_start(); /* configure and start interrupts */

    vTaskStartScheduler(); /* start the FreeRTOS scheduler... */
    return 0; /* NOTE: the scheduler does NOT return */
}
