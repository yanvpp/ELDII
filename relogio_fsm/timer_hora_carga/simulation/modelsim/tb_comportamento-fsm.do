# TESTES APENAS DO COMPONENTE DA FSM PARA VERIFICAR O COMPORTAMENTO

vlib rtl_work
vmap work rtl_work
vcom -93 -work work {../../sync_keys.vhd}
vcom -93 -work work {../../timer_hora_carga.vhd}
vcom -93 -work work {../../bin2bcd.vhd}
vcom -93 -work work {../../top_timer_de2_115.vhd}
vcom -93 -work work {../../bcd2ssd.vhd}
vcom -93 -work work {../../blink.vhd}
vcom -93 -work work {../../relogio_fsm.vhd}

vsim work.relogio_fsm
add wave -position insertpoint  sim:/relogio_fsm/*

# Cria um clock que começa em 1, vai para 0 em 50 ns, repetindo a cada 100 ns.
force -freeze sim:/relogio_fsm/clk 1 0, 0 {50 ns} -r 100 ns

# RESET E VALORES PADRAO
force -freeze sim:/relogio_fsm/ajuste 0 0
force -freeze sim:/relogio_fsm/incrementa 0 0
force -freeze sim:/relogio_fsm/decrementa 0 0
force -freeze sim:/relogio_fsm/hora_in 00000 0
force -freeze sim:/relogio_fsm/min_in 000000 0
force -freeze sim:/relogio_fsm/seg_in 000000 0
force -freeze sim:/relogio_fsm/reset 1 0
run 150 ns
force -freeze sim:/relogio_fsm/reset 0 0
run 100 ns

# TESTE DE TRANSICAO COM O ADJUST
force -freeze sim:/relogio_fsm/ajuste 1 0
run 100 ns
force -freeze sim:/relogio_fsm/ajuste 0 0
run 200 ns

# INCREMENTAR HORA
force -freeze sim:/relogio_fsm/hora_in 01010 0
force -freeze sim:/relogio_fsm/incrementa 1 0
run 100 ns
force -freeze sim:/relogio_fsm/incrementa 0 0
run 200 ns

# DECREMENTAR HORA
force -freeze sim:/relogio_fsm/decrementa 1 0 
run 100 ns
force -freeze sim:/relogio_fsm/decrementa 0 0 
run 200 ns

# TRANSICAO PARA MINUTOS
force -freeze sim:/relogio_fsm/ajuste 1 0
run 100 ns
force -freeze sim:/relogio_fsm/ajuste 0 0
run 200 ns

# INCREMENTANDO MINUTO
force -freeze sim:/relogio_fsm/incrementa 1 0
run 100 ns
force -freeze sim:/relogio_fsm/incrementa 0 0
run 200 ns

# DECREMENTANDO MINUTO
force -freeze sim:/relogio_fsm/decrementa 1 0
run 100 ns
force -freeze sim:/relogio_fsm/decrementa 0 0
run 200 ns

# TRANSICAO PARA SEUNDO
force -freeze sim:/relogio_fsm/ajuste 1 0
run 100 ns
force -freeze sim:/relogio_fsm/ajuste 0 0
run 200 ns

# TESTES INCREMENTANDO SEGUNDO
force -freeze sim:/relogio_fsm/seg_in 111011 0 
force -freeze sim:/relogio_fsm/incrementa 1 0
run 100 ns
force -freeze sim:/relogio_fsm/decrementa 0 0
run 200 ns

# TESTES DECREMENTANDO SEGUNDO (Corrigido para 000000)
force -freeze sim:/relogio_fsm/seg_in 000000 0 
force -freeze sim:/relogio_fsm/decrementa 1 0
run 100 ns
force -freeze sim:/relogio_fsm/decrementa 0 0
run 200 ns

# TRANSICAO PARA IDLE
force -freeze sim:/relogio_fsm/ajuste 1 0
run 100 ns
force -freeze sim:/relogio_fsm/ajuste 0 0
run 300 ns

wave zoom full