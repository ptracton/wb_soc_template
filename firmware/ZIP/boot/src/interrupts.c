#include "WB_SOC_Interrupts.h"

void Zip_Interrupt_Init(void){
  return;
}

void Zip_Interrupt_Install(unsigned long irq, void (* handler)(unsigned int, void *), void *arg){
  UNUSED(irq);
  UNUSED(handler);
  UNUSED(arg);
  return;
}

void Zip_Interrupt_Enable(unsigned long irq){
  UNUSED(irq);
  return;
}
void Zip_Interrupt_Disable(unsigned long irq){
  UNUSED(irq);
  return;
}

void Zip_Interrupt_CPU_Enable(void){
  return;
}

void Zip_Interrupt_CPU_Disable(void){
  return;
}
