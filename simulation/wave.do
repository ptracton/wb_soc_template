onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TESTBENCH -radix hexadecimal /testbench/RX
add wave -noupdate -expand -group TESTBENCH -radix hexadecimal /testbench/TX
add wave -noupdate -expand -group TESTBENCH -radix hexadecimal /testbench/clk
add wave -noupdate -expand -group TESTBENCH -radix hexadecimal /testbench/reset
add wave -noupdate -expand -group TESTBENCH -radix hexadecimal /testbench/wb_clk
add wave -noupdate -expand -group TESTBENCH -radix hexadecimal /testbench/wb_rst
add wave -noupdate -expand -group SYSCON -radix hexadecimal /testbench/dut/sys_con/clk_i
add wave -noupdate -expand -group SYSCON -radix hexadecimal /testbench/dut/sys_con/clk_sys_i
add wave -noupdate -expand -group SYSCON -radix hexadecimal /testbench/dut/sys_con/nrst_i
add wave -noupdate -expand -group SYSCON -radix hexadecimal /testbench/dut/sys_con/rst_i
add wave -noupdate -expand -group SYSCON -radix hexadecimal /testbench/dut/sys_con/rst_sys_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/clk_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/clk_sys_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/nrst_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/reset_sys_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/rst_i
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_clk
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_clk_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_ack_o
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_adr_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_bte_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_clk_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_cti_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_cyc_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_dat_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_dat_o
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_err_o
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_rst_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_sel_i
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_stb_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/clk_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_ack_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_adr_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_bte_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_cti_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_cyc_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_dat_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_dat_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_err_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_rty_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_sel_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_stb_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_we_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/interrupts
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_ack_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_adr_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_bte_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_cti_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_cyc_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_dat_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_dat_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_err_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_rty_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_sel_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_stb_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_we_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/rst_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 274
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1569681750 ps}
