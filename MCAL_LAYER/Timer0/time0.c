/* 
 * File:   timer0.h
 * Author: IslamSameh2025
 *
 * Created on July 11, 2024, 8:16 PM
 */
#include "timer0.h"
#if TIMER0_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        static InterruptHandler TIMER0_InterruptHandler =NULL;
#endif
uint16 TIMER0_preload_value_default=0;
STD_RETURN TIMER0_Init(const TIMER0_CONF_t *timer0)
{
    STD_RETURN ret =RETURN_OK;
    if(NULL==timer0)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER0_DISABLE();

#if TIMER0_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER0_INTERRUPT_FLAG_CLEAR();
        TIMER0_INTERRUPT_ENABLE();
        TIMER0_InterruptHandler=timer0->interrupt_handler;
#if INTERRUPT_PRIORITY_ACTIVATION==ACTIVATED
        INTERRUPT_PRIORITY_FEATURE_ACTIVATE();
        if((timer0->priority)==INTERRUPT_HIGH_PRIORITY)
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        TIMER0_INTERRUPT_HIGH_PRIORITY();
        }
        else
        {
        INTERRUPT_HIGH_PRIORITY_ACTIVATE();
        INTERRUPT_LOW_PRIORITY_ACTIVATE();
        TIMER0_INTERRUPT_LOW_PRIORITY();
        }
#else
        INTERRUPT_GLOBAL_ACTIVATE();
        INTERRUPT_PERIPHERAL_ACTIVATE();
        
#endif
#endif
        if((timer0->timer0_prescaler_activation)==TIMER0_PRESCALER_ACTIVATED)
        {
            TIMER0_PRESCALER_ACTIVATE();
            TIMER0_PRESCALER_SET_VALUE(timer0->prescaller_value);
        }
        else
        {
            TIMER0_PRESCALER_DEACTIVATE();
        }
        if((timer0->timer0_8_16_BIT_mode)==TIMER0_8BIT_MODE)
            TIMER0_8BIT_SELECT();
        else
            TIMER0_16BIT_SELECT();
        if((timer0->timer0_counter_timer_mode)==TIMER0_TIMER_MODE)
        {
            TIMER0_TIMER_MODE_SET();
        }
        else
        {
            TIMER0_COUNTER_MODE_SET();
            TRISA|=_TRISA_RA4_MASK; /*Actually I don't know if 
                                     T0CK1 is configured as input
                                     such counter mode is selected
                                     so I choose to ensure it is 
                                     configured as input*/
            if((timer0->timer0_edge_select)==TIMER0_RISSIGN_EDGE)
                TIMER0_RISSIGN_EDGE_SELECT();
            else
                TIMER0_FALLING_EDGE_SELECT();
        }
        TIMER0_WRITE(timer0->timer0_data);
        TIMER0_preload_value_default=timer0->timer0_data;
        TIMER0_ENABLE();
    }
    return ret;
}
STD_RETURN TIMER0_DeInit(const TIMER0_CONF_t *timer0)
{

    STD_RETURN ret =RETURN_OK;
    if(NULL==timer0)
        ret=RETURN_NOT_OK;
    else
    {
        TIMER0_DISABLE();

#if TIMER0_INTERRUPT_FEATURE_ENABLE==ACTIVATED
        TIMER0_INTERRUPT_DISABLE();
#endif
    }
    return ret;
}
STD_RETURN TIMER0_WRITE(uint16 data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {
       TIMER0_HIGHER_BYTE_WRITE((uint8)(data>>8));
       TIMER0_LOWER_BYTE_WRITE((uint8)data); 
       TIMER0_preload_value_default=data;
    }
    return ret;
}
STD_RETURN TIMER0_READ(uint16 * data){

    STD_RETURN ret =RETURN_OK;
    if(0)
        ret=RETURN_NOT_OK;
    else
    {
        uint8 lowerByte,higherByte;
        lowerByte=TIMER0_LOWER_BYTE_READ();
        higherByte=TIMER0_HIGHER_BYTE_READ();
        *data=(uint16)((higherByte<<8)+lowerByte);
    }
    return ret;
}
#if TIMER0_INTERRUPT_FEATURE_ENABLE==ACTIVATED
void TIMER0_INTERRUPT_ISR(void){
    if(TIMER0_InterruptHandler)
    {
        TIMER0_WRITE(TIMER0_preload_value_default);
        TIMER0_InterruptHandler();
    }
}
#endif