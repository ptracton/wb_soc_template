#ifndef __WB_SOC_INTERRUPTS_H__
#define __WB_SOC_INTERRUPTS_H__

#include "wb_soc_template.h"
#include "zipsys.h"

void Zip_Interrupt_Init(void);
void Zip_Interrupt_Install(unsigned long irq, void (* handler)(unsigned int, void *), void *arg);
void Zip_Interrupt_Enable(unsigned long);
void Zip_Interrupt_Disable(unsigned long);
void Zip_Interrupt_CPU_Enable(void);
void Zip_Interrupt_CPU_Disable(void);

//
// Wrap up the Zip Interrupt calls so we can be platform neutral
//
#define WB_SOC_Interrupt_Init Zip_Interrupt_Init
#define WB_SOC_InstallHandler(X,Y,Z)  Zip_Interrupt_Install
#define WB_SOC_DisableInterrupt Zip_Interrupt_Disable
#define WB_SOC_EnableInterrupt Zip_Interrupt_Enable
#define WB_SOC_CPUEnableInterrupt(x)  Zip_Interrupt_CPU_Enable
#define WB_SOC_CPUDisableInterrupt Zip_Interrupt_CPU_Disable
#endif
