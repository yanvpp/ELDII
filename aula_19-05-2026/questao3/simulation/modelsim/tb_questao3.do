vlib rtl_work
vmap work rtl_work 

vcom -93 -work work {../../questao3.vhd}

vsim work.questao3(contadorbinario)

add wave -position insertpoint sim:/questao3/*

# INICIALIZANDO COM RESET
force -freeze sim:/questao3/reset 1
force -freeze sim:/questao3/up 1
force -freeze sim:/questao3/clk 0
run 

# TIRA O RESET
force -freeze sim:/questao3/reset 0
run 

# PRIMEIRO PULSO COMEÇA A CONTAGEM
force -freeze sim:/questao3/clk 1
run 
force -freeze sim:/questao3/clk 0
run 

# SEGUNDO PULSO 
force -freeze sim:/questao3/clk 1
run 
force -freeze sim:/questao3/clk 0
run 

# TERCEIRO PULSO
force -freeze sim:/questao3/clk 1
run 
force -freeze sim:/questao3/clk 0
run 

# MUDA CONTAGEM
force -freeze sim:/questao3/up 0
run 

# QUARTO PULSO 
force -freeze sim:/questao3/clk 1
run 
force -freeze sim:/questao3/clk 0
run 

# QUINTO PULSO
force -freeze sim:/questao3/clk 1
run 
force -freeze sim:/questao3/clk 0
run 

# SEXTO PULSO
force -freeze sim:/questao3/clk 1
run 
force -freeze sim:/questao3/clk 0
run 

# SETIMO PULSO
force -freeze sim:/questao3/clk 1
run 
force -freeze sim:/questao3/clk 0
run 

# RESET DO SISTEMA
force -freeze sim:/questao3/reset 1
run 

wave zoom full