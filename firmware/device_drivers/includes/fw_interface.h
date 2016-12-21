#ifndef __FW_INTERFACE_H__
#define __FW_INTERFACE_H__

#define FW_INTERFACE_MAX_CHARS 64

typedef struct __attribute__((packed)){
  uint32_t control;
  uint32_t report;
  uint32_t warning;
  uint32_t error;
  uint32_t measured;
  uint32_t expected;
  uint8_t string[FW_INTERFACE_MAX_CHARS];
} FW_INTERFACE_REGS_TypeDef;

//
// Control Reg Bits
//
#define FW_INTERFACE_CONTROL_REG_NEW_REPORT  (0x00000001)
#define FW_INTERFACE_CONTROL_REG_NEW_WARNING (0x00000002)
#define FW_INTERFACE_CONTROL_REG_NEW_ERROR   (0x00000004)



//
// Function Prototypes
//
void FW_report(FW_INTERFACE_REGS_TypeDef * fw, uint32_t report, char * message);
void FW_warning(FW_INTERFACE_REGS_TypeDef * fw, uint32_t warning, char * message);
void FW_error(FW_INTERFACE_REGS_TypeDef * fw, uint32_t error, char * message);
void FW_compare(FW_INTERFACE_REGS_TypeDef * fw, uint32_t measured, uint32_t expected, char * message);

#endif
