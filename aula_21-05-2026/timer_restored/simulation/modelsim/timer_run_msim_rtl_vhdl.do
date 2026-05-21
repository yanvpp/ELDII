transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/ELDII/aula_21-05-2026/timer_restored/list_09_05_06_timer_CORRIGIDO_50mhz.vhd}

