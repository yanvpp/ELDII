vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../deslocamentoLivre.vhd}
vsim work.deslocamentolivre(exemplo)

add wave -position insertpoint sim:/deslocamentolivre/*

force -freeze sim:/deslocamentolivre/reset 1 0
force -freeze sim:/deslocamentolivre/clk 1 0
force -freeze sim:/deslocamentolivre/d 1 0
run

force -freeze sim:/deslocamentolivre/reset 0 0
force -freeze sim:/deslocamentolivre/clk 0 0
run

force -freeze sim:/deslocamentolivre/clk 1 0
run

force -freeze sim:/deslocamentolivre/clk 0 0
run

force -freeze sim:/deslocamentolivre/clk 1 0
run

force -freeze sim:/deslocamentolivre/d 0 0
force -freeze sim:/deslocamentolivre/clk 0 0
run

force -freeze sim:/deslocamentolivre/clk 1 0
run

force -freeze sim:/deslocamentolivre/clk 0 0
run

force -freeze sim:/deslocamentolivre/clk 1 0
run

wave zoom full