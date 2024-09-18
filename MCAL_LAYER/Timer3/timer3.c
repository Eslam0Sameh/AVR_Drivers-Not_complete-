/*
 * File:   timer3.h
 * Author: IslamSameh2025
 *
 * Created on July 11, 2024, 8:16 PM
 */
#include "timer3.h"
#if TIMER3_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        static InterruptHandler TIMER3_InterruptHandler =NULL;
#endif
uint16 TIMER3_preload_value_default=0;
STD_RETURN TIMER3_Init(const TIMER3_CONF_t *timer3)
{
    STD_RETURN ret =RETURN_OK;
    if(NULL==timer3)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER3_DISABLE();

#if TIMER3_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER3_INTERRUPT_FLAG_CLEAR();
        TIMER3_INTERRUPT_ENABLE();
        TIMER3_InterruptHandler=timer3->interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
        INTERRUPT_PRIORITY_FEATURE_ACTIVATE();
        if((timer3->priority)==INTERRUPT_HIGH_PRIORITY)
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        TIMER3_INTERRUPT_HIGH_PRIORITY();
        }
        else
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        INTERRUPT_LOW_PRIORITY_ACTIVATE();
        TIMER3_INTERRUPT_LOW_PRIORITY();
        }
#else
        INTERRUPT_GLOBAL_ACTIVATE();
        INTERRUPT_PERIPHERAL_ACTIVATE();
        
#endif
#endif
        
        TIMER3_PRESCALER_SET_VALUE(timer3->prescaller_value);
        if((timer3->timer3_counter_timer_mode)==TIMER3_TIMER_MODE)
        {
            TIMER3_TIMER_MODE_SET();
        }
        else
        {
            TIMER3_COUNTER_MODE_SET();
            TRISC|=_TRISC_RC1_MASK; /*Actually I don't know if 
                                     T1CK is configured as input
                                     such counter mode is selected
                                     so I choose to ensure it is 
                                     configured as input*/
            if((timer3->timer3_counter_syn_asyn_mode)==TIMER3_COUNTER_SYN)
                TIMER3_SYN_SET();
            else
                TIMER3_ASYN_SET(); 
        }
        if((timer3->timer1_oscillator_activation)==TIMER1_OSCILLATOR_IS_ENABLE)
            TIMER1_OSCILLATOR_ENABLE();
        else
            TIMER1_OSCILLATOR_DISABLE();
        TIMER3_WRITE_READ_IN_TWO_8_BIT_OPERATIONS();// the default 
        TIMER3_WRITE(timer3->timer3_data);
        TIMER3_preload_value_default=timer3->timer3_data;
        TIMER3_ENABLE();
    }
    return ret;
}
STD_RETURN TIMER3_DeInit(const TIMER3_CONF_t *timer3)
{

    STD_RETURN ret =RETURN_OK;
    if(NULL==timer3)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER3_DISABLE();

#if TIMER3_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER3_INTERRUPT_DISABLE();
#endif
    }
    return ret;
}
STD_RETURN TIMER3_WRITE(uint16 data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {
       TIMER3_HIGHER_BYTE_WRITE((uint8)(data>>8));
       TIMER3_LOWER_BYTE_WRITE((uint8)data); 
       TIMER3_preload_value_default=data;
    }
    return ret;
}
STD_RETURN TIMER3_READ(uint16 * data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {
        uint8 lowerByte,higherByte;
        lowerByte=TIMER3_LOWER_BYTE_READ();
        higherByte=TIMER3_HIGHER_BYTE_READ();
        *data=(uint16)((higherByte<<8)+lowerByte);
    }
    return ret;
}
#if TIMER3_INTERRUPT_FEATURE_ENABLE==ACTIVATED
void TIMER3_INTERRUPT_ISR(void){
    if(TIMER3_InterruptHandler)
    {
        TIMER3_WRITE(TIMER3_preload_value_default);
        TIMER3_InterruptHandler();
    }
}
#endif
