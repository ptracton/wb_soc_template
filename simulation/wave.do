onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cyc
add wave -noupdate -radix hexadecimal /testbench/dut/wb_m2s_iwmb_sel
add wave -noupdate -radix hexadecimal /testbench/dut/wb_m2s_iwmb_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_adr
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_bte
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cti
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cyc
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_sel
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_we
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_ack
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_err
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_rty
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_adr
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_bte
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cti
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cyc
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_sel
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_stb
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_we
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_ack
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_dat
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_err
add wave -noupdate -expand -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_rty
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/RX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/TX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/clk
add wave -noupdate -group TESTBENCH -radix hexadecimal -childformat {{{/testbench/read_word[31]} -radix hexadecimal} {{/testbench/read_word[30]} -radix hexadecimal} {{/testbench/read_word[29]} -radix hexadecimal} {{/testbench/read_word[28]} -radix hexadecimal} {{/testbench/read_word[27]} -radix hexadecimal} {{/testbench/read_word[26]} -radix hexadecimal} {{/testbench/read_word[25]} -radix hexadecimal} {{/testbench/read_word[24]} -radix hexadecimal} {{/testbench/read_word[23]} -radix hexadecimal} {{/testbench/read_word[22]} -radix hexadecimal} {{/testbench/read_word[21]} -radix hexadecimal} {{/testbench/read_word[20]} -radix hexadecimal} {{/testbench/read_word[19]} -radix hexadecimal} {{/testbench/read_word[18]} -radix hexadecimal} {{/testbench/read_word[17]} -radix hexadecimal} {{/testbench/read_word[16]} -radix hexadecimal} {{/testbench/read_word[15]} -radix hexadecimal} {{/testbench/read_word[14]} -radix hexadecimal} {{/testbench/read_word[13]} -radix hexadecimal} {{/testbench/read_word[12]} -radix hexadecimal} {{/testbench/read_word[11]} -radix hexadecimal} {{/testbench/read_word[10]} -radix hexadecimal} {{/testbench/read_word[9]} -radix hexadecimal} {{/testbench/read_word[8]} -radix hexadecimal} {{/testbench/read_word[7]} -radix hexadecimal} {{/testbench/read_word[6]} -radix hexadecimal} {{/testbench/read_word[5]} -radix hexadecimal} {{/testbench/read_word[4]} -radix hexadecimal} {{/testbench/read_word[3]} -radix hexadecimal} {{/testbench/read_word[2]} -radix hexadecimal} {{/testbench/read_word[1]} -radix hexadecimal} {{/testbench/read_word[0]} -radix hexadecimal}} -subitemconfig {{/testbench/read_word[31]} {-height 17 -radix hexadecimal} {/testbench/read_word[30]} {-height 17 -radix hexadecimal} {/testbench/read_word[29]} {-height 17 -radix hexadecimal} {/testbench/read_word[28]} {-height 17 -radix hexadecimal} {/testbench/read_word[27]} {-height 17 -radix hexadecimal} {/testbench/read_word[26]} {-height 17 -radix hexadecimal} {/testbench/read_word[25]} {-height 17 -radix hexadecimal} {/testbench/read_word[24]} {-height 17 -radix hexadecimal} {/testbench/read_word[23]} {-height 17 -radix hexadecimal} {/testbench/read_word[22]} {-height 17 -radix hexadecimal} {/testbench/read_word[21]} {-height 17 -radix hexadecimal} {/testbench/read_word[20]} {-height 17 -radix hexadecimal} {/testbench/read_word[19]} {-height 17 -radix hexadecimal} {/testbench/read_word[18]} {-height 17 -radix hexadecimal} {/testbench/read_word[17]} {-height 17 -radix hexadecimal} {/testbench/read_word[16]} {-height 17 -radix hexadecimal} {/testbench/read_word[15]} {-height 17 -radix hexadecimal} {/testbench/read_word[14]} {-height 17 -radix hexadecimal} {/testbench/read_word[13]} {-height 17 -radix hexadecimal} {/testbench/read_word[12]} {-height 17 -radix hexadecimal} {/testbench/read_word[11]} {-height 17 -radix hexadecimal} {/testbench/read_word[10]} {-height 17 -radix hexadecimal} {/testbench/read_word[9]} {-height 17 -radix hexadecimal} {/testbench/read_word[8]} {-height 17 -radix hexadecimal} {/testbench/read_word[7]} {-height 17 -radix hexadecimal} {/testbench/read_word[6]} {-height 17 -radix hexadecimal} {/testbench/read_word[5]} {-height 17 -radix hexadecimal} {/testbench/read_word[4]} {-height 17 -radix hexadecimal} {/testbench/read_word[3]} {-height 17 -radix hexadecimal} {/testbench/read_word[2]} {-height 17 -radix hexadecimal} {/testbench/read_word[1]} {-height 17 -radix hexadecimal} {/testbench/read_word[0]} {-height 17 -radix hexadecimal}} /testbench/read_word
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/reset
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_ack
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_adr
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_cyc
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_dat_i
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_dat_o
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_int
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_sel
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_stb
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_we
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/wb_clk
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/wb_rst
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_ack_o
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_adr_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_bte_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_clk_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_cti_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_cyc_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_dat_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_dat_o
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_err_o
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_rst_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_sel_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_stb_i
add wave -noupdate -group RAM -radix hexadecimal /testbench/dut/ram0/wb_we_i
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
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/wb_we_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/clk
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu_start
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/data_wire
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/ddata
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dmem_addr
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dmem_request
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dmem_size
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dmem_wait
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dmem_we
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/rst
add wave -noupdate -group RISCV -color {Dark Slate Blue} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/state
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_riscv_adr
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_riscv_cyc
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_riscv_stb
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_adr_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_cyc_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_stb_o
add wave -noupdate -group RISCV -color Magenta -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dstate
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_ack_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_adr_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_bte_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_cti_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_cyc_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_dat_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_dat_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_err_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_adr
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_bte
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_cti
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_cyc
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_dat
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_sel
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_stb
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_riscv_we
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_rty_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_sel_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_stb_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwbm_we_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/ext_interrupts
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/imem_wait
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/instruction
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_ack_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_bte_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_cti_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_dat_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_dat_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_err_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_rty_i
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_sel_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwbm_we_o
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/kill_wishbone_ireq
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/mem_read_value
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/pc
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/previous_dmem_access
add wave -noupdate -group RISCV -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/clk
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/active
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/aw
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/dw
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/grant
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/master_sel
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/master_sel_bits
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/num_masters
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/select
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wb_clk_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wb_rst_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_ack_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_adr_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_bte_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_cti_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_cyc_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_dat_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_dat_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_err_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_rty_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_sel_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_stb_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_we_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_ack_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_adr_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_bte_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_cti_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_cyc_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_dat_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_dat_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_err_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_rty_i
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_sel_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_stb_o
add wave -noupdate -expand -group {ARBITER ROM} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_we_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {515000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 486
configure wave -valuecolwidth 83
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
WaveRestoreZoom {626720 ps} {720700 ps}
