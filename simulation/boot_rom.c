
#include "wb_soc_template.h"

#ifdef OR1200
#include "or1200-utils.h"
#endif

#ifdef MOR1KX
#include "or1k-support.h"
#endif

int main(void){

#ifdef OR1200
  report(0);
#endif
  UART16550_Init(UART);
#ifdef OR1200  
  report (10);
#endif
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
