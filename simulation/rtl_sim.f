+libext+.v
+define+VERBOSE
+define+SIM
+define+RTL_SIM
+define+SIMULATION
      
+incdir+simulation
+incdir+../behvioral/verilog_utils
+incdir+../behvioral/wb_common/
+incdir+../rtl/includes/

//
// SoC Top Level
//
../rtl/soc_template.v

//
// System Controller for clocks and resets
//
../rtl/system_controller/system_controller.v

//
// Bus Matrix
//
+incdir+../rtl/bus_matrix
../rtl/bus_matrix/soc_bus_matrix.v
../behvioral/wb_intercon/wb_arbiter.v
../behvioral/wb_intercon/wb_mux.v
../behvioral/verilog-arbiter/arbiter.v

//
// Test Bench
//
+incdir+../testbench
../testbench/testbench.v
../testbench/dump.v
../tasks/test_tasks.v

//
// Bus Functional Master for test bench UART
//
+incdir+../behvioral/wb_bfm
../behvioral/wb_bfm/wb_bfm_master.v

//
// UART 16550
//
+incdir+../rtl/uart16550/rtl/verilog/
../rtl/uart16550/rtl/verilog/raminfr.v
../rtl/uart16550/rtl/verilog/uart_debug_if.v
../rtl/uart16550/rtl/verilog/uart_receiver.v
../rtl/uart16550/rtl/verilog/uart_regs.v
../rtl/uart16550/rtl/verilog/uart_rfifo.v
../rtl/uart16550/rtl/verilog/uart_sync_flops.v
../rtl/uart16550/rtl/verilog/uart_tfifo.v
../rtl/uart16550/rtl/verilog/uart_top.v
../rtl/uart16550/rtl/verilog/uart_transmitter.v
../rtl/uart16550/rtl/verilog/uart_wb.v
../tasks/uart_tasks.v

//
// Wishbone Master for UART access
//
../behvioral/wb_master/wb_master_model.v

//
// Memory model for RAM/ROM
//
../rtl/wb_ram/rtl/verilog/wb_ram.v
../rtl/wb_ram/rtl/verilog/wb_ram_generic.v

//
//
//
+incdir+../rtl/cpu/
../rtl/cpu/cpu_wrapper.v

