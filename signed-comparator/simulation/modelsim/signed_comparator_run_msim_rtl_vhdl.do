transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/marcelo-note/projetos/vhdl/signed-comparator/signed_comparator.vhd}

vcom -93 -work work {/home/marcelo-note/projetos/vhdl/signed-comparator/signed_comparator_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  signed_comparator_tb

add wave *
view structure
view signals
run 30 us
