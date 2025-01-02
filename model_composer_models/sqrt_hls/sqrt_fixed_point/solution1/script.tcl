############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sqrt_fixed_point
set_top fxp_sqrt_top
add_files fxp_sqrt.h
add_files fxp_sqrt_top.cpp
add_files fxp_sqrt_top.h
add_files -tb fxp_sqrt_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7a35ticsg324-1L}
create_clock -period 10 -name default
config_export -format sysgen -output /home/caccolillo/Documents/model_composer_am_demod/model_composer_models/sqrt_hls
#source "./sqrt_fixed_point/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format sysgen -output /home/caccolillo/Documents/model_composer_am_demod/model_composer_models/sqrt_hls
