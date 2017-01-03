#include "wb_soc_template.h"




int main(void){


  UART16550_Init(UART);
  UART16550_TransmitByte(UART, '0');
  UART16550_TransmitByte(UART, '1');
  UART16550_TransmitByte(UART, '2');
  UART16550_TransmitByte(UART, '3');


  
  while(1){
    uint8_t byte;
    UART16550_PollForReceive(UART);    
    UART16550_ReceiveByte(UART, &byte);
    UART16550_TransmitByte(UART, byte);
  }
  return 0;
}
