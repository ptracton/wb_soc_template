
#include "wb_soc_template.h"
#include "fw_interface.h"

void FW_report(char* message, uint32_t report){
  uint32_t i=0;
  FW_IF->report = (uint32_t) report;
  while ((*message != 0) && (i < FW_INTERFACE_MAX_CHARS )){
    FW_IF->string[i] = (uint8_t) *message++;
    i++;
  }
  FW_IF->control = (uint32_t) FW_INTERFACE_CONTROL_REG_NEW_REPORT ;
  FW_IF->control = (uint32_t) 0;
  return;
}

void FW_warning(char * message, uint32_t warning){
  uint32_t i=0;
  FW_IF->warning = (uint32_t) warning;
  while ((*message != 0) && (i < FW_INTERFACE_MAX_CHARS )){
    FW_IF->string[i] = (uint8_t) *message++;
    i++;
  }
  FW_IF->control = (uint32_t) FW_INTERFACE_CONTROL_REG_NEW_REPORT ;
  FW_IF->control = (uint32_t) 0;
  
  return;
}

void FW_error( char * message, uint32_t error){
  uint32_t i=0;
  FW_IF->error = (uint32_t) error;
  while ((*message != 0) && (i < FW_INTERFACE_MAX_CHARS )){
    FW_IF->string[i] = (uint8_t) *message++;
    i++;
  }
  FW_IF->control = (uint32_t) FW_INTERFACE_CONTROL_REG_NEW_REPORT ;
  FW_IF->control = (uint32_t) 0;
  
  return;
}

void FW_compare( char * message, uint32_t measured, uint32_t expected){
  uint32_t i=0;
  FW_IF->measured = measured;
  FW_IF->expected = expected;
  while ((*message != 0) && (i < FW_INTERFACE_MAX_CHARS )){
    FW_IF->string[i] = (uint8_t) *message++;
    i++;
  }
  FW_IF->control = (uint32_t) FW_INTERFACE_CONTROL_REG_NEW_COMPARE ;
  FW_IF->control = (uint32_t) 0;  
  return;
}

void FW_Init(void){
  uint32_t i;
  for (i=0; i< FW_INTERFACE_MAX_CHARS; i++){
    FW_IF->string[i] = 0;
  }
}
