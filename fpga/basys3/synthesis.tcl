
create_project -force basys3  -part xc7a35tcpg236-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property verilog_dir {
    ../../behvioral/wb_common/
    ../../behvioral/verilog_utils
    ../../rtl/MOR1KX/rtl/verilog/
} [current_fileset]
read_verilog -library xil_defaultlib {
    basys.v
    ../../rtl/soc_template.v
    ../../behvioral/verilog_utils/verilog_utils.vh
    ../../rtl/bus_matrix/soc_bus_matrix.v
    ../../rtl/bus_matrix/soc_bus_matrix.vh
    ../../behvioral/wb_intercon/wb_arbiter.v
    ../../behvioral/wb_intercon/wb_mux.v
    ../../behvioral/verilog-arbiter/arbiter.v    
    ../../rtl/cpu/cpu_wrapper.v
    ../../rtl/system_controller/system_controller.v
    ../../rtl/system_controller/system_controller_xilinx.v
    ../../rtl/uart16550/rtl/verilog/raminfr.v
    ../../rtl/uart16550/rtl/verilog/uart_debug_if.v
    ../../rtl/uart16550/rtl/verilog/uart_receiver.v
    ../../rtl/uart16550/rtl/verilog/uart_regs.v
    ../../rtl/uart16550/rtl/verilog/uart_rfifo.v
    ../../rtl/uart16550/rtl/verilog/uart_sync_flops.v
    ../../rtl/uart16550/rtl/verilog/uart_tfifo.v
    ../../rtl/uart16550/rtl/verilog/uart_top.v
    ../../rtl/uart16550/rtl/verilog/uart_transmitter.v
    ../../rtl/uart16550/rtl/verilog/uart_wb.v
    ../../behvioral/wb_common/wb_common.v
    ../../rtl/wb_ram/rtl/verilog/wb_ram.v
    ../../rtl/wb_ram/rtl/verilog/wb_ram_xilinx.v
    ../../rtl/wb_ram/rtl/verilog/wb_ram_xilinx_bank.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx-defines.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_bus_if_wb32.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_decode_execute_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_pic.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_true_dpram_sclk.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx-sprs.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_cache_lru.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_ctrl_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_dmmu.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_rf_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_wb_mux_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_cfgrs.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_execute_alu.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_icache.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_branch_prediction.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_cpu.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_execute_ctrl_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_immu.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_simple_dpram_sclk.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_branch_predictor_saturation_counter.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_cpu_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_dcache.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_fetch_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_lsu_cappuccino.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_store_buffer.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_branch_predictor_simple.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_decode.v
    ../../rtl/MOR1KX/rtl/verilog/mor1kx_ticktimer.v    
}
read_xdc basys3.xdc
set_property used_in_implementation false [get_files basys3.xdc]

synth_design -top soc_template -part xc7a35tcpg236-3
write_checkpoint -noxdef -force synthesis/basys3.dcp
catch { report_utilization -file synthesis/basys3_utilization_synth.rpt -pb synthesis/basys3_utilization_synth.pb }
