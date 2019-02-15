onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/RX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/TX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/clk
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/reset
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/wb_clk
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/wb_rst
add wave -noupdate -group SYSCON -radix hexadecimal /testbench/dut/sys_con/clk_i
add wave -noupdate -group SYSCON -radix hexadecimal /testbench/dut/sys_con/clk_sys_i
add wave -noupdate -group SYSCON -radix hexadecimal /testbench/dut/sys_con/nrst_i
add wave -noupdate -group SYSCON -radix hexadecimal /testbench/dut/sys_con/rst_i
add wave -noupdate -group SYSCON -radix hexadecimal /testbench/dut/sys_con/rst_sys_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/clk_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/clk_sys_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/nrst_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/reset_sys_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/rst_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_clk
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_clk_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_ack_o
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_adr_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_bte_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_clk_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_cti_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_cyc_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_dat_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_dat_o
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_err_o
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_rst_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_sel_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_stb_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/clk_i
add wave -noupdate -expand -group {CPU WRAPPER} -childformat {{{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[0]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[1]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[2]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[3]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[4]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[5]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[6]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[7]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[8]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[9]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[10]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[11]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[12]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[13]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[14]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[15]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[16]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[17]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[18]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[19]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[20]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[21]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[22]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[23]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[24]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[25]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[26]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[27]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[28]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[29]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[30]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[31]} -radix hexadecimal}} -subitemconfig {{/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[0]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[1]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[2]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[3]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[4]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[5]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[6]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[7]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[8]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[9]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[10]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[11]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[12]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[13]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[14]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[15]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[16]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[17]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[18]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[19]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[20]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[21]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[22]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[23]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[24]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[25]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[26]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[27]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[28]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[29]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[30]} {-height 16 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[31]} {-height 16 -radix hexadecimal}} /testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_ack_i
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
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/wbm_adr_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/wbm_cyc_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/wbm_dat_i
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/wbm_dat_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/wbm_sel_o
add wave -noupdate -expand -group {CPU WRAPPER} /testbench/dut/cpu_wrapper/cpu/wbm_stb_o
add wave -noupdate -expand -group {CPU WRAPPER} /testbench/dut/cpu_wrapper/cpu/wbm_we_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[10]}
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal {/testbench/dut/cpu_wrapper/cpu/picorv32_core/cpuregs[15]}
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/q_insn_imm
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/q_insn_opcode
add wave -noupdate -expand -group {CPU WRAPPER} -color Orchid -radix ascii -radixshowbase 0 /testbench/dut/cpu_wrapper/cpu/picorv32_core/q_ascii_instr
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/reg_pc
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/reg_op1
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/instr_sb
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/mem_do_prefetch
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/mem_do_rinst
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/mem_la_addr
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/picorv32_core/mem_addr
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_adr_o
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/mem_instr
add wave -noupdate -expand -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/rv_wbm_adr_o
add wave -noupdate -expand -group {CPU WRAPPER} -color {Medium Blue} -radix hexadecimal /testbench/dut/cpu_wrapper/dwbm_adr_o
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/data
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/error_reg
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/expected_reg
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/index
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/interrupts
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/measured_reg
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_compare
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_error
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_report
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/new_warning
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/report_reg
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/trigger_reg
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/warning_reg
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_ack_o
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_adr_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_bte_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_clk_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_cti_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_cyc_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_dat_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_dat_o
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_err_o
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_rst_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_rty_o
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_sel_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_stb_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/wb_we_i
add wave -noupdate -group {FW IF} -radix hexadecimal /testbench/dut/fw_if/write_mem
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_clk_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_rst_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_adr_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_dat_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_dat_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_we_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_stb_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_cyc_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_sel_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_ack_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/int_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/srx_pad_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/stx_pad_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/rts_pad_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/cts_pad_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/dtr_pad_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/dsr_pad_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/ri_pad_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/dcd_pad_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/baud_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_dat8_i
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_dat8_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_dat32_o
add wave -noupdate -group {DUT UART} -radix hexadecimal /testbench/dut/uart0/wb_adr_int
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/clk
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_rst_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_we_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_stb_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_cyc_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_sel_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat_o
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat_is
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_int
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat8_o
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat8_i
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat32_o
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_ack_o
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/we_o
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/re_o
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_is
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_we_is
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_cyc_is
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_stb_is
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_sel_is
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wre
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wbstate
add wave -noupdate -expand -group {DUT UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_int_lsb
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/clk
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_rst_i
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_addr_i
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_dat_i
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_dat_o
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_we_i
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_re_i
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/stx_pad_o
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/srx_pad_i
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/ier
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/iir
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/fcr
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/mcr
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/lcr
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/msr
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/lsr
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/rf_count
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/tf_count
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/tstate
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/rstate
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/enable
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/dl
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/dlc
add wave -noupdate -group {DUT UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/dlab
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4115000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 475
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
WaveRestoreZoom {3785707 ps} {4224293 ps}
