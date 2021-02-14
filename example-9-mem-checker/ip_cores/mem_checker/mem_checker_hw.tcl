# TCL File Generated by Component Editor 19.1
# Thu Feb 11 22:04:33 CET 2021
# DO NOT MODIFY


# 
# mem_checker "Mem Checker" v0.1
#  2021.02.11.22:04:33
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module mem_checker
# 
set_module_property DESCRIPTION ""
set_module_property NAME mem_checker
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Verification/Debug & Performance"
set_module_property AUTHOR "Jan Marjanovic"
set_module_property DISPLAY_NAME "Mem Checker"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL MemChecker
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file MemChecker.sv SYSTEM_VERILOG PATH hdl/MemChecker.sv TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL MemChecker
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file MemChecker.sv SYSTEM_VERILOG PATH hdl/MemChecker.sv


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clock clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point ctrl
# 
add_interface ctrl axi4lite end
set_interface_property ctrl associatedClock clock
set_interface_property ctrl associatedReset reset
set_interface_property ctrl readAcceptanceCapability 1
set_interface_property ctrl writeAcceptanceCapability 1
set_interface_property ctrl combinedAcceptanceCapability 1
set_interface_property ctrl readDataReorderingDepth 1
set_interface_property ctrl bridgesToMaster ""
set_interface_property ctrl ENABLED true
set_interface_property ctrl EXPORT_OF ""
set_interface_property ctrl PORT_NAME_MAP ""
set_interface_property ctrl CMSIS_SVD_VARIABLES ""
set_interface_property ctrl SVD_ADDRESS_GROUP ""

add_interface_port ctrl io_ctrl_AR_bits_addr araddr Input 8
add_interface_port ctrl io_ctrl_AR_bits_prot arprot Input 3
add_interface_port ctrl io_ctrl_AR_ready arready Output 1
add_interface_port ctrl io_ctrl_AR_valid arvalid Input 1
add_interface_port ctrl io_ctrl_AW_bits_addr awaddr Input 8
add_interface_port ctrl io_ctrl_AW_bits_prot awprot Input 3
add_interface_port ctrl io_ctrl_AW_ready awready Output 1
add_interface_port ctrl io_ctrl_AW_valid awvalid Input 1
add_interface_port ctrl io_ctrl_B_ready bready Input 1
add_interface_port ctrl io_ctrl_B_bits bresp Output 2
add_interface_port ctrl io_ctrl_B_valid bvalid Output 1
add_interface_port ctrl io_ctrl_R_bits_rdata rdata Output 32
add_interface_port ctrl io_ctrl_R_ready rready Input 1
add_interface_port ctrl io_ctrl_R_bits_rresp rresp Output 2
add_interface_port ctrl io_ctrl_R_valid rvalid Output 1
add_interface_port ctrl io_ctrl_W_bits_wdata wdata Input 32
add_interface_port ctrl io_ctrl_W_ready wready Output 1
add_interface_port ctrl io_ctrl_W_bits_wstrb wstrb Input 4
add_interface_port ctrl io_ctrl_W_valid wvalid Input 1


# 
# connection point mem
# 
add_interface mem avalon start
set_interface_property mem addressUnits SYMBOLS
set_interface_property mem associatedClock clock
set_interface_property mem associatedReset reset
set_interface_property mem bitsPerSymbol 8
set_interface_property mem burstOnBurstBoundariesOnly false
set_interface_property mem burstcountUnits WORDS
set_interface_property mem doStreamReads false
set_interface_property mem doStreamWrites false
set_interface_property mem holdTime 0
set_interface_property mem linewrapBursts false
set_interface_property mem maximumPendingReadTransactions 0
set_interface_property mem maximumPendingWriteTransactions 0
set_interface_property mem readLatency 0
set_interface_property mem readWaitTime 1
set_interface_property mem setupTime 0
set_interface_property mem timingUnits Cycles
set_interface_property mem writeWaitTime 0
set_interface_property mem ENABLED true
set_interface_property mem EXPORT_OF ""
set_interface_property mem PORT_NAME_MAP ""
set_interface_property mem CMSIS_SVD_VARIABLES ""
set_interface_property mem SVD_ADDRESS_GROUP ""

add_interface_port mem io_mem_address address Output 32
add_interface_port mem io_mem_burstcount burstcount Output 5
add_interface_port mem io_mem_byteenable byteenable Output 64
add_interface_port mem io_mem_read read Output 1
add_interface_port mem io_mem_readdata readdata Input 512
add_interface_port mem io_mem_readdatavalid readdatavalid Input 1
add_interface_port mem io_mem_waitrequest waitrequest Input 1
add_interface_port mem io_mem_response response Input 2
add_interface_port mem io_mem_write write Output 1
add_interface_port mem io_mem_writedata writedata Output 512
add_interface_port mem io_mem_writeresponsevalid writeresponsevalid Input 1

