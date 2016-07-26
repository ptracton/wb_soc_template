include ../environment.mk

TARGET = boot
LIBRARY = liblm32boot.a

##
## Project Directories
##
SRC_DIR = src
OBJ_DIR = objects
INC_DIR = includes
LIB_DIR = lib
DEP_DIR = dep
LD_DIR = linker

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
ASM_SOURCES      += src/crt.S
ASM_OBJECTS      += $(OBJ_DIR)/crt.o
ELF_REQUIREMENTS += $(ASM_OBJECTS)
ASMFLAGS         +=  # -Wa 

##
## Linker flags
##
LDFLAGS = -T$(LD_DIR)/linker.ld -nostdlib -lgcc

##
## The directories to make for this build.
##
MAKE_DIRS += $(OBJ_DIR) $(DEP_DIR) $(LIB_DIR)

all: dirs $(LIB_DIR)/$(LIB_FILE) 

dirs:
	@echo "Making directories $(MAKE_DIRS)"
	$(MKDIR) -p $(MAKE_DIRS)

##
## Link together the executable
##
$(LIB_DIR)/$(LIB_FILE): $(ELF_REQUIREMENTS)
	@echo "Create Library $(LIBRARY)"
	$(AR) cr $(LIB_DIR)/$(LIBRARY) $(ELF_REQUIREMENTS)

##
## Turn out C code into objects in our $(OBJ_DIR)
##
$(OBJ_DIR)/%.o:$(SRC_DIR)/%.c
	@echo "Compiling  $<"
	@$(CC) $(CFLAGS) -o $@ -c $< -MMD -MF dep/$(*F).d

##
## Turn out ASM code into objects in our $(OBJ_DIR)
##
$(OBJ_DIR)/%.o:$(SRC_DIR)/%.S
	@echo "Assembling $<"
	$(ASM) $(ASMFLAGS)   $<  -o $@


clean:
	$(RM) -rf  $(OBJ_DIR) $(EXEC_DIR) $(DEP_DIR) $(LIB_DIR)
	find . -name "*~" | xargs $(RM) -f
	$(RM) -f TAGS	
