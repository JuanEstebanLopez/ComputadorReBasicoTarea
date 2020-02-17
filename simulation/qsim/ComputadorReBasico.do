onerror {exit -code 1}
vlib work
vlog -work work ComputadorReBasico.vo
vlog -work work WaveformSemana5.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.CompBasicoSem5_vlg_vec_tst -voptargs="+acc"
vcd file -direction ComputadorReBasico.msim.vcd
vcd add -internal CompBasicoSem5_vlg_vec_tst/*
vcd add -internal CompBasicoSem5_vlg_vec_tst/i1/*
run -all
quit -f
