/*
 * File:   timer1.h
 * Author: IslamSameh2025
 *
 * Created on July 11, 2024, 8:16 PM
 */
#include "../../MCAL_LAYER/Timer1/timer1.h"
#if TIMER1_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        static InterruptHandler TIMER1_InterruptHandler =NULL;
#endif
uint16 TIMER1_preload_value_default=0;
STD_RETURN TIMER1_Init(const TIMER1_CONF_t *timer1)
{
    STD_RETURN ret =RETURN_OK;
    if(NULL==timer1)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER1_DISABLE();

#if TIMER1_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER1_INTERRUPT_FLAG_CLEAR();
        TIMER1_INTERRUPT_ENABLE();
        TIMER1_InterruptHandler=timer1->interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
        INTERRUPT_PRIORITY_FEATURE_ACTIVATE();
        if((timer1->priority)==INTERRUPT_HIGH_PRIORITY)
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        TIMER1_INTERRUPT_HIGH_PRIORITY();
        }
        else
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        INTERRUPT_LOW_PRIORITY_ACTIVATE();
        TIMER1_INTERRUPT_LOW_PRIORITY();
        }
#else
        INTERRUPT_GLOBAL_ACTIVATE();
        INTERRUPT_PERIPHERAL_ACTIVATE();
        
#endif
#endif
        
        TIMER1_PRESCALER_SET_VALUE(timer1->prescaller_value);
        
        if((timer1->timer1_counter_timer_mode)==TIMER1_TIMER_MODE)
        {
            TIMER1_TIMER_MODE_SET();
        }
        else
        {
            TIMER1_COUNTER_MODE_SET();
            TRISC|=_TRISC_RC1_MASK; /*Actually I don't know if 
                                     T1CK is configured as input
                                     such counter mode is selected
                                     so I choose to ensure it is 
                                     configured as input*/
            if((timer1->timer1_counter_syn_asyn_mode)==TIMER1_COUNTER_SYN)
                TIMER1_SYN_SET();
            else
                TIMER1_ASYN_SET(); 
        }
        if((timer1->timer1_oscillator_activation)==TIMER1_OSCILLATOR_IS_ENABLE)
            TIMER1_OSCILLATOR_ENABLE();
        else
            TIMER1_OSCILLATOR_DISABLE();
        TIMER1_WRITE_READ_IN_TWO_8_BIT_OPERATIONS();// the default 
        TIMER1_WRITE(timer1->timer1_data);
        TIMER1_preload_value_default=timer1->timer1_data;
        TIMER1_ENABLE();
    }
    return ret;
}
STD_RETURN TIMER1_DeInit(const TIMER1_CONF_t *timer1)
{

    STD_RETURN ret =RETURN_OK;
    if(NULL==timer1)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER1_DISABLE();

#if TIMER1_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER1_INTERRUPT_DISABLE();
#endif
    }
    return ret;
}
STD_RETURN TIMER1_WRITE(uint16 data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {
       TIMER1_HIGHER_BYTE_WRITE((uint8)(data>>8));
       TIMER1_LOWER_BYTE_WRITE((uint8)data); 
       TIMER1_preload_value_default=data;
    }
    return ret;
}
STD_RETURN TIMER1_READ(uint16 * data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {
        uint8 lowerByte,higherByte;
        lowerByte=TIMER1_LOWER_BYTE_READ();
        higherByte=TIMER1_HIGHER_BYTE_READ();
        *data=(uint16)((higherByte<<8)+lowerByte);
    }
    return ret;
}
#if TIMER1_INTERRUPT_FEATURE_ENABLE==ACTIVATED
void TIMER1_INTERRUPT_ISR(void){
    if(TIMER1_InterruptHandler)
    {
        TIMER1_WRITE(TIMER1_preload_value_default);
        TIMER1_InterruptHandler();
    }
}
#endif
