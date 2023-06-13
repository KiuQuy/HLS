############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gzip_decompress_test.prj
set_top gzipMultiByteDecompressEngineRun
add_files gzip_decompress_test.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw -DMULTIPLE_BYTES=8 -I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser -I/alocal/Vitis/vitis-libs/data_compression/common/libs/logger -I/alocal/Vitis/vitis-libs/data_compression/../security/L1/include"
add_files /alocal/Vitis/vitis-libs/data_compression/common/libs/logger/logger.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw -DMULTIPLE_BYTES=8 -I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser -I/alocal/Vitis/vitis-libs/data_compression/common/libs/logger -I/alocal/Vitis/vitis-libs/data_compression/../security/L1/include"
add_files /alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser/cmdlineparser.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw -DMULTIPLE_BYTES=8 -I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser -I/alocal/Vitis/vitis-libs/data_compression/common/libs/logger -I/alocal/Vitis/vitis-libs/data_compression/../security/L1/include"
add_files -tb gzip_decompress_test.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw -I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser -I/alocal/Vitis/vitis-libs/data_compression/common/libs/logger -I/alocal/Vitis/vitis-libs/data_compression/../security/L1/include -DMULTIPLE_BYTES=8 -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb /alocal/Vitis/vitis-libs/data_compression/common/libs/logger/logger.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw -I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser -I/alocal/Vitis/vitis-libs/data_compression/common/libs/logger -I/alocal/Vitis/vitis-libs/data_compression/../security/L1/include -DMULTIPLE_BYTES=8 -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb /alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser/cmdlineparser.cpp -cflags "-I/alocal/Vitis/vitis-libs/data_compression/L1/include/hw -I/alocal/Vitis/vitis-libs/data_compression/common/libs/cmdparser -I/alocal/Vitis/vitis-libs/data_compression/common/libs/logger -I/alocal/Vitis/vitis-libs/data_compression/../security/L1/include -DMULTIPLE_BYTES=8 -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol1" -flow_target vivado
set_part {xcvu9p-flga2104-2L-e}
create_clock -period 3.3 -name default
config_interface -m_axi_latency 0
#source "./gzip_decompress_test.prj/sol1/directives.tcl"
#csim_design -argv {-l ../../../../test.list -p ../../../../} 
csynth_design
#cosim_design -argv {-l ../../../../test.list -p ../../../../}
#export_design -format ip_catalog
