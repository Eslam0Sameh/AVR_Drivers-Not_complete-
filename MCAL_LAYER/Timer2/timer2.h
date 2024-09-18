/* 
 * File:   timer2.h
 * Author: es-IslamSameh2025
 *
 * Created on July 15, 2024, 7:26 PM
 */

#ifndef TIMER2_H
#define	TIMER2_H
#include "../GPIO/gpio.h"
#include "../Interrupt/Interrupt_external.h"
#include "../Interrupt/Interrupt_internal.h"
#include "../Interrupt/Interrupt_declaration.h"

/*********************MACRO DECLARATIONS****************/
/*********************MACRO FUNCTIONS DECLARATION*******/
#define TIMER2_ENABLE()                            (T2CONbits.TMR2ON=1)
#define TIMER2_DISABLE()                           (T2CONbits.TMR2ON=0)
#define TIMER2_PRESCALER_SET_VALUE(x)              (T2CONbits.T2CKPS=x)
#define TIMER2_POSTSCALER_SET_VALUE(x)             (T2CONbits.TOUTPS=x)
#define TIMER2_BYTE_WRITE(x)                       (TMR2=x)
#define TIMER2_BYTE_READ()                         (TMR2)
/*********************DATA TYPE DECLARATION*************/
typedef enum{
    TIMER2_PRESCALER_DIV_1=0,
    TIMER2_PRESCALER_DIV_4,
    TIMER2_PRESCALER_DIV_16
}TIMER2_PRESCALER_t;
typedef enum{
    TIMER2_POSTSCALER_DIV_1=0,
    TIMER2_POSTSCALER_DIV_2,
    TIMER2_POSTSCALER_DIV_3,
    TIMER2_POSTSCALER_DIV_4,
    TIMER2_POSTSCALER_DIV_5,
    TIMER2_POSTSCALER_DIV_6,
    TIMER2_POSTSCALER_DIV_7,
    TIMER2_POSTSCALER_DIV_8,
    TIMER2_POSTSCALER_DIV_9,
    TIMER2_POSTSCALER_DIV_10,
    TIMER2_POSTSCALER_DIV_11,
    TIMER2_POSTSCALER_DIV_12,
    TIMER2_POSTSCALER_DIV_13,
    TIMER2_POSTSCALER_DIV_14,
    TIMER2_POSTSCALER_DIV_15,
    TIMER2_POSTSCALER_DIV_16,
}TIMER2_POSTSCALER_t;

typedef struct {
#if TIMER2_INTERRUPT_FEATURE_ENABLE==ACTIVATED
    InterruptHandler interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
    interrupt_priority_cfg priority;
#endif
#endif
    uint8 timer2_data;
    TIMER2_PRESCALER_t   prescaller_value;
    TIMER2_POSTSCALER_t postscaller_value;
}TIMER2_CONF_t;
/********************SOFTWARE INTERFACES DECLARATION****/
STD_RETURN TIMER2_Init(const TIMER2_CONF_t *timer2);
STD_RETURN TIMER2_DeInit(const TIMER2_CONF_t *timer2);
STD_RETURN TIMER2_WRITE(uint8 data);
STD_RETURN TIMER2_READ(uint8 * data);

void TIMER2_INTERRUPT_ISR(void);


#endif	/* TIMER2_H */

