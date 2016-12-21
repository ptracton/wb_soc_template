
#include "wb_soc_template.h"
#include "fw_interface.h"

void FW_report(FW_INTERFACE_REGS_TypeDef * fw, uint32_t report, char * message){
  uint32_t i=0;
  
  fw->report = report;
  while ((*message != 0) && (i < FW_INTERFACE_MAX_CHARS )){
    fw->string[i] = *message++;
    i++;
  }
  fw->control = FW_INTERFACE_CONTROL_REG_NEW_REPORT ;
  fw->control = 0;
  return;
}

void FW_warning(FW_INTERFACE_REGS_TypeDef * fw, uint32_t warning, char * message){
  return;
}

void FW_error(FW_INTERFACE_REGS_TypeDef * fw, uint32_t error, char * message){
  return;
}

void FW_compare(FW_INTERFACE_REGS_TypeDef * fw, uint32_t measured, uint32_t expected, char * message){
  return;
}
