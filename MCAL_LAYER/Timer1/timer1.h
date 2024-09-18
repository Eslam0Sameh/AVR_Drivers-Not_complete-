/* 
 * File:   timer1.h
 * Author: IslamSameh2025
 *
 * Created on July 15, 2024, 1:33 PM
 */

#ifndef TIMER1_H
#define	TIMER1_H
#include "../GPIO/gpio.h"
#include "../Interrupt/Interrupt_external.h"
#include "../Interrupt/Interrupt_internal.h"
#include "../Interrupt/Interrupt_declaration.h"

/*********************MACRO DECLARATIONS****************/
#define TIMER1_COUNTER_MODE          1
#define TIMER1_TIMER_MODE            0
#define TIMER1_COUNTER_SYN           0
#define TIMER1_COUNTER_ASYN          1
#define TIMER1_OSCILLATOR_IS_ENABLE  1
#define TIMER1_OSCILLATOR_IS_DISABLE 0
/*********************MACRO FUNCTIONS DECLARATION*******/
#define TIMER1_ENABLE()                                (T1CONbits.TMR1ON=1)
#define TIMER1_DISABLE()                               (T1CONbits.TMR1ON=0) 

#define TIMER1_COUNTER_MODE_SET()                      (T1CONbits.TMR1CS=1)  
#define TIMER1_TIMER_MODE_SET()                        (T1CONbits.TMR1CS=0) 
#define TIMER1_SYN_SET()                               (T1CONbits.T1SYNC=0) 
#define TIMER1_ASYN_SET()                              (T1CONbits.T1SYNC=1) 

#define TIMER1_PRESCALER_SET_VALUE(x)                 (T1CONbits.T1CKPS=x)
#define TIMER1_OSCILLATOR_CLOCK_SOURCE_STATUS()       (T1CONbits.T1RUN)
/* THE FOLLOWING TWO MACROS IS OFTEN NOT USED SUCH WE DEAL AS TWO OPERATION
 * 8 BIT OPERATIONS (LIKE TIMER0) AND NOT ASKING THE USER TO ENTER THE TYPE
 * SUCH THIS NOT AFFECTING ANY THING
 * notice also that using the 2 operations of 8 bit is correct in case
 * of choosing the 16 bit operation so we use 8 bit operation
 * avoiding the errors
 */
#define TIMER1_WRITE_READ_IN_ONE_16_BIT_OPERATION()   (T1CONbits.T1RD16=1)
#define TIMER1_WRITE_READ_IN_TWO_8_BIT_OPERATIONS()   (T1CONbits.T1RD16=0)
#define TIMER1_LOWER_BYTE_WRITE(x)                    (TMR1L=x)
#define TIMER1_LOWER_BYTE_READ()                      (TMR1L)
#define TIMER1_HIGHER_BYTE_WRITE(x)                   (TMR1H=x)
#define TIMER1_HIGHER_BYTE_READ()                     (TMR1H)
#define TIMER1_OSCILLATOR_ENABLE()                    (T1CONbits.SOSCEN=1)
#define TIMER1_OSCILLATOR_DISABLE()                   (T1CONbits.SOSCEN=0)
/*********************DATA TYPE DECLARATION*************/
typedef enum{
    TIMER1_PRESCALER_DIV_1=0,
    TIMER1_PRESCALER_DIV_2,
    TIMER1_PRESCALER_DIV_4,
    TIMER1_PRESCALER_DIV_8
}TIMER1_PRESCALER_t;

typedef struct {
#if TIMER1_INTERRUPT_FEATURE_ENABLE==ACTIVATED
    InterruptHandler interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
    interrupt_priority_cfg priority;
#endif
#endif
    TIMER1_PRESCALER_t prescaller_value;
    uint16 timer1_data;
    uint8 timer1_counter_timer_mode :1; //@ref TIMER1_COUNTER_MODE & TIMER1_TIMER_MODE
    uint8 timer1_counter_syn_asyn_mode:1;//@ref  TIMER1_COUNTER_SYN & TIMER1_COUNTER_ASYN
    uint8 timer1_oscillator_activation:1;//@ref TIMER1_OSCILLATOR_IS_ENABLE &TIMER1_OSCILLATOR_IS_DISABLE
    uint8 timer1_reserved:5;
}TIMER1_CONF_t;
/********************SOFTWARE INTERFACES DECLARATION****/
STD_RETURN TIMER1_Init(const TIMER1_CONF_t *timer1);
STD_RETURN TIMER1_DeInit(const TIMER1_CONF_t *timer1);
STD_RETURN TIMER1_WRITE(uint16 data);
STD_RETURN TIMER1_READ(uint16 * data);
void TIMER1_INTERRUPT_ISR(void);



#endif	/* TIMER1_H */

