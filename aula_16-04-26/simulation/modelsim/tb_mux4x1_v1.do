vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../mux4x1.vhd}

vsim work.mux4x1

vsim work.logica_pura

add wave -position insertpoint  \
sim:/mux4x1/X \
sim:/mux4x1/Sel \
sim:/mux4x1/Y
force -freeze sim:/mux4x1/X 0001 0
run
force -freeze sim:/mux4x1/X 0010 0
force -freeze sim:/mux4x1/Sel 01 0
run
force -freeze sim:/mux4x1/X 0100 0
force -freeze sim:/mux4x1/Sel 10 0
run
force -freeze sim:/mux4x1/X 1000 0
force -freeze sim:/mux4x1/Sel 11 0
run
