
#include "wb_soc_template.h"
#include "MicoInterrupts.h"

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
  /* static uint32_t foo=0x1234567; */
  uint32_t * ptr;

  ptr = (uint32_t *) 0xE0000004;
  /* foo=0x89abcdef; */
  /* while(1){ */
  /*   foo++; */
  /*   *ptr = foo; */
  /*   //FW_IF->report  = foo; */
  /* }; */

  //FW_IF->report = 0xdeaddead;
  *ptr = (uint32_t ) 0x55aa66bb;
  ptr -=1;
  *ptr = (uint32_t ) 1;
  *ptr = (uint32_t ) 0;
  FW_report(FW_IF, 0xdeadbeef, "BOOTING");
  
  UART16550_Init(UART);
  UART16550_InterruptEnable(UART,  UART16550_INTERRUPT_ENABLE_DATA_RECEIVED);
  
  MicoISRInitialize();
  MicoRegisterISR(2, (void *) NULL, &uart_irq_handler);
  MicoEnableInterrupt(2);
  
  while(1){
  };
  
  return 0;
}
