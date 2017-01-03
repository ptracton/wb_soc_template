## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_sys_i]							
set_property IOSTANDARD LVCMOS33 [get_ports clk_sys_i]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_sys_i]

##Buttons
set_property PACKAGE_PIN U18 [get_ports reset_sys_i]						
set_property IOSTANDARD LVCMOS33 [get_ports reset_sys_i]

##USB-RS232 Interface
set_property PACKAGE_PIN B18 [get_ports uart_rx]						
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property PACKAGE_PIN A18 [get_ports uart_tx]						
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]

