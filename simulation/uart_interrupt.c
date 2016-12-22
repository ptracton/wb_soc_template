
#include "wb_soc_template.h"
//#include "MicoInterrupts.h"

void uart_irq_handler(unsigned int data, void * context){
    uint8_t byte;
    
    UNUSED(data);
    UNUSED(context);
    
    if (UART->reg2.interrupt_identifier & UART16550_INTERRUPT_IDENTIFICATION_DATA_RECEIVED){
      UART16550_ReceiveByte(UART, &byte);
      UART16550_TransmitByte(UART, byte);
    }
  return;
}


int main(void){

  FW_Init();
  FW_report("BOOTING", 0xdeadbeef);
  FW_compare("Compare Pass",0,0);
  FW_compare("Compare Fail",0,1);
  UART16550_Init(UART);
  UART16550_InterruptEnable(UART,  UART16550_INTERRUPT_ENABLE_DATA_RECEIVED);
  
  //  MicoISRInitialize();
  //  MicoRegisterISR(2, (void *) NULL, &uart_irq_handler);
  //  MicoEnableInterrupt(2);
  
  while(1){
  };
  
  return 0;
}
