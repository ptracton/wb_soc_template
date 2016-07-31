#ifndef __WB_SOC_TEMPLATE_H__
#define __WB_SOC_TEMPLATE_H__


#ifdef LM32

#define uint8_t  unsigned char
#define uint16_t unsigned short
#define uint32_t unsigned long

#endif


#include <sys/types.h>

#include "uart16550.h"

#define ROM_BASE_ADDRESS 0x00000000
#define RAM_BASE_ADDRESS 0x20000000

#define UART_BASE_ADDRESS 0x40000000

#endif
