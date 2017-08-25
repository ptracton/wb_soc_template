
#rm -f ${1}_ZIP.lst ${1}.vh.mem ${1}.o ${1}.elf ${1}.vh.tmp
#make TARGET=${1} CPU=ZIP


vlib work


vlog ../rtl/soc_template.v +incdir+../rtl/bus_matrix

vlog ../rtl/system_controller/system_controller.v +define+RTL

vlog ../rtl/bus_matrix/soc_bus_matrix.v +incdir+../rtl/bus_matrix
vlog ../behvioral/wb_intercon/wb_arbiter.v +incdir+../rtl/bus_matrix +incdir+../behvioral/verilog_utils
vlog ../behvioral/wb_intercon/wb_mux.v +incdir+../rtl/bus_matrix +incdir+../behvioral/verilog_utils
vlog ../behvioral/verilog-arbiter/arbiter.v +incdir+../rtl/bus_matrix +incdir+../behvioral/verilog_utils

vlog ../testbench/testbench.v +incdir+../testbench 
vlog ../testbench/dump.v +incdir+../testbench 
vlog ../tasks/test_tasks.v +incdir+../testbench

vlog ../behvioral/wb_bfm/wb_bfm_master.v +incdir+../behvioral/wb_bfm +incdir+../testbench
      
vlog ../rtl/uart16550/rtl/verilog/raminfr.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_debug_if.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_receiver.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_regs.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_rfifo.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_sync_flops.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_tfifo.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_top.v +incdir+../rtl/uart16550/rtl/verilog/ 
vlog ../rtl/uart16550/rtl/verilog/uart_transmitter.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../rtl/uart16550/rtl/verilog/uart_wb.v +incdir+../rtl/uart16550/rtl/verilog/
vlog ../tasks/uart_tasks.v +incdir+../rtl/uart16550/rtl/verilog/

vlog ../behvioral/wb_master/wb_master_model.v +incdir+../testbench

vlog ../rtl/wb_ram/rtl/verilog/wb_rom.v +incdir+../behvioral/wb_common/ +define+RTL
vlog ../rtl/wb_ram/rtl/verilog/wb_ram.v +incdir+../behvioral/wb_common/ +define+RTL
vlog ../rtl/wb_ram/rtl/verilog/wb_ram_generic.v +incdir+../behvioral/wb_common/


vlog ../rtl/cpu/cpu_wrapper.v +incdir+../rtl/cpu/ +incdir+../rtl/includes/ +define+WISHBONE_CPU_ZIP

vlog ../testbench/fw_interface/fw_interface.v +define+SIMULATION
vlog ../testbench/fw_interface/fw_interface_wb.v +define+SIMULATION 
vlog ../testbench/fw_interface/fw_interface_logic.v +define+SIMULATION +incdir+../testbench 
vlog ../rtl/tools/edge_detection.v +incdir+../testbench 

do ../rtl/ZIP/zip_rtl.do


vlog ${1}.v +incdir+../testbench +define+RTL +define+SIMULATION_NAME=${1}

vsim -voptargs=+acc work.testbench
do wave.do
run -all

