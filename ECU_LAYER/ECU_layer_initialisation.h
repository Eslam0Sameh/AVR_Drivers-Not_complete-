/* 
 * File:   ECU_layer_initialisation.h
 * Author: es-IslamSameh2025
 *
 * Created on November 4, 2023, 12:50 AM
 */
#ifndef ECU_LAYER_INITIALISATION_H
#define	ECU_LAYER_INITIALISATION_H
#include "../MCAL_LAYER/GPIO/gpio.h"
#include "LED/led.h"
#include "PUSH_BUTTON/push_button.h"
#include "DC_motor/DC_motor.h"
#include "Relay/Relay.h"
#include "seven_segment/seven_segment.h"
#include "Keypad/keypad.h"
#include "Character_Lcd/LCD.h"
void ECU_layer_initialize(void);
led_t led={
    .led_status=LED_OFF,
    .port_index=PORT_C,
    .pin_index=PIN0
};
#endif	/* ECU_LAYER_INITIALISATION_H */

