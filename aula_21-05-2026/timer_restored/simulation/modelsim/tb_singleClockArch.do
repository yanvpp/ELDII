vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../list_09_05_06_timer_CORRIGIDO_50mhz.vhd}

vsim work.timer(single_clock_arch)

add wave -position insertpoint sim:/timer/*

force -freeze sim:/timer/clk 0 0
force -freeze sim:/timer/reset 1 0
run 

force -freeze sim:/timer/reset 0 0
force -freeze sim:/timer/s_en 1 0
force -freeze sim:/timer/m_en 1 0
force -freeze sim:/timer/s_reg "111010" 0 
run

force -freeze sim:/timer/clk 1 0
run 

force -freeze sim:/timer/clk 0 0
run 

force -freeze sim:/timer/clk 1 0
run 

force -freeze sim:/timer/clk 0 0
run 

wave zoom full
