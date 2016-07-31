CPU = LM32
TARGET = $(CPU)_device_drivers
LIBRARY = lib$(TARGET).a

include environment.mk

SRC_DIR  = src
INC_DIR  = includes
OBJ_DIR  = $(CPU)_objects
DEP_DIR  = $(CPU)_dep
LIB_DIR  = $(CPU)_lib
EXEC_DIR = $(CPU)_executable

SOURCES = $(wildcard $(SRC_DIR)/*.c)
OBJECTS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SOURCES))
VPATH = $(SRC_DIR)
ELF_REQUIREMENTS = $(OBJECTS)
CINCLUDES = -I$(INC_DIR)

MAKE_DIRS = $(DEP_DIR) $(LIB_DIR) $(OBJ_DIR)
CFLAGS = -g -Wall -Werror $(CINCLUDES) -D$(CPU)

all: dirs $(LIBRARY)

dirs:
	@echo "Making directories $(MAKE_DIRS)"
	@$(MKDIR) -p $(MAKE_DIRS)

$(LIBRARY): $(ELF_REQUIREMENTS)
	@echo "Building Library $(LIBRARY)"

$(OBJ_DIR)/%.o:%.c
	@echo "Compiling $<"
	$(CC) $(CFLAGS) -o $@ -c $< -MMD -MF $(DEP_DIR)/$(*F).d

clean:
	$(RM) -rf $(OBJ_DIR) $(DEP_DIR) $(LIB_DIR)
	find . -name "*~" | xargs rm -f
