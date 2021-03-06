// 
// Do not edit this file, it is automatically generated!
// To generate this file, "make cpudefs.h" in the rtl directory.
// 
#ifndef	CPUDEFS_H
#define	CPUDEFS_H
#define	OPT_ILLEGAL_INSTRUCTION
#define	OPT_MULTIPLY	3
#define	OPT_DIVIDE
#ifndef	OPT_SINGLE_FETCH
#endif
#define OPT_CIS		// COST: about 87 LUTs
#define	OPT_EARLY_BRANCHING
#ifndef	OPT_SINGLE_FETCH
#ifndef	OPT_DOUBLE_FETCH
#define	OPT_PIPELINED
#define	OPT_TRADITIONAL_PFCACHE
#define	OPT_PIPELINED_BUS_ACCESS
#endif	// OPT_DOUBLE_FETCH
#endif	// OPT_SINGLE_FETCH
#define	INCLUDE_DMA_CONTROLLER
#define	INCLUDE_ACCOUNTING_COUNTERS
#endif	// CPUDEFS_H
