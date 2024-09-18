/* 
 * File:   timer3.h
 * Author: IslamSameh2025
 *
 * Created on July 15, 2024, 7:26 PM
 */

#ifndef TIMER3_H
#define	TIMER3_H

#include "../GPIO/gpio.h"
#include "../Interrupt/Interrupt_external.h"
#include "../Interrupt/Interrupt_internal.h"
#include "../Interrupt/Interrupt_declaration.h"
#include "../Timer1/timer1.h"
/*********************MACRO DECLARATIONS****************/
#define TIMER3_COUNTER_MODE          1
#define TIMER3_TIMER_MODE            0
#define TIMER3_COUNTER_SYN           0
#define TIMER3_COUNTER_ASYN          1
/*********************MACRO FUNCTIONS DECLARATION*******/
#define TIMER3_ENABLE()                                (T3CONbits.TMR3ON=1)
#define TIMER3_DISABLE()                               (T3CONbits.TMR3ON=0) 

#define TIMER3_COUNTER_MODE_SET()                      (T3CONbits.TMR3CS=1)  
#define TIMER3_TIMER_MODE_SET()                        (T3CONbits.TMR3CS=0) 
#define TIMER3_SYN_SET()                               (T3CONbits.T3SYNC=0) 
#define TIMER3_ASYN_SET()                              (T3CONbits.T3SYNC=1) 
#define TIMER3_PRESCALER_SET_VALUE(x)                 (T3CONbits.T3CKPS=x)

/* THE FOLLOWING TWO MACROS IS OFTEN NOT USED SUCH WE DEAL AS TWO OPERATION
 * 8 BIT OPERATIONS (LIKE TIMER0) AND NOT ASKING THE USER TO ENTER THE TYPE
 * SUCH THIS NOT AFFECTING ANY THING
 * notice also that using the 2 operations of 8 bit is correct in case
 * of choosing the 16 bit operation so we use 8 bit operation
 * avoiding the errors
 */
#define TIMER3_WRITE_READ_IN_ONE_16_BIT_OPERATION()   (T3CONbits.T3RD16=1)
#define TIMER3_WRITE_READ_IN_TWO_8_BIT_OPERATIONS()   (T3CONbits.T3RD16=0)
#define TIMER3_LOWER_BYTE_WRITE(x)                    (TMR3L=x)
#define TIMER3_LOWER_BYTE_READ()                      (TMR3L)
#define TIMER3_HIGHER_BYTE_WRITE(x)                   (TMR3H=x)
#define TIMER3_HIGHER_BYTE_READ()                     (TMR3H)
/*********************DATA TYPE DECLARATION*************/
typedef enum{
    TIMER3_PRESCALER_DIV_1=0,
    TIMER3_PRESCALER_DIV_2,
    TIMER3_PRESCALER_DIV_4,
    TIMER3_PRESCALER_DIV_8
}TIMER3_PRESCALER_t;

typedef struct {
#if TIMER3_INTERRUPT_FEATURE_ENABLE==ACTIVATED
    InterruptHandler interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
    interrupt_priority_cfg priority;
#endif
#endif
    TIMER3_PRESCALER_t prescaller_value;
    uint16 timer3_data;
    uint8 timer3_counter_timer_mode :1; //@ref TIMER3_COUNTER_MODE & TIMER3_TIMER_MODE
    uint8 timer3_counter_syn_asyn_mode:1;//@ref  TIMER3_COUNTER_SYN & TIMER3_COUNTER_ASYN
    uint8 timer1_oscillator_activation:1;//@ref TIMER1_OSCILLATOR_IS_ENABLE &TIMER1_OSCILLATOR_IS_DISABLE
    uint8 timer3_reserved:5;
}TIMER3_CONF_t;
/********************SOFTWARE INTERFACES DECLARATION****/
STD_RETURN TIMER3_Init(const TIMER3_CONF_t *timer3);
STD_RETURN TIMER3_DeInit(const TIMER3_CONF_t *timer3);
STD_RETURN TIMER3_WRITE(uint16 data);
STD_RETURN TIMER3_READ(uint16 * data);
void TIMER3_INTERRUPT_ISR(void);
#endif	/* TIMER3_H */

