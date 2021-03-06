
PREFIX	= or1k-elf


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


TARGET = boot
LIBRARY = libMOR1KXboot.a

##
## Project Directories
##
SRC_DIR = src
OBJ_DIR = objects
INC_DIR = includes
LIB_DIR = lib
DEP_DIR = dep
LD_DIR = linker

SOURCES          += $(wildcard $(SRC_DIR)/*.c)
OBJECTS          += $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SOURCES))
ELF_REQUIREMENTS += $(OBJECTS)
VPATH            += $(SRC_DIR)
CINCLUDES        += -I$(INC_DIR)


##
## The files we are creating
##
LIST_FILE = $(LIB_DIR)/$(TARGET).lst
HEX_FILE  = $(LIB_DIR)/$(TARGET).hex
SREC_FILE = $(LIB_DIR)/$(TARGET).srec
BIN_FILE  = $(LIB_DIR)/$(TARGET).bin

##
## Start up file
##
#ASM_SOURCES      += src/crt0ram.S 
#ASM_OBJECTS      += $(OBJ_DIR)/crt0ram.o
ASM_SOURCES      += $(wildcard $(SRC_DIR)/*.S)
ASM_OBJECTS      += $(patsubst $(SRC_DIR)/%.S,$(OBJ_DIR)/%.o,$(ASM_SOURCES))
ELF_REQUIREMENTS += $(ASM_OBJECTS)
ASMFLAGS         +=  # -Wa 

##
## Linker flags
##
LDFLAGS = -T$(LD_DIR)/linker.ld -nostdlib -nodefaultlibs -static -lgcc
CFLAGS  = -g $(CINCLUDES) -I /opt/CrossCompilers/or1k-elf/or1k-elf/include/
CFLAGS += -Wall -Werror -Wextra 

##
## The directories to make for this build.
##
MAKE_DIRS += $(OBJ_DIR) $(DEP_DIR) $(LIB_DIR)

all: dirs $(LIB_DIR)/$(LIB_FILE) 

dirs:
	@echo "Making directories $(MAKE_DIRS)"
	@$(MKDIR) -p $(MAKE_DIRS)

##
## Link together the executable
##
$(LIB_DIR)/$(LIB_FILE): $(ELF_REQUIREMENTS)
	@echo "Create Library $(LIBRARY)"
	@$(AR) cr $(LIB_DIR)/$(LIBRARY) $(ELF_REQUIREMENTS)


##
## Turn out ASM code into objects in our $(OBJ_DIR)
##
$(OBJ_DIR)/%.o:%.S
	@echo "Assembling $<"
	@$(CC) $(CFLAGS)  -c  $<  -o $@

##
## Turn out C code into objects in our $(OBJ_DIR)
##
$(OBJ_DIR)/%.o:%.c
	@echo "Compiling  $<"
	$(CC) $(CFLAGS) -o $@ -c $< -MMD -MF dep/$(*F).d

clean:
	$(RM) -rf  $(OBJ_DIR) $(EXEC_DIR) $(DEP_DIR) $(LIB_DIR)
	find . -name "*~" | xargs $(RM) -f
	$(RM) -f TAGS	
