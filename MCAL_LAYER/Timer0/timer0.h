/* 
 * File:   timer0.h
 * Author: IslamSameh2025
 *
 * Created on July 11, 2024, 8:16 PM
 */

#ifndef TIMER0_H
#define	TIMER0_H
#include "../GPIO/gpio.h"
#include "../Interrupt/Interrupt_external.h"
#include "../Interrupt/Interrupt_internal.h"
#include "../Interrupt/Interrupt_declaration.h"

/*********************MACRO DECLARATIONS****************/
#define TIMER0_8BIT_MODE         1
#define TIMER0_16BIT_MODE        0
#define TIMER0_COUNTER_MODE      1
#define TIMER0_TIMER_MODE        0
#define TIMER0_PRESCALER_ACTIVATED   1
#define TIMER0_PRESCALER_DEACTIVATED 0
#define TIMER0_RISSIGN_EDGE          0
#define TIMER0_FALLING_EDGE          1
/*********************MACRO FUNCTIONS DECLARATION*******/
#define TIMER0_ENABLE()                         (T0CONbits.TMR0ON=1)
#define TIMER0_DISABLE()                        (T0CONbits.TMR0ON=0)
#define TIMER0_8BIT_SELECT()                    (T0CONbits.T08BIT=1)  
#define TIMER0_16BIT_SELECT()                   (T0CONbits.T08BIT=0)  
#define TIMER0_COUNTER_MODE_SET()                   (T0CONbits.T0CS=1)  
#define TIMER0_TIMER_MODE_SET()                     (T0CONbits.T0CS=0)  
#define TIMER0_RISSIGN_EDGE_SELECT()            (T0CONbits.T0SE=0)  
#define TIMER0_FALLING_EDGE_SELECT()            (T0CONbits.T0SE=1)
#define TIMER0_PRESCALER_ACTIVATE()             (T0CONbits.PSA=0)
#define TIMER0_PRESCALER_DEACTIVATE()           (T0CONbits.PSA=1)
#define TIMER0_PRESCALER_SET_VALUE(x)           (T0CONbits.T0PS=x)
#define TIMER0_LOWER_BYTE_WRITE(x)              (TMR0L=x)
#define TIMER0_LOWER_BYTE_READ()                (TMR0L)
#define TIMER0_HIGHER_BYTE_WRITE(x)             (TMR0H=x)
#define TIMER0_HIGHER_BYTE_READ()               (TMR0H)
/*********************DATA TYPE DECLARATION*************/
typedef enum{
    TIMER0_PRESCALER_DIV_2=0,
    TIMER0_PRESCALER_DIV_4,
    TIMER0_PRESCALER_DIV_8,
    TIMER0_PRESCALER_DIV_16,
    TIMER0_PRESCALER_DIV_32,
    TIMER0_PRESCALER_DIV_64,
    TIMER0_PRESCALER_DIV_128,
    TIMER0_PRESCALER_DIV_256,
}TIMER0_PRESCALER_t;

typedef struct {
#if TIMER0_INTERRUPT_FEATURE_ENABLE==ACTIVATED
    InterruptHandler interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
    interrupt_priority_cfg priority;
#endif
#endif
    TIMER0_PRESCALER_t prescaller_value;
    uint8 timer0_8_16_BIT_mode :1; //@ref TIMER0_8BIT_MODE & TIMER0_16BIT_MODE
    uint8 timer0_counter_timer_mode :1; //@ref TIMER0_COUNTER_MODE & TIMER0_TIMER_MODE
    uint8 timer0_prescaler_activation:1; //@ref TIMER0_PRESCALER_ACTIVATE & TIMER0_PRESCALER_DEACTIVATE
    uint8 timer0_edge_select:1;//@ref TIMER0_RISSIGN_EDGE & TIMER0_FALLING_EDGE
    uint8 timer0_reserved:4;
    uint16 timer0_data;
            

}TIMER0_CONF_t;
/********************SOFTWARE INTERFACES DECLARATION****/
STD_RETURN TIMER0_Init(const TIMER0_CONF_t *timer0);
STD_RETURN TIMER0_DeInit(const TIMER0_CONF_t *timer0);
STD_RETURN TIMER0_WRITE(uint16 data);
STD_RETURN TIMER0_READ(uint16 * data);
void TIMER0_INTERRUPT_ISR(void);
#endif	/* TIMER0_H */

