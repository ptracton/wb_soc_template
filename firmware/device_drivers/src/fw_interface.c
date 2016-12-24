
#include "wb_soc_template.h"
#include "fw_interface.h"
#include "string.h"

void FW_report(volatile FW_INTERFACE_REGS_TypeDef * dev, const char* message, uint32_t report){
  uint32_t i;

  size_t str_size;
  
  str_size = strlen(message);
  if (str_size > FW_INTERFACE_MAX_CHARS){
    str_size = FW_INTERFACE_MAX_CHARS;
  }
  
   FW_IF_REPORT_WRITE(dev, report);
  i =0;
  while ((i < str_size )){
    dev->string[i] = *message++;
    i++;
  }
  FW_IF_CONTROL_WRITE(dev, FW_INTERFACE_CONTROL_REG_NEW_REPORT);
  FW_IF_CONTROL_WRITE(dev, 0);
  return;
}

/* void FW_warning(char * message, uint32_t warning){ */
/*   uint32_t i=0; */
/*   FW_IF->warning = (uint32_t) warning; */
/*   while ((*message != 0) && (i < FW_INTERFACE_MAX_CHARS )){ */
/*     FW_IF->string[i] = (uint8_t) *message++; */
/*     i++; */
/*   } */
/*   FW_IF->control = (uint32_t) FW_INTERFACE_CONTROL_REG_NEW_REPORT ; */
/*   FW_IF->control = (uint32_t) 0; */
  
/*   return; */
/* } */

/* void FW_error( char * message, uint32_t error){ */
/*   uint32_t i=0; */
/*   FW_IF->error = (uint32_t) error; */
/*   while ((*message != 0) && (i < FW_INTERFACE_MAX_CHARS )){ */
/*     FW_IF->string[i] = (uint8_t) *message++; */
/*     i++; */
/*   } */
/*   FW_IF->control = (uint32_t) FW_INTERFACE_CONTROL_REG_NEW_REPORT ; */
/*   FW_IF->control = (uint32_t) 0; */
  
/*   return; */
/* } */

void FW_compare(volatile FW_INTERFACE_REGS_TypeDef * dev, const char * message, uint32_t measured, uint32_t expected){
  uint32_t i=0;
  uint8_t * ptr;
  
  static size_t str_size;
  str_size = strlen(message);
  if (str_size > FW_INTERFACE_MAX_CHARS){
    str_size = FW_INTERFACE_MAX_CHARS;
  }

  FW_IF_MEASURED_WRITE(dev, measured);
  FW_IF_EXPECTED_WRITE(dev, expected);
  i =0;
  ptr = (uint8_t *) (FW_INTERFACE_BASE_ADDRESS+24);
  while ((i < str_size )){
    *ptr++=*message++;
    i++;
  }

  FW_IF_CONTROL_WRITE(dev,FW_INTERFACE_CONTROL_REG_NEW_COMPARE);
  FW_IF_CONTROL_WRITE(dev, 0);
  return;
}

void FW_Init(volatile FW_INTERFACE_REGS_TypeDef * dev){
  uint32_t i;
  //  volatile FW_INTERFACE_REGS_TypeDef * dev;
  //  dev = *(volatile FW_INTERFACE_REGS_TypeDef *)( 0xE0000000);
  
  for (i=0; i< FW_INTERFACE_MAX_CHARS; i++){
    //FW_IF->string[i] = 0;
    //LM32_FW.string[i] = 0;
    //*ptr++=0;
    dev->string[i] = 0;
  }
}
