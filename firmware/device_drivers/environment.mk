################################################################################
#
# Set up your environment paths
#
################################################################################

##
## Prefix of the GCC LM32 Cross Compiler
##
ifeq ($(CPU), LM32)
	PREFIX	= lm32-elf
endif

ifeq ($(CPU), MOR1KX)
	PREFIX	= or1k-elf
endif

ifeq ($(CPU), OR1200)
	PREFIX	= or32-elf
endif

ifeq ($(CPU), RISCV)
	PREFIX	= riscv32-unknown-elf
endif

ifeq ($(CPU), ZIP)
	PREFIX	= zip
endif


##
## Tools we use for building
##
CC	    = $(PREFIX)-gcc
LD	    = $(PREFIX)-gcc
ASM     = $(PREFIX)-as
OBJCOPY	= $(PREFIX)-objcopy
OBJDUMP	= $(PREFIX)-objdump
AR     	= $(PREFIX)-ar
GDB	    = $(PREFIX)-gdb
FLASH	  = $(shell which st-flash)
MKDIR   = mkdir
RM      = rm
