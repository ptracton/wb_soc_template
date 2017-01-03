onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/CLKFBOUT
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/CLK_OUT
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/LOCKED
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/RESET_IN
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/clk_i
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/clk_sys_i
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/nrst_i
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/rst_count
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/rst_i
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/rst_sys_i
add wave -noupdate -expand -group {SYS CON XIL} -radix hexadecimal /testbench/dut/sys_con/sys_con_xil/xclk_buf
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {525000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 490
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
WaveRestoreZoom {2411161289 ps} {2411270459 ps}
bookmark add wave bookmark0 {{216341800 ps} {216738760 ps}} 0
