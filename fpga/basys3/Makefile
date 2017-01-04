
SYNTH_DIR = synthesis
IMPL_DIR  = implementation
BIT_DIR   = bitgen

MAKE_DIRS = $(SYNTH_DIR) $(IMPL_DIR) $(BIT_DIR)

all: DIRS BIT_GEN

DIRS:
	@echo "Making Directories $(MAKE_DIRS)"
	@mkdir -p $(MAKE_DIRS)

SYNTHESIS: DIRS
	@echo "Synthesis"
	@vivado -mode batch -source synthesis.tcl > $(SYNTH_DIR)/basys3_synthesis.log 2>&1

IMPLEMENTATION: SYNTHESIS
	@echo "Implement Design"
	@vivado -mode batch -source implementation.tcl > $(IMPL_DIR)/basys3_implementation.log 

BIT_GEN:IMPLEMENTATION
	@echo "Generating Bit File"
	@vivado -mode batch -source bitgen.tcl > $(BIT_DIR)/basys3_bitgen.log

clean:
	rm -rf *jou *log *.os *.dcp *~ .Xil *.pb *.rpt *html *xml
	rm -rf $(MAKE_DIRS) basys3.cache basys3.hw basys3.xpr
	find . -name "*~" | xargs rm -rf 
