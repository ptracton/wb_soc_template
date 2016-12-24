#ifndef LATTICE_DDINIT_HEADER_FILE
#define LATTICE_DDINIT_HEADER_FILE
#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

/* platform frequency in MHz */
#define MICO32_CPU_CLOCK_MHZ (25000000)

/*Device-driver structure for lm32_top*/
#define LatticeMico32Ctx_t_DEFINED (1)
typedef struct st_LatticeMico32Ctx_t {
    const char*   name;
} LatticeMico32Ctx_t;


/* lm32_top instance LM32*/
extern struct st_LatticeMico32Ctx_t lm32_top_LM32;

/* declare LM32 instance of lm32_top */
extern void LatticeMico32Init(struct st_LatticeMico32Ctx_t*);


/*Device-driver structure for Reg_Comp*/
#define reg_device_DEFINED (1)
typedef struct st_reg_device {
    unsigned int   reg_08_value;
    unsigned int   b_addr;
} reg_device;


/* Reg_Comp instance reg_comp*/
extern struct st_reg_device Reg_Comp_reg_comp;

/* declare reg_comp instance of Reg_Comp */
extern void init_reg_device(struct st_reg_device*);

extern int main();



#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif
