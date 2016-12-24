#ifndef __WB_SOC_INTERRUPTS_H__
#define __WB_SOC_INTERRUPTS_H__

#include "MicoInterrupts.h"

//
// Wrap up the LM32 Mico Interrupt calls so we can be platform neutral
//
#define WB_SOC_Interrupt_Init MicoISRInitialize
#define WB_SOC_InstallHandler(X,Y,Z)  MicoRegisterISR(X,Z,Y)
#define WB_SOC_DisableInterrupt MicoDisableInterrupt
#define WB_SOC_EnableInterrupt MicoEnableInterrupt
//#define WB_SOC_CPUEnableInterrupt   
#define WB_SOC_CPUDisableInterrupt MicoDisableInterrupts

inline void WB_SOC_CPUEnableInterrupt(void){
}
#endif
