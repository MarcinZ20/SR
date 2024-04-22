transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+add_sub_module  -L xbip_utils_v3_0_11 -L c_reg_fd_v12_0_7 -L xbip_dsp48_wrapper_v3_0_5 -L xbip_pipe_v3_0_7 -L xbip_dsp48_addsub_v3_0_7 -L xbip_addsub_v3_0_7 -L c_addsub_v12_0_16 -L xil_defaultlib -L secureip -O2 xil_defaultlib.add_sub_module

do {add_sub_module.udo}

run

endsim

quit -force