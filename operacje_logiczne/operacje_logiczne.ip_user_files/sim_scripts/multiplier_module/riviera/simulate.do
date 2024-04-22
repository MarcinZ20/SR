transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+multiplier_module  -L xbip_utils_v3_0_11 -L xbip_pipe_v3_0_7 -L xbip_bram18k_v3_0_7 -L mult_gen_v12_0_19 -L xil_defaultlib -L secureip -O5 xil_defaultlib.multiplier_module

do {multiplier_module.udo}

run 1000ns

endsim

quit -force
