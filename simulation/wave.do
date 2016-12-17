onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_uart_stb
add wave -noupdate -group DUT -color Magenta -radix hexadecimal /testbench/dut/wb_m2s_uart_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_uart_dat
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_clk_i
add wave -noupdate -group {BUS MATRIX} /testbench/dut/wb_intercon0/wb_iwmb_rty_o
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_ack
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_dat
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_err
add wave -noupdate -group {BUS MATRIX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_s2m_iwmb_rom_rty
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
add wave -noupdate -group {UART 0} -radix hexadecimal -childformat {{{/testbench/dut/uart0/wb_sel_i[3]} -radix hexadecimal} {{/testbench/dut/uart0/wb_sel_i[2]} -radix hexadecimal} {{/testbench/dut/uart0/wb_sel_i[1]} -radix hexadecimal} {{/testbench/dut/uart0/wb_sel_i[0]} -radix hexadecimal}} -subitemconfig {{/testbench/dut/uart0/wb_sel_i[3]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/wb_sel_i[2]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/wb_sel_i[1]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/wb_sel_i[0]} {-height 17 -radix hexadecimal}} /testbench/dut/uart0/wb_sel_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_stb_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/wb_we_i
add wave -noupdate -group {UART 0} -radix hexadecimal /testbench/dut/uart0/we_o
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/clk
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/re_o
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_ack_o
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_int
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_int_lsb
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_adr_is
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_cyc_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_cyc_is
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat32_o
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat8_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat8_o
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat_is
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_dat_o
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_rst_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_sel_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_sel_is
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_stb_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_stb_is
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_we_i
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wb_we_is
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wbstate
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/we_o
add wave -noupdate -expand -group {UART WB IF} -radix hexadecimal /testbench/dut/uart0/wb_interface/wre
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/clk
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_addr_i
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_dat_i
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_we_i
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/dl
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/dlab
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/enable
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/fcr
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/rx_reset
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/tx_reset
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/fifo_read
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/fifo_write
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/ier
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/iir
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/int_o
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/lcr
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/lsr
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/mcr
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/msr
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/rf_count
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/rf_data_out
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/serial_in
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/serial_out
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/srx_pad
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/srx_pad_i
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/tf_count
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/tf_push
add wave -noupdate -expand -group {UART REGS} -radix hexadecimal /testbench/dut/uart0/regs/wb_addr_i
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/a
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/clk
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/di
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/dpo
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/dpra
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal -childformat {{{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[15]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[14]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[13]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[12]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[11]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[10]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[9]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[8]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[7]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[6]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[5]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[4]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[3]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[2]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[1]} -radix hexadecimal} {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[0]} -radix hexadecimal}} -expand -subitemconfig {{/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[15]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[14]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[13]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[12]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[11]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[10]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[9]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[8]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[7]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[6]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[5]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[4]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[3]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[2]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[1]} {-height 17 -radix hexadecimal} {/testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram[0]} {-height 17 -radix hexadecimal}} /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/ram
add wave -noupdate -group {DUT UART TX TFIFO} -radix hexadecimal /testbench/dut/uart0/regs/transmitter/fifo_tx/tfifo/we
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/RX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/TX
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/clk
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/read_word
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/reset
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_ack
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_adr
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_cyc
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_dat_i
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_dat_o
add wave -noupdate -group TESTBENCH -color Magenta -radix hexadecimal /testbench/uart0_int
add wave -noupdate -group TESTBENCH -radix hexadecimal -childformat {{{/testbench/uart0_sel[3]} -radix hexadecimal} {{/testbench/uart0_sel[2]} -radix hexadecimal} {{/testbench/uart0_sel[1]} -radix hexadecimal} {{/testbench/uart0_sel[0]} -radix hexadecimal}} -subitemconfig {{/testbench/uart0_sel[3]} {-height 17 -radix hexadecimal} {/testbench/uart0_sel[2]} {-height 17 -radix hexadecimal} {/testbench/uart0_sel[1]} {-height 17 -radix hexadecimal} {/testbench/uart0_sel[0]} {-height 17 -radix hexadecimal}} /testbench/uart0_sel
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_stb
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/uart0_we
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/wb_clk
add wave -noupdate -group TESTBENCH -radix hexadecimal /testbench/wb_rst
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/baud_o
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/srx_pad_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/stx_pad_o
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_ack_o
add wave -noupdate -group {TB UART} -radix hexadecimal -childformat {{{/testbench/uart0/wb_adr_i[4]} -radix hexadecimal} {{/testbench/uart0/wb_adr_i[3]} -radix hexadecimal} {{/testbench/uart0/wb_adr_i[2]} -radix hexadecimal} {{/testbench/uart0/wb_adr_i[1]} -radix hexadecimal} {{/testbench/uart0/wb_adr_i[0]} -radix hexadecimal}} -subitemconfig {{/testbench/uart0/wb_adr_i[4]} {-height 17 -radix hexadecimal} {/testbench/uart0/wb_adr_i[3]} {-height 17 -radix hexadecimal} {/testbench/uart0/wb_adr_i[2]} {-height 17 -radix hexadecimal} {/testbench/uart0/wb_adr_i[1]} {-height 17 -radix hexadecimal} {/testbench/uart0/wb_adr_i[0]} {-height 17 -radix hexadecimal}} /testbench/uart0/wb_adr_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_adr_int
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_clk_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_cyc_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_dat32_o
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_dat8_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_dat8_o
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_dat_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_dat_o
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_rst_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_sel_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_stb_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/wb_we_i
add wave -noupdate -group {TB UART} -radix hexadecimal /testbench/uart0/we_o
add wave -noupdate -group {UART MASTER} -radix hexadecimal /testbench/uart_master0/adr
add wave -noupdate -group {UART MASTER} -radix hexadecimal /testbench/uart_master0/clk
add wave -noupdate -group {UART MASTER} -radix hexadecimal /testbench/uart_master0/din
add wave -noupdate -group {UART MASTER} -radix hexadecimal /testbench/uart_master0/dout
add wave -noupdate -group {UART MASTER} -radix hexadecimal /testbench/uart_master0/sel
add wave -noupdate -group {UART MASTER} -radix hexadecimal /testbench/uart_master0/stb
add wave -noupdate -group {UART MASTER} -radix hexadecimal /testbench/uart_master0/we
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/clk
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/enable
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/rbit_counter
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/rbit_in
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/rf_count
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/rf_data_in
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/rf_data_out
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/rshift
add wave -noupdate -group {TB UART RECEIVER} -radix hexadecimal /testbench/uart0/regs/receiver/rstate
add wave -noupdate -group {TB UART RX Receive FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/count
add wave -noupdate -group {TB UART RX Receive FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/data_in
add wave -noupdate -group {TB UART RX Receive FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/data_out
add wave -noupdate -group {TB UART RX Receive FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/fifo
add wave -noupdate -group {TB UART RX Receive FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/fifo_reset
add wave -noupdate -group {TB UART RX Receive FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/pop
add wave -noupdate -group {TB UART RX Receive FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/push
add wave -noupdate -group {TB UART RX FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/rfifo/clk
add wave -noupdate -group {TB UART RX FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/rfifo/di
add wave -noupdate -group {TB UART RX FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/rfifo/dpo
add wave -noupdate -group {TB UART RX FIFO} -radix hexadecimal /testbench/uart0/regs/receiver/fifo_rx/rfifo/we
add wave -noupdate -group {TB UART RX FIFO} -radix hexadecimal -childformat {{{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[15]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[14]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[13]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[12]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[11]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[10]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[9]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[8]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[7]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[6]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[5]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[4]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[3]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[2]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[1]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0]} -radix hexadecimal -childformat {{{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][7]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][6]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][5]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][4]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][3]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][2]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][1]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][0]} -radix hexadecimal}}}} -subitemconfig {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[15]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[14]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[13]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[12]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[11]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[10]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[9]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[8]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[7]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[6]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[5]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[4]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[3]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[2]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[1]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0]} {-height 17 -radix hexadecimal -childformat {{{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][7]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][6]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][5]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][4]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][3]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][2]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][1]} -radix hexadecimal} {{/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][0]} -radix hexadecimal}}} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][7]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][6]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][5]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][4]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][3]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][2]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][1]} {-height 17 -radix hexadecimal} {/testbench/uart0/regs/receiver/fifo_rx/rfifo/ram[0][0]} {-height 17 -radix hexadecimal}} /testbench/uart0/regs/receiver/fifo_rx/rfifo/ram
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/clk
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/re_o
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_ack_o
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_adr_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_adr_int
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_adr_int_lsb
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_adr_is
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_cyc_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_cyc_is
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_dat32_o
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_dat8_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_dat8_o
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_dat_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_dat_is
add wave -noupdate -group {TB UART WB IF} -color Blue -radix hexadecimal /testbench/uart0/wb_interface/wb_dat_o
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_rst_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_sel_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_sel_is
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_stb_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_stb_is
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_we_i
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wb_we_is
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wbstate
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/we_o
add wave -noupdate -group {TB UART WB IF} -radix hexadecimal /testbench/uart0/wb_interface/wre
add wave -noupdate -group {TB UART REGS} -radix hexadecimal -childformat {{{/testbench/uart0/regs/wb_addr_i[4]} -radix unsigned} {{/testbench/uart0/regs/wb_addr_i[3]} -radix unsigned} {{/testbench/uart0/regs/wb_addr_i[2]} -radix unsigned} {{/testbench/uart0/regs/wb_addr_i[1]} -radix unsigned} {{/testbench/uart0/regs/wb_addr_i[0]} -radix unsigned}} -subitemconfig {{/testbench/uart0/regs/wb_addr_i[4]} {-height 17 -radix unsigned} {/testbench/uart0/regs/wb_addr_i[3]} {-height 17 -radix unsigned} {/testbench/uart0/regs/wb_addr_i[2]} {-height 17 -radix unsigned} {/testbench/uart0/regs/wb_addr_i[1]} {-height 17 -radix unsigned} {/testbench/uart0/regs/wb_addr_i[0]} {-height 17 -radix unsigned}} /testbench/uart0/regs/wb_addr_i
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/wb_dat_i
add wave -noupdate -group {TB UART REGS} -color Blue -radix hexadecimal /testbench/uart0/regs/wb_dat_o
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/wb_we_i
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/dl
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/dlab
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/fcr
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/ier
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/iir
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/int_o
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/lcr
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/lsr
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/mcr
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/msr
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/rf_count
add wave -noupdate -group {TB UART REGS} -radix hexadecimal -childformat {{{/testbench/uart0/regs/rf_data_out[10]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[9]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[8]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[7]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[6]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[5]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[4]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[3]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[2]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[1]} -radix unsigned} {{/testbench/uart0/regs/rf_data_out[0]} -radix unsigned}} -subitemconfig {{/testbench/uart0/regs/rf_data_out[10]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[9]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[8]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[7]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[6]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[5]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[4]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[3]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[2]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[1]} {-height 17 -radix unsigned} {/testbench/uart0/regs/rf_data_out[0]} {-height 17 -radix unsigned}} /testbench/uart0/regs/rf_data_out
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/rf_pop
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/rf_push_pulse
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/rx_reset
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/tf_count
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/tf_push
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/trigger_level
add wave -noupdate -group {TB UART REGS} -radix hexadecimal /testbench/uart0/regs/tstate
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/adr
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom0/adr_r
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
add wave -noupdate -group {ROM Memory} -radix hexadecimal /testbench/dut/rom0/ram0/din
add wave -noupdate -group {ROM Memory} -radix hexadecimal /testbench/dut/rom0/ram0/dout
add wave -noupdate -group {ROM Memory} -radix hexadecimal /testbench/dut/rom0/ram0/mem
add wave -noupdate -group {ROM Memory} -radix hexadecimal /testbench/dut/rom0/ram0/raddr
add wave -noupdate -group {ROM Memory} -radix hexadecimal /testbench/dut/rom0/ram0/waddr
add wave -noupdate -group {ROM Memory} -radix hexadecimal /testbench/dut/rom0/ram0/we
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_ack_i
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_adr_o
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_bte_o
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_clk_i
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_cti_o
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_cyc_o
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_dat_i
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_dat_o
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_err_i
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_rst_i
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_rty_i
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_sel_o
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_stb_o
add wave -noupdate -group {OR1200 Instruction} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_we_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_ack_i
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_adr_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_bte_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_clk_i
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_cti_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_cyc_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_dat_i
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_dat_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_err_i
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_rst_i
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_rty_i
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_sel_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_stb_o
add wave -noupdate -group {OR1200 Data} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_we_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_ack_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_adr_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_cab_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_cyc_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_dat_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_dat_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_err_cnt
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_err_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_rty
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_rty_cnt
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_sel_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_stb
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_stb_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_stb_reg
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/biu_we_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/clk
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_ack_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_adr_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_bte_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_clk_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_cti_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_cyc_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_dat_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_dat_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_err_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_rst_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_rty_i
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_sel_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_stb_o
add wave -noupdate -group {OR1200 DW BIU} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_biu/wb_we_o
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_ack_o
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_adr_i
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_cab_i
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_cyc_i
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_dat_i
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_dat_o
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_err_o
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_sel_i
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_stb_i
add wave -noupdate -group {STORE BUFFER} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_sb/dcsb_we_i
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/clk_i
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_ack_o
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_dat_i
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_dat_o
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dcpu_adr_cpu
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dcsb_adr_dc
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dcsb_dat_dc
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dcsb_dat_sb
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_adr_o
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_dat_i
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_dat_o
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/ex_pc
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/icbiu_adr_ic
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/icbiu_adr_ic_word
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/icbiu_dat_biu
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/icbiu_dat_ic
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/icpu_adr_cpu
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/icqmem_adr_qmem
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/icqmem_dat_ic
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/id_insn
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/id_pc
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_adr_o
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_dat_i
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_dat_o
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/pic_ints_i
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/qmemdmmu_adr_dmmu
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/qmemimmu_adr_immu
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/sbbiu_adr_sb
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/sbbiu_dat_biu
add wave -noupdate -group {OR1200 TOP} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/sbbiu_dat_sb
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/clk_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/clmode_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_adr_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_dat_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_ewt_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_stall_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_stb_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dbg_we_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_ack_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_clk_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_dat_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_err_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_rst_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/dwb_rty_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_ack_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_clk_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_dat_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_err_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_rst_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/iwb_rty_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/pic_ints_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/pm_cpustall_i
add wave -noupdate -group {OR1200 TOP INPUTS} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/rst_i
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/ex_addrbase
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/ex_addrofs
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/ex_freeze
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/id_precalc_sum
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/id_addrbase
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/id_addrofs
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/clk
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/rst
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/dcpu_adr_o
add wave -noupdate -group LSU -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_lsu/dcpu_adr_r
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/clk
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/ex_forw
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/ex_freeze
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/id_freeze
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/muxed_a
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/muxed_b
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/operand_a
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/operand_b
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/rf_dataa
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/rf_datab
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/rst
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/saved_a
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/saved_b
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/sel_a
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/sel_b
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/simm
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/wb_forw
add wave -noupdate -group {OPERAND MUXES} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_operandmuxes/width
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/addr_a
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/addr_a_reg
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/addr_b
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/aw
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/ce_a
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/ce_b
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/clk_a
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/clk_b
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/di_b
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/do_a
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/dw
add wave -noupdate -group {RF A} -radix hexadecimal -childformat {{{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[31]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[30]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[29]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[28]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[27]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[26]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[25]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[24]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[23]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[22]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[21]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[20]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[19]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[18]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[17]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[16]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[15]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[14]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[13]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[12]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[11]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[10]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[9]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[8]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[7]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[6]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[5]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[4]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[3]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[2]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[1]} -radix hexadecimal} {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[0]} -radix hexadecimal}} -expand -subitemconfig {{/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[31]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[30]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[29]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[28]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[27]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[26]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[25]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[24]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[23]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[22]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[21]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[20]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[19]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[18]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[17]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[16]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[15]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[14]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[13]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[12]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[11]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[10]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[9]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[8]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[7]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[6]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[5]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[4]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[3]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[2]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[1]} {-radix hexadecimal} {/testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem[0]} {-radix hexadecimal}} /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/mem
add wave -noupdate -group {RF A} -radix hexadecimal /testbench/dut/cpu_wrapper/cpu/or1200_cpu/or1200_rf/rf_a/we_b
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
WaveRestoreZoom {21068608 ps} {21535332 ps}
