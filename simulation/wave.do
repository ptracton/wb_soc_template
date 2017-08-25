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
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal -childformat {{{/testbench/dut/cpu_wrapper/iwbm_dat_o[31]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[30]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[29]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[28]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[27]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[26]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[25]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[24]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[23]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[22]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[21]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[20]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[19]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[18]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[17]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[16]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[15]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[14]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[13]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[12]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[11]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[10]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[9]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[8]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[7]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[6]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[5]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[4]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[3]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[2]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[1]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/iwbm_dat_o[0]} -radix hexadecimal}} -subitemconfig {{/testbench/dut/cpu_wrapper/iwbm_dat_o[31]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[30]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[29]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[28]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[27]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[26]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[25]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[24]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[23]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[22]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[21]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[20]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[19]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[18]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[17]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[16]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[15]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[14]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[13]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[12]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[11]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[10]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[9]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[8]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[7]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[6]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[5]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[4]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[3]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[2]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[1]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/iwbm_dat_o[0]} {-height 16 -radix hexadecimal}} /testbench/dut/cpu_wrapper/iwbm_dat_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_err_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_rty_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_sel_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_stb_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_we_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/rst_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/data
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/error_reg
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/expected_reg
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/index
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/interrupts
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/measured_reg
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_compare
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_error
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_report
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_warning
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/report_reg
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/trigger_reg
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/warning_reg
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_ack_o
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_adr_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_bte_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_clk_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_cti_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_cyc_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_dat_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_dat_o
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_err_o
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_rst_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_rty_o
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_sel_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_stb_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_we_i
add wave -noupdate -expand -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/write_mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {255947450 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 376
configure wave -valuecolwidth 126
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
WaveRestoreZoom {30028420 ps} {514424830 ps}
