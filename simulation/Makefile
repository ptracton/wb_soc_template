
#
# Name of the simulation's .c file to build
#
TARGET = None

#
# LM32, MOR1K or OR1200
#
#CPU = LM32


ifeq ($(CPU), LM32)
	CPU_MAKEFILE = Makefile.lm32
endif

ifeq ($(CPU), OR1200)
	CPU_MAKEFILE = Makefile.or1200
endif

ifeq ($(CPU), MOR1KX)
	CPU_MAKEFILE = Makefile.mor1kx
endif

ifeq ($(CPU), RISCV)
	CPU_MAKEFILE = Makefile.riscv
endif


all:
	@echo $(CPU_MAKEFILE)
	make -f $(CPU_MAKEFILE) TEST_NAME=$(TARGET) CPU=$(CPU)

clean:
	make -f $(CPU_MAKEFILE) TEST_NAME=$(TARGET) CPU=$(CPU) clean
