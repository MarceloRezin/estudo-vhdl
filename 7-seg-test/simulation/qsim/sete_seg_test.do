onerror {exit -code 1}
vlib work
vcom -work work sete_seg_test.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.sete_seg_test_vhd_vec_tst
vcd file -direction sete_seg_test.msim.vcd
vcd add -internal sete_seg_test_vhd_vec_tst/*
vcd add -internal sete_seg_test_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f













