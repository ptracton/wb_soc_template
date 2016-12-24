onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/data
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/error_reg
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/expected_reg
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/index
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/interrupts
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/measured_reg
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/new_compare
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/new_error
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/new_report
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/new_warning
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/report_reg
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/warning_reg
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_ack_o
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_adr_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_bte_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_clk_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_cti_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_cyc_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_dat_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_dat_o
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_err_o
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_rst_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_rty_o
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_sel_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_stb_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/wb_we_i
add wave -noupdate -group {FW IF TOP} -radix hexadecimal /testbench/dut/fw_if/write_mem
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/control_reg_enable
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/data
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/error_reg
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/expected_reg
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/index
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/index_sel_offset
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/measured_reg
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/new_compare
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/new_error
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/new_report
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/new_warning
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/report_reg
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/sub
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/warning_reg
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_ack_o
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_adr_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_bte_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_clk_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_cti_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_cyc_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_dat_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_dat_o
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_err_o
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_rst_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_rty_o
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_sel_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_stb_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/wb_we_i
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/word_addr
add wave -noupdate -group {FW IF WB} -radix hexadecimal /testbench/dut/fw_if/wb/write_mem
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/data
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/error_reg
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/expected_reg
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/i
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/index
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/measured_reg
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/new_compare
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/new_compare_rising
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/new_error
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/new_report
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/new_report_rising
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/new_warning
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/report_reg
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/string_mem
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/test_string
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/warning_reg
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/wb_clk_i
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/wb_rst_i
add wave -noupdate -expand -group {FW IF LOGIC} -radix hexadecimal /testbench/dut/fw_if/logic_inst/write_mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {23335000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 352
configure wave -valuecolwidth 100
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
WaveRestoreZoom {86470490 ps} {153876290 ps}
