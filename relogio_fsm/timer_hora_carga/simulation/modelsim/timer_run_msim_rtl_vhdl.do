transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/ELDII/relogio_fsm/timer_hora_carga/timer_hora_carga.vhd}
vcom -93 -work work {/home/aluno/ELDII/relogio_fsm/timer_hora_carga/bin2bcd.vhd}
vcom -93 -work work {/home/aluno/ELDII/relogio_fsm/timer_hora_carga/top_timer_de2_115.vhd}
vcom -93 -work work {/home/aluno/ELDII/relogio_fsm/timer_hora_carga/bcd2ssd.vhd}
vcom -93 -work work {/home/aluno/ELDII/relogio_fsm/timer_hora_carga/blink.vhd}

