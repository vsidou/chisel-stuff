# TCL File Generated by Component Editor 20.1
# Sun Oct 03 13:58:07 CEST 2021
# DO NOT MODIFY


# 
# pp_sp_pcie_endpoint "PP SP PCIe endpoint" v0.6
#  2021.10.03.13:58:07
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module pp_sp_pcie_endpoint
# 
set_module_property DESCRIPTION ""
set_module_property NAME pp_sp_pcie_endpoint
set_module_property VERSION 0.6
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "PP SP PCIe endpoint"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL PcieEndpointWrapper
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file PcieEndpoint.sv SYSTEM_VERILOG PATH hdl/PcieEndpointWrapper.sv TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL PcieEndpointWrapper
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file PcieEndpoint.sv SYSTEM_VERILOG PATH hdl/PcieEndpointWrapper.sv


# 
# parameters
# 


# 
# display items
# 


# 
# connection point coreclkout_hip
# 
add_interface coreclkout_hip clock end
set_interface_property coreclkout_hip clockRate 0
set_interface_property coreclkout_hip ENABLED true
set_interface_property coreclkout_hip EXPORT_OF ""
set_interface_property coreclkout_hip PORT_NAME_MAP ""
set_interface_property coreclkout_hip CMSIS_SVD_VARIABLES ""
set_interface_property coreclkout_hip SVD_ADDRESS_GROUP ""

add_interface_port coreclkout_hip coreclkout_hip clk Input 1


# 
# connection point pld_clk_hip
# 
add_interface pld_clk_hip clock start
set_interface_property pld_clk_hip associatedDirectClock ""
set_interface_property pld_clk_hip clockRate 0
set_interface_property pld_clk_hip clockRateKnown false
set_interface_property pld_clk_hip ENABLED true
set_interface_property pld_clk_hip EXPORT_OF ""
set_interface_property pld_clk_hip PORT_NAME_MAP ""
set_interface_property pld_clk_hip CMSIS_SVD_VARIABLES ""
set_interface_property pld_clk_hip SVD_ADDRESS_GROUP ""

add_interface_port pld_clk_hip pld_clk_hip clk Output 1


# 
# connection point hip_rst
# 
add_interface hip_rst conduit end
set_interface_property hip_rst associatedClock ""
set_interface_property hip_rst associatedReset ""
set_interface_property hip_rst ENABLED true
set_interface_property hip_rst EXPORT_OF ""
set_interface_property hip_rst PORT_NAME_MAP ""
set_interface_property hip_rst CMSIS_SVD_VARIABLES ""
set_interface_property hip_rst SVD_ADDRESS_GROUP ""

add_interface_port hip_rst reset_status reset_status Input 1
add_interface_port hip_rst serdes_pll_locked serdes_pll_locked Input 1
add_interface_port hip_rst pld_clk_inuse pld_clk_inuse Input 1
add_interface_port hip_rst pld_core_ready pld_core_ready Output 1
add_interface_port hip_rst testin_zero testin_zero Input 1


# 
# connection point rx_st
# 
add_interface rx_st avalon_streaming end
set_interface_property rx_st associatedClock pld_clk_hip
set_interface_property rx_st dataBitsPerSymbol 256
set_interface_property rx_st errorDescriptor ""
set_interface_property rx_st firstSymbolInHighOrderBits true
set_interface_property rx_st maxChannel 0
set_interface_property rx_st readyLatency 3
set_interface_property rx_st ENABLED true
set_interface_property rx_st EXPORT_OF ""
set_interface_property rx_st PORT_NAME_MAP ""
set_interface_property rx_st CMSIS_SVD_VARIABLES ""
set_interface_property rx_st SVD_ADDRESS_GROUP ""

add_interface_port rx_st rx_st_data data Input 256
add_interface_port rx_st rx_st_empty empty Input 2
add_interface_port rx_st rx_st_sop startofpacket Input 1
add_interface_port rx_st rx_st_eop endofpacket Input 1
add_interface_port rx_st rx_st_err error Input 1
add_interface_port rx_st rx_st_valid valid Input 1
add_interface_port rx_st rx_st_ready ready Output 1


