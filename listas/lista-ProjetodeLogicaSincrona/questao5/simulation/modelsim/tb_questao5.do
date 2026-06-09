vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../questao5.vhd}
vsim work.questao5

add wave -position insertpoint sim:/questao5/*
radix unsigned

force -freeze sim:/questao5/reset 1 0
force -freeze sim:/questao5/clk 0 0
run
force -freeze sim:/questao5/clk 1 0
run

force -freeze sim:/questao5/clk 0 0
run
force -freeze sim:/questao5/reset 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

force -freeze sim:/questao5/clk 1 0
run
force -freeze sim:/questao5/clk 0 0
run

wave zoom full