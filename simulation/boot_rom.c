
#include "wb_soc_template.h"

int main(void){


  UART16550_Init(UART);
  UART16550_TransmitByte(UART, '0');
  UART16550_TransmitByte(UART, '1');
  UART16550_TransmitByte(UART, '2');
  UART16550_TransmitByte(UART, '3');
  while(1);
  return 0;
}
