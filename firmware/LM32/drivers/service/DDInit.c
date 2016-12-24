#include "DDStructs.h"

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

void LatticeDDInit(void)
{

    /* initialize LM32 instance of lm32_top */
    LatticeMico32Init(&lm32_top_LM32);
    
    /* initialize reg_comp instance of Reg_Comp */
    init_reg_device(&Reg_Comp_reg_comp);
    
    /* invoke application's main routine*/
    main();
}



#ifdef __cplusplus
};
#endif /* __cplusplus */
