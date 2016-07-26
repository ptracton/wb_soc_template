
#
# Name of the simulation's .c file to build
#
TARGET = None

#
# LM32, MOR1K or OR1200
#
CPU = LM32


ifeq ($(CPU), LM32)
	CPU_MAKEFILE = Makefile.lm32
endif

all:
	@echo $(CPU_MAKEFILE)
	make -f $(CPU_MAKEFILE) TEST_CASE=$(TARGET)

clean:
	make -f $(CPU_MAKEFILE) TEST_CASE=$(TARGET) clean
