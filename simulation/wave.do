onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_ACK_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_ADR_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_BTE_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_CTI_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_CYC_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_DAT_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_DAT_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_ERR_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_LOCK_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_RTY_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_SEL_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_STB_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/D_WE_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_ACK_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_ADR_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_BTE_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_CTI_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_CYC_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_DAT_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_DAT_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_ERR_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_LOCK_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_RTY_I
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_SEL_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_STB_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/I_WE_O
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/clk_i
add wave -noupdate -group LM32_TOP /testbench/dut/cpu_wrapper/cpu/cpu/rst_i
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/instruction_d
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/interrupt
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/pc_d
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/pc_f
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/pc_m
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/pc_w
add wave -noupdate -group LM32_TOP -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/cpu/pc_x
add wave -noupdate -group LM32_TOP -radix hexadecimal -childformat {{{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0]} -radix hexadecimal -childformat {{{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][31]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][30]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][29]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][28]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][27]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][26]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][25]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][24]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][23]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][22]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][21]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][20]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][19]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][18]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][17]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][16]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][15]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][14]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][13]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][12]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][11]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][10]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][9]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][8]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][7]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][6]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][5]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][4]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][3]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][2]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][1]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][0]} -radix hexadecimal}}} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[1]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[2]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[3]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[4]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[5]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[6]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[7]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[8]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[9]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[10]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[11]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[12]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[13]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[14]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[15]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[16]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[17]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[18]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[19]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[20]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[21]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[22]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[23]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[24]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[25]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[26]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[27]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[28]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[29]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[30]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[31]} -radix hexadecimal}} -subitemconfig {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0]} {-height 17 -radix hexadecimal -childformat {{{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][31]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][30]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][29]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][28]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][27]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][26]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][25]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][24]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][23]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][22]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][21]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][20]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][19]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][18]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][17]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][16]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][15]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][14]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][13]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][12]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][11]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][10]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][9]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][8]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][7]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][6]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][5]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][4]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][3]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][2]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][1]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][0]} -radix hexadecimal}}} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][31]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][30]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][29]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][28]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][27]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][26]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][25]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][24]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][23]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][22]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][21]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][20]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][19]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][18]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][17]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][16]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][15]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][14]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][13]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][12]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][11]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][10]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][9]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][8]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][7]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][6]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][5]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][4]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][3]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][2]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][1]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[0][0]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[1]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[2]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[3]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[4]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[5]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[6]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[7]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[8]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[9]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[10]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[11]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[12]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[13]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[14]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[15]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[16]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[17]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[18]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[19]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[20]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[21]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[22]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[23]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[24]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[25]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[26]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[27]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[28]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[29]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[30]} {-height 17 -radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/cpu/registers[31]} {-height 17 -radix hexadecimal}} /testbench/dut/cpu_wrapper/cpu/cpu/registers
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
add wave -noupdate -group {ROM ROM} -radix hexadecimal /testbench/dut/rom0/ram0/dout
add wave -noupdate -group {ROM ROM} -radix hexadecimal /testbench/dut/rom0/ram0/raddr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_rst
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_rst_i
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
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/clk_i
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_ack_i
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_adr_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_bte_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_cti_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_cyc_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_dat_i
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_dat_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_err_i
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_rty_i
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_sel_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_stb_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/iwbm_we_o
add wave -noupdate -group {CPU WRAPPER} -radix hexadecimal /testbench/dut/cpu_wrapper/rst_i
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_clk_i
add wave -noupdate -group {BUS MATRIX} /testbench/dut/wb_intercon0/wb_iwmb_rty_o
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_ack
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_dat
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_err
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_rty
add wave -noupdate -group {RAM RAM} -radix hexadecimal /testbench/dut/ram0/ram0/clk
add wave -noupdate -group {RAM RAM} -radix hexadecimal /testbench/dut/ram0/ram0/din
add wave -noupdate -group {RAM RAM} -radix hexadecimal /testbench/dut/ram0/ram0/dout
add wave -noupdate -group {RAM RAM} -radix hexadecimal /testbench/dut/ram0/ram0/raddr
add wave -noupdate -group {RAM RAM} -radix hexadecimal /testbench/dut/ram0/ram0/waddr
add wave -noupdate -group {RAM RAM} -radix hexadecimal /testbench/dut/ram0/ram0/we
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/baud_o
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/fcr
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/ier
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/iir
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/int_o
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/lcr
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/lsr
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/mcr
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/msr
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/rf_count
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/rstate
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/srx_pad_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/stx_pad_o
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_ack_o
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_adr_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_adr_int
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_clk_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_cyc_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_dat32_o
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_dat8_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_dat8_o
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_dat_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_dat_o
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_rst_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_sel_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_stb_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_we_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/we_o
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/a
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/clk
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/di
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/dpo
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/dpra
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal -childformat {{{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[15]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[14]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[13]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[12]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[11]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[10]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[9]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[8]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[7]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[6]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[5]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[4]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[3]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[2]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[1]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[0]} -radix hexadecimal}} -expand -subitemconfig {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[15]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[14]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[13]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[12]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[11]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[10]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[9]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[8]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[7]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[6]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[5]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[4]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[3]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[2]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[1]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[0]} {-height 17 -radix hexadecimal}} /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/we
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/receiver/clk
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_adr_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_cyc_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_dat_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_dat_o
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_sel_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_stb_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_we_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/receiver/rf_data_in
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/clk
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/dl
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/dlab
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/fcr
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/ier
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/iir
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/int_o
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/lcr
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/lsr
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/mcr
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/msr
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/rf_count
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/rf_data_out
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/rf_pop
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/serial_in
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/serial_out
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/regs/trigger_level
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5027540 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 437
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
WaveRestoreZoom {0 ps} {11031300 ps}