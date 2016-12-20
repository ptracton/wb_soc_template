################################################################################
#
# Set up your environment paths
#
################################################################################

##
## Prefix of the GCC LM32 Cross Compiler
##
PREFIX	= or32-elf


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
FLASH	= $(shell which st-flash)
MKDIR   = mkdir
RM      = rm
