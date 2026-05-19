transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/ELDII/aula_19-05-2026/questao2/questao2.vhd}

