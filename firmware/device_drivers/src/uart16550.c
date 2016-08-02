
#include "wb_soc_template.h"

void UART16550_Init(UART16550_REGS_TypeDef * uart){

  //
  //Turn on Receive Data Interrupt
  //
  uart->interrupt_enable |= UART16550_INTERRUPT_ENABLE_DATA_RECEIVED;

  //
  // FIFO Control, interrupt for each byte and clear FIFOs
  //
  uart->fifo_control |= (UART16550_FIFO_CONTROL_CLEAR_RECIEVER |
                         UART16550_FIFO_CONTROL_CLEAR_TRANSMIT |
                         UART16550_FIFO_CONTROL_RX_TRIGGER_1);

  //
  // Set baud rate divisor
  //
  UART16550_SetDivisor(UART, 0x001A);

  //
  // Line Control Register 8 data, 1 stop, no parity
  //
  uart->line_control |= (UART16550_LINE_CONTROL_8BITS |
                         UART16550_LINE_CONTROL_1_STOP);
  return;
}

void UART16550_SetDivisor(UART16550_REGS_TypeDef * uart, uint16_t divisor){
  //
  // Line Control enable writing to baud rate registers
  //
  uart->line_control |= UART16550_LINE_CONTROL_DLAB;

  //
  // Writing baud rate to low byte
  //
  uart->data |= divisor & (0x00FF);

  //
  // Writing baud rate to the high byte
  //
  uart->data |= (divisor >> 8) & 0x00FF;

  //
  // Disable DLAB bit
  //
  uart->line_control &= ~UART16550_LINE_CONTROL_DLAB;
  
  return;
}

void UART16550_TransmitByte(UART16550_REGS_TypeDef * uart, uint8_t byte){

  //
  // Write byte to transmit FIFO
  //
  uart->data = byte;

  //
  // Wait for FIFO and Transmitter to be empty
  //
  while ((uart->line_status & UART16550_LINE_STATUS_TX) == 0);
  
  return;
}

void UART16550_ReceiveByte(UART16550_REGS_TypeDef * uart, uint8_t * byte){
  return;
}
