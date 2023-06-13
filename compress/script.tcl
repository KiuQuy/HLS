############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gzip_proj
set_top gzipcMulticoreStreaming
add_files gzip_compress_test.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser \
                                          -I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw \
										  -I/alocal/Vitis/vitis-libs/security/L1/include"
add_files -tb gzip_compress_test.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser \
                                            -I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw \
											-I/alocal/Vitis/vitis-libs/security/L1/include"
add_files -tb sample.txt
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./gzip_proj/solution1/directives.tcl"
#csim_design -argv {sample.txt csim_compress}
#csynth_design
cosim_design -argv {sample.txt csim_compress}
export_design -format ip_catalog
