vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/yan.pp2006/ELDIGII/aula_28-04-26/seqDec.vhd}

vsim work.seqdec_v3

add wave -position insertpoint  \
sim:/seqdec/a \
sim:/seqdec/b \
sim:/seqdec/gt \
sim:/seqdec/eq \
sim:/seqdec/lt
force -freeze sim:/seqdec/a 10000000 0
force -freeze sim:/seqdec/b 10000000 0
run
force -freeze sim:/seqdec/b 00000001 0
run
force -freeze sim:/seqdec/a 11111111 0
force -freeze sim:/seqdec/b 10000000 0
run
force -freeze sim:/seqdec/a 11111011 0
force -freeze sim:/seqdec/b 11111011 0
run
force -freeze sim:/seqdec/a 11111111 0
force -freeze sim:/seqdec/b 00000000 0
run
force -freeze sim:/seqdec/a 00000000 0
force -freeze sim:/seqdec/b 11111111 0
run