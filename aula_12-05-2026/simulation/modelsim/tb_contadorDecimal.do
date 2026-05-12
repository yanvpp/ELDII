vlib rtl_work

vmap work rtl_work


vcom -93 -work work {../../contadorDecimal.vhd}


vsim work.contadordecimal(exemplo)


add wave -position insertpoint sim:/contadordecimal/* 

# força reset e clock em 0 para começar
force -freeze sim:/contadordecimal/reset 1 0
force -freeze sim:/contadordecimal/clk 1 0
run

force -freeze sim:/contadordecimal/reset 0 0
force -freeze sim:/contadordecimal/clk 1 0
run

force -freeze sim:/contadordecimal/clk 0 0
force -freeze sim:/contadordecimal/reset 0 0
run

force -freeze sim:/contadordecimal/clk 1 0
run

force -freeze sim:/contadordecimal/clk 0 0
run

force -freeze sim:/contadordecimal/clk 1 0
run

force -freeze sim:/contadordecimal/clk 0 0
run

force -freeze sim:/contadordecimal/clk 1 0
run

wave zoom full
