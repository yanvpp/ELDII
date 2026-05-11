vlib rtl_work

vmap work rtl_work


vcom -93 -work work {../../flipFlopEnable.vhd}


vsim work.ifsc_v1


add wave -position insertpoint sim:/flipflopenable/* 

force -freeze sim:/flipflopenable/rst 1 0
force -freeze sim:/flipflopenable/clk 0 0
force -freeze sim:/flipflopenable/enable 0 0
force -freeze sim:/flipflopenable/d 0 0
run 20ns

force -freeze sim:/flipflopenable/rst 0 0
force -freeze sim:/flipflopenable/enable 1 0
force -freeze sim:/flipflopenable/d 1 0
run 10ns
force -freeze sim:/flipflopenable/clk 1 0
run 20ns 

force -freeze sim:/flipflopenable/clk 0 0
force -freeze sim:/flipflopenable/enable 0 0
force -freeze sim:/flipflopenable/d 0 0
run 20ns
force -freeze sim:/flipflopenable/clk 1 0
run 20ns

force -freeze sim:/flipflopenable/clk 0 0
force -freeze sim:/flipflopenable/enable 1 0
run 20ns
force -freeze sim:/flipflopenable/clk 1 0
run 20ns

wave zoom full