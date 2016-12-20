onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_ACK_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_ADR_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_BTE_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_CTI_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_CYC_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_DAT_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_DAT_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_ERR_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_LOCK_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_RTY_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_SEL_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_STB_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/D_WE_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_ACK_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_ADR_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_BTE_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_CTI_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_CYC_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_DAT_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_DAT_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_ERR_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_LOCK_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_RTY_I
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_SEL_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_STB_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/I_WE_O
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/clk_i
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/interrupt
add wave -noupdate -group LM32 -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/rst_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/VDD
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/VSS
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/clk_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/clk_sys_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/interrupts
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/nrst_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/reset_sys_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/rst_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/uart_interrupt
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/uart_rx
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/uart_tx
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_clk
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_clk_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_debug_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_dwmb_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_ram_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_rst
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_rst_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_debug_ack
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_debug_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_debug_err
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_debug_rty
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_ack
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_err
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_dwmb_rty
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_ack
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_err
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_iwmb_rty
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_ack
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_err
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_ram_rty
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_ack
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_err
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_rty
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_ack
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_err
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_rty
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/RX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/TX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/clk
add wave -noupdate -group TESTBENCH -radix hexadecimal -childformat {{{/testbench/read_word[31]} -radix hexadecimal} {{/testbench/read_word[30]} -radix hexadecimal} {{/testbench/read_word[29]} -radix hexadecimal} {{/testbench/read_word[28]} -radix hexadecimal} {{/testbench/read_word[27]} -radix hexadecimal} {{/testbench/read_word[26]} -radix hexadecimal} {{/testbench/read_word[25]} -radix hexadecimal} {{/testbench/read_word[24]} -radix hexadecimal} {{/testbench/read_word[23]} -radix hexadecimal} {{/testbench/read_word[22]} -radix hexadecimal} {{/testbench/read_word[21]} -radix hexadecimal} {{/testbench/read_word[20]} -radix hexadecimal} {{/testbench/read_word[19]} -radix hexadecimal} {{/testbench/read_word[18]} -radix hexadecimal} {{/testbench/read_word[17]} -radix hexadecimal} {{/testbench/read_word[16]} -radix hexadecimal} {{/testbench/read_word[15]} -radix hexadecimal} {{/testbench/read_word[14]} -radix hexadecimal} {{/testbench/read_word[13]} -radix hexadecimal} {{/testbench/read_word[12]} -radix hexadecimal} {{/testbench/read_word[11]} -radix hexadecimal} {{/testbench/read_word[10]} -radix hexadecimal} {{/testbench/read_word[9]} -radix hexadecimal} {{/testbench/read_word[8]} -radix hexadecimal} {{/testbench/read_word[7]} -radix hexadecimal} {{/testbench/read_word[6]} -radix hexadecimal} {{/testbench/read_word[5]} -radix hexadecimal} {{/testbench/read_word[4]} -radix hexadecimal} {{/testbench/read_word[3]} -radix hexadecimal} {{/testbench/read_word[2]} -radix hexadecimal} {{/testbench/read_word[1]} -radix hexadecimal} {{/testbench/read_word[0]} -radix hexadecimal}} -subitemconfig {{/testbench/read_word[31]} {-radix hexadecimal} {/testbench/read_word[30]} {-radix hexadecimal} {/testbench/read_word[29]} {-radix hexadecimal} {/testbench/read_word[28]} {-radix hexadecimal} {/testbench/read_word[27]} {-radix hexadecimal} {/testbench/read_word[26]} {-radix hexadecimal} {/testbench/read_word[25]} {-radix hexadecimal} {/testbench/read_word[24]} {-radix hexadecimal} {/testbench/read_word[23]} {-radix hexadecimal} {/testbench/read_word[22]} {-radix hexadecimal} {/testbench/read_word[21]} {-radix hexadecimal} {/testbench/read_word[20]} {-radix hexadecimal} {/testbench/read_word[19]} {-radix hexadecimal} {/testbench/read_word[18]} {-radix hexadecimal} {/testbench/read_word[17]} {-radix hexadecimal} {/testbench/read_word[16]} {-radix hexadecimal} {/testbench/read_word[15]} {-radix hexadecimal} {/testbench/read_word[14]} {-radix hexadecimal} {/testbench/read_word[13]} {-radix hexadecimal} {/testbench/read_word[12]} {-radix hexadecimal} {/testbench/read_word[11]} {-radix hexadecimal} {/testbench/read_word[10]} {-radix hexadecimal} {/testbench/read_word[9]} {-radix hexadecimal} {/testbench/read_word[8]} {-radix hexadecimal} {/testbench/read_word[7]} {-radix hexadecimal} {/testbench/read_word[6]} {-radix hexadecimal} {/testbench/read_word[5]} {-radix hexadecimal} {/testbench/read_word[4]} {-radix hexadecimal} {/testbench/read_word[3]} {-radix hexadecimal} {/testbench/read_word[2]} {-radix hexadecimal} {/testbench/read_word[1]} {-radix hexadecimal} {/testbench/read_word[0]} {-radix hexadecimal}} /testbench/read_word
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
add wave -noupdate -expand -group ROM -radix hexadecimal /testbench/dut/rom0/wb_we_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {21275000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 586
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
WaveRestoreZoom {0 ps} {456471750 ps}