# 
# connection point tx_st
# 
add_interface tx_st avalon_streaming start
set_interface_property tx_st associatedClock pld_clk_hip
set_interface_property tx_st associatedReset reset_out
set_interface_property tx_st dataBitsPerSymbol 256
set_interface_property tx_st errorDescriptor ""
set_interface_property tx_st firstSymbolInHighOrderBits true
set_interface_property tx_st maxChannel 0
set_interface_property tx_st readyLatency 3
set_interface_property tx_st ENABLED true
set_interface_property tx_st EXPORT_OF ""
set_interface_property tx_st PORT_NAME_MAP ""
set_interface_property tx_st CMSIS_SVD_VARIABLES ""
set_interface_property tx_st SVD_ADDRESS_GROUP ""

add_interface_port tx_st tx_st_sop startofpacket Output 1
add_interface_port tx_st tx_st_eop endofpacket Output 1
add_interface_port tx_st tx_st_err error Output 1
add_interface_port tx_st tx_st_valid valid Output 1
add_interface_port tx_st tx_st_empty empty Output 2
add_interface_port tx_st tx_st_ready ready Input 1
add_interface_port tx_st tx_st_data data Output 256


# 
# connection point config_tl
# 
add_interface config_tl conduit end
set_interface_property config_tl associatedClock ""
set_interface_property config_tl associatedReset ""
set_interface_property config_tl ENABLED true
set_interface_property config_tl EXPORT_OF ""
set_interface_property config_tl PORT_NAME_MAP ""
set_interface_property config_tl CMSIS_SVD_VARIABLES ""
set_interface_property config_tl SVD_ADDRESS_GROUP ""

add_interface_port config_tl hpg_ctrler hpg_ctrler Output 5
add_interface_port config_tl tl_cfg_ctl tl_cfg_ctl Input 32
add_interface_port config_tl tl_cfg_add tl_cfg_add Input 4
add_interface_port config_tl tl_cfg_sts tl_cfg_sts Input 53
add_interface_port config_tl cpl_err cpl_err Output 7
add_interface_port config_tl cpl_pending cpl_pending Output 1


# 
# connection point bar0
# 
add_interface bar0 avalon start
set_interface_property bar0 addressUnits SYMBOLS
set_interface_property bar0 associatedClock coreclkout_hip
set_interface_property bar0 associatedReset reset_out
set_interface_property bar0 bitsPerSymbol 8
set_interface_property bar0 burstOnBurstBoundariesOnly false
set_interface_property bar0 burstcountUnits WORDS
set_interface_property bar0 doStreamReads false
set_interface_property bar0 doStreamWrites false
set_interface_property bar0 holdTime 0
set_interface_property bar0 linewrapBursts false
set_interface_property bar0 maximumPendingReadTransactions 0
set_interface_property bar0 maximumPendingWriteTransactions 0
set_interface_property bar0 readLatency 0
set_interface_property bar0 readWaitTime 1
set_interface_property bar0 setupTime 0
set_interface_property bar0 timingUnits Cycles
set_interface_property bar0 writeWaitTime 0
set_interface_property bar0 ENABLED true
set_interface_property bar0 EXPORT_OF ""
set_interface_property bar0 PORT_NAME_MAP ""
set_interface_property bar0 CMSIS_SVD_VARIABLES ""
set_interface_property bar0 SVD_ADDRESS_GROUP ""

add_interface_port bar0 avmm_bar0_address address Output 32
add_interface_port bar0 avmm_bar0_byteenable byteenable Output 4
add_interface_port bar0 avmm_bar0_read read Output 1
add_interface_port bar0 avmm_bar0_readdata readdata Input 32
add_interface_port bar0 avmm_bar0_response response Input 2
add_interface_port bar0 avmm_bar0_write write Output 1
add_interface_port bar0 avmm_bar0_writedata writedata Output 32
add_interface_port bar0 avmm_bar0_waitrequest waitrequest Input 1
add_interface_port bar0 avmm_bar0_readdatavalid readdatavalid Input 1
add_interface_port bar0 avmm_bar0_writeresponsevalid writeresponsevalid Input 1
add_interface_port bar0 avmm_bar0_burstcount burstcount Output 1


