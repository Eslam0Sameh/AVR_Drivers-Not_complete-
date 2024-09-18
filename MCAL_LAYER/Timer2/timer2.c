/* 
 * File:   timer2.c
 * Author: es-IslamSameh2025
 *
 * Created on July 15, 2024, 7:26 PM
 */

#include "timer2.h"
#if TIMER2_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        static InterruptHandler TIMER2_InterruptHandler =NULL;
#endif
uint8 TIMER2_preload_value_default=0;
STD_RETURN TIMER2_Init(const TIMER2_CONF_t *timer2)
{
    STD_RETURN ret =RETURN_OK;
    if(NULL==timer2)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER2_DISABLE();

#if TIMER2_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER2_INTERRUPT_FLAG_CLEAR();
        TIMER2_INTERRUPT_ENABLE();
        TIMER2_InterruptHandler=timer2->interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
        INTERRUPT_PRIORITY_FEATURE_ACTIVATE();
        if((timer2->priority)==INTERRUPT_HIGH_PRIORITY)
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        TIMER2_INTERRUPT_HIGH_PRIORITY();
        }
        else
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        INTERRUPT_LOW_PRIORITY_ACTIVATE();
        TIMER2_INTERRUPT_LOW_PRIORITY();
        }
#else
        INTERRUPT_GLOBAL_ACTIVATE();
        INTERRUPT_PERIPHERAL_ACTIVATE();
        
#endif
#endif
        
        TIMER2_PRESCALER_SET_VALUE(timer2->prescaller_value);
        TIMER2_POSTSCALER_SET_VALUE(timer2->postscaller_value);
        TIMER2_WRITE(timer2->timer2_data);
        TIMER2_preload_value_default=timer2->timer2_data;
        TIMER2_ENABLE();
    }
    return ret;
}
STD_RETURN TIMER2_DeInit(const TIMER2_CONF_t *timer2)
{

    STD_RETURN ret =RETURN_OK;
    if(NULL==timer2)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER2_DISABLE();

#if TIMER2_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER2_INTERRUPT_DISABLE();
#endif
    }
    return ret;
}
STD_RETURN TIMER2_WRITE(uint8 data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {
       TIMER2_BYTE_WRITE(data); 
       TIMER2_preload_value_default=data;
    }
    return ret;
}
STD_RETURN TIMER2_READ(uint8 * data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {

        *data=(uint8)(TIMER2_BYTE_READ());
    }
    return ret;
}
#if TIMER2_INTERRUPT_FEATURE_ENABLE==ACTIVATED
void TIMER2_INTERRUPT_ISR(void){
    if(TIMER2_InterruptHandler)
    {
        TIMER2_WRITE(TIMER2_preload_value_default);
        TIMER2_InterruptHandler();
    }
}
#endif