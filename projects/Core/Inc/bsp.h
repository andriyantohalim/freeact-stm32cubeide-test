/*
 * bsp.h
 *
 *  Created on: Mar 17, 2025
 *      Author: andri
 */

#ifndef INC_BSP_H_
#define INC_BSP_H_

void BSP_init(void);
void BSP_start(void);
void BSP_led0_on(void);
void BSP_led0_off(void);
void BSP_led1_on(void);
void BSP_led1_off(void);

enum Signals {
    TIMEOUT_SIG = USER_SIG,
    BUTTON_PRESSED_SIG,
    BUTTON_RELEASED_SIG,
};

extern Active *AO_blinkyButton;

#endif /* INC_BSP_H_ */
