vlib rtl_work
vmap work rtl_work

vmap work rtl_work 

vcom -93 -work work {/home/aluno/ELDII/aula_28-04-26/seqDec.vhd}

vsim work.seqdec_v1

add wave -position insertpoint \

force -freeze sim:/seqdec/a 00000001 0
force -freeze sim:/seqdec/b 00000000 0
run
force -freeze sim:/seqdec/b 00000001 0
run
force -freeze sim:/seqdec/b 00000010 0
run