# 
# connection point reset_out
# 
add_interface reset_out reset start
set_interface_property reset_out associatedClock coreclkout_hip
set_interface_property reset_out associatedDirectReset ""
set_interface_property reset_out associatedResetSinks ""
set_interface_property reset_out synchronousEdges DEASSERT
set_interface_property reset_out ENABLED true
set_interface_property reset_out EXPORT_OF ""
set_interface_property reset_out PORT_NAME_MAP ""
set_interface_property reset_out CMSIS_SVD_VARIABLES ""
set_interface_property reset_out SVD_ADDRESS_GROUP ""

add_interface_port reset_out reset_out reset Output 1


# 
# connection point rx_bar_be
# 
add_interface rx_bar_be conduit end
set_interface_property rx_bar_be associatedClock ""
set_interface_property rx_bar_be associatedReset ""
set_interface_property rx_bar_be ENABLED true
set_interface_property rx_bar_be EXPORT_OF ""
set_interface_property rx_bar_be PORT_NAME_MAP ""
set_interface_property rx_bar_be CMSIS_SVD_VARIABLES ""
set_interface_property rx_bar_be SVD_ADDRESS_GROUP ""

add_interface_port rx_bar_be rx_st_bar rx_st_bar Input 8
add_interface_port rx_bar_be rx_st_mask rx_st_mask Output 1


# 
# connection point int_msi
# 
add_interface int_msi conduit end
set_interface_property int_msi associatedClock ""
set_interface_property int_msi associatedReset ""
set_interface_property int_msi ENABLED true
set_interface_property int_msi EXPORT_OF ""
set_interface_property int_msi PORT_NAME_MAP ""
set_interface_property int_msi CMSIS_SVD_VARIABLES ""
set_interface_property int_msi SVD_ADDRESS_GROUP ""

add_interface_port int_msi app_int_ack app_int_ack Input 1
add_interface_port int_msi app_int_msi_ack app_msi_ack Input 1
add_interface_port int_msi app_int_msi_num app_msi_num Output 5
add_interface_port int_msi app_int_msi_req app_msi_req Output 1
add_interface_port int_msi app_int_msi_tc app_msi_tc Output 3
add_interface_port int_msi app_int_sts app_int_sts Output 1


# 
# connection point dma_out
# 
add_interface dma_out avalon_streaming start
set_interface_property dma_out associatedClock coreclkout_hip
set_interface_property dma_out associatedReset reset_out
set_interface_property dma_out dataBitsPerSymbol 8
set_interface_property dma_out errorDescriptor ""
set_interface_property dma_out firstSymbolInHighOrderBits true
set_interface_property dma_out maxChannel 0
set_interface_property dma_out readyLatency 0
set_interface_property dma_out ENABLED true
set_interface_property dma_out EXPORT_OF ""
set_interface_property dma_out PORT_NAME_MAP ""
set_interface_property dma_out CMSIS_SVD_VARIABLES ""
set_interface_property dma_out SVD_ADDRESS_GROUP ""

add_interface_port dma_out dma_out_data data Output 256
add_interface_port dma_out dma_out_valid valid Output 1


# 
# connection point dma_in
# 
add_interface dma_in avalon_streaming end
set_interface_property dma_in associatedClock coreclkout_hip
set_interface_property dma_in associatedReset reset_out
set_interface_property dma_in dataBitsPerSymbol 8
set_interface_property dma_in errorDescriptor ""
set_interface_property dma_in firstSymbolInHighOrderBits true
set_interface_property dma_in maxChannel 0
set_interface_property dma_in readyLatency 0
set_interface_property dma_in ENABLED true
set_interface_property dma_in EXPORT_OF ""
set_interface_property dma_in PORT_NAME_MAP ""
set_interface_property dma_in CMSIS_SVD_VARIABLES ""
set_interface_property dma_in SVD_ADDRESS_GROUP ""

add_interface_port dma_in dma_in_data data Input 256
add_interface_port dma_in dma_in_ready ready Output 1
add_interface_port dma_in dma_in_valid valid Input 1

