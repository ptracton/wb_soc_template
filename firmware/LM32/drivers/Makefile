include ../environment.mk

CPU = LM32

TARGET = boot
LIBRARY = lib$(CPU)drivers.a

##
## Project Directories
##
SRC_DIR = src
OBJ_DIR = objects
INC_DIR = includes
LIB_DIR = lib
DEP_DIR = dep
LD_DIR = linker

DEVICE_DIR         = device
DEVICE_SRC_DIR     = device
DEVICE_SOURCES     += $(wildcard $(DEVICE_SRC_DIR)/*.c)
DEVICE_OBJECTS     += $(patsubst $(DEVICE_SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(DEVICE_SOURCES))
DEVICE_ASM_SOURCES += $(wildcard $(DEVICE_SRC_DIR)/*.S)
DEVICE_ASM_OBJECTS += $(patsubst $(DEVICE_SRC_DIR)/%.S,$(OBJ_DIR)/%.o,$(DEVICE_ASM_SOURCES))
ELF_REQUIREMENTS   += $(DEVICE_OBJECTS) $(DEVICE_ASM_OBJECTS)
VPATH              += $(DEVICE_SRC_DIR)
CINCLUDES          += -I$(DEVICE_SRC_DIR)

SERVICE_DIR         = service
SERVICE_SRC_DIR     = service
SERVICE_SOURCES     += $(wildcard $(SERVICE_SRC_DIR)/*.c)
SERVICE_OBJECTS     += $(patsubst $(SERVICE_SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SERVICE_SOURCES))
SERVICE_ASM_SOURCES += $(wildcard $(SERVICE_SRC_DIR)/*.S)
SERVICE_ASM_OBJECTS += $(patsubst $(SERVICE_SRC_DIR)/%.S,$(OBJ_DIR)/%.o,$(SERVICE_ASM_SOURCES))
ELF_REQUIREMENTS += $(SERVICE_OBJECTS) $(SERVICE_ASM_OBJECTS)
VPATH            += $(SERVICE_SRC_DIR)
CINCLUDES        += -I$(SERVICE_SRC_DIR)

##
## The files we are creating
##
LIST_FILE = $(LIB_DIR)/$(TARGET).lst
HEX_FILE  = $(LIB_DIR)/$(TARGET).hex
SREC_FILE = $(LIB_DIR)/$(TARGET).srec
BIN_FILE  = $(LIB_DIR)/$(TARGET).bin



##
## Linker flags
##
LDFLAGS = -T$(LD_DIR)/linker.ld -nostdlib -lgcc
CFLAGS  = -c -g $(CINCLUDES)
CFLAGS += #-Wall -Werror -Wextra 

##
## The directories to make for this build.
##
MAKE_DIRS += $(OBJ_DIR) $(DEP_DIR) $(LIB_DIR)

all: dirs $(LIB_DIR)/$(LIB_FILE) 

dirs:
	@echo "Making directories $(MAKE_DIRS)"
	@$(MKDIR) -p $(MAKE_DIRS)

##
## List File for the library
##

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
	@$(CC) $(CFLAGS)   $<  -o $@

##
## Turn out C code into objects in our $(OBJ_DIR)
##
$(OBJ_DIR)/%.o:%.c
	@echo "Compiling  $<"
	@$(CC) $(CFLAGS) -o $@ -c $< -MMD -MF dep/$(*F).d

clean:
	$(RM) -rf  $(OBJ_DIR) $(EXEC_DIR) $(DEP_DIR) $(LIB_DIR)
	find . -name "*~" | xargs $(RM) -f
	$(RM) -f TAGS	
