
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k325tffg900-2
   set_property BOARD_PART xilinx.com:kc705:part0:1.5 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_system_mig_7series_0_1 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {<?xml version='1.0' encoding='UTF-8'?>}
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {<Project NoOfControllers="1" >}
   puts $mig_prj_file {    <ModuleName>system_mig_7series_0_1</ModuleName>}
   puts $mig_prj_file {    <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {    <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {    <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {    <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {    <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {    <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {    <TargetFPGA>xc7k325t-ffg900/-2</TargetFPGA>}
   puts $mig_prj_file {    <Version>4.0</Version>}
   puts $mig_prj_file {    <SystemClock>Differential</SystemClock>}
   puts $mig_prj_file {    <ReferenceClock>Use System Clock</ReferenceClock>}
   puts $mig_prj_file {    <SysResetPolarity>ACTIVE HIGH</SysResetPolarity>}
   puts $mig_prj_file {    <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {    <InternalVref>0</InternalVref>}
   puts $mig_prj_file {    <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {    <dci_cascade>1</dci_cascade>}
   puts $mig_prj_file {    <Controller number="0" >}
   puts $mig_prj_file {        <MemoryDevice>DDR3_SDRAM/SODIMMs/MT8JTF12864HZ-1G6</MemoryDevice>}
   puts $mig_prj_file {        <TimePeriod>1250</TimePeriod>}
   puts $mig_prj_file {        <VccAuxIO>2.0V</VccAuxIO>}
   puts $mig_prj_file {        <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {        <InputClkFreq>200</InputClkFreq>}
   puts $mig_prj_file {        <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {        <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {        <MMCMClkOut0> 8.000</MMCMClkOut0>}
   puts $mig_prj_file {        <MMCMClkOut1>8</MMCMClkOut1>}
   puts $mig_prj_file {        <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {        <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {        <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {        <DataWidth>64</DataWidth>}
   puts $mig_prj_file {        <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {        <DataMask>1</DataMask>}
   puts $mig_prj_file {        <ECC>Disabled</ECC>}
   puts $mig_prj_file {        <Ordering>Normal</Ordering>}
   puts $mig_prj_file {        <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {        <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {        <NewPartName></NewPartName>}
   puts $mig_prj_file {        <RowAddress>14</RowAddress>}
   puts $mig_prj_file {        <ColAddress>10</ColAddress>}
   puts $mig_prj_file {        <BankAddress>3</BankAddress>}
   puts $mig_prj_file {        <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {        <C0_MEM_SIZE>1073741824</C0_MEM_SIZE>}
   puts $mig_prj_file {        <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {        <PinSelection>}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AH12" SLEW="" name="ddr3_addr[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AF13" SLEW="" name="ddr3_addr[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AE13" SLEW="" name="ddr3_addr[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AJ11" SLEW="" name="ddr3_addr[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AH11" SLEW="" name="ddr3_addr[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AG13" SLEW="" name="ddr3_addr[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AG12" SLEW="" name="ddr3_addr[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AF12" SLEW="" name="ddr3_addr[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AJ12" SLEW="" name="ddr3_addr[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AJ13" SLEW="" name="ddr3_addr[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AJ14" SLEW="" name="ddr3_addr[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AH14" SLEW="" name="ddr3_addr[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AK13" SLEW="" name="ddr3_addr[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AK14" SLEW="" name="ddr3_addr[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AH9" SLEW="" name="ddr3_ba[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AG9" SLEW="" name="ddr3_ba[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AK9" SLEW="" name="ddr3_ba[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AC11" SLEW="" name="ddr3_cas_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15" PADName="AH10" SLEW="" name="ddr3_ck_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15" PADName="AG10" SLEW="" name="ddr3_ck_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AF10" SLEW="" name="ddr3_cke[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AC12" SLEW="" name="ddr3_cs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="Y16" SLEW="" name="ddr3_dm[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AB17" SLEW="" name="ddr3_dm[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AF17" SLEW="" name="ddr3_dm[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AE16" SLEW="" name="ddr3_dm[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AK5" SLEW="" name="ddr3_dm[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AJ3" SLEW="" name="ddr3_dm[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AF6" SLEW="" name="ddr3_dm[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AC7" SLEW="" name="ddr3_dm[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AA15" SLEW="" name="ddr3_dq[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AC19" SLEW="" name="ddr3_dq[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD17" SLEW="" name="ddr3_dq[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AA18" SLEW="" name="ddr3_dq[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AB18" SLEW="" name="ddr3_dq[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE18" SLEW="" name="ddr3_dq[14]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD18" SLEW="" name="ddr3_dq[15]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AG19" SLEW="" name="ddr3_dq[16]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AK19" SLEW="" name="ddr3_dq[17]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AG18" SLEW="" name="ddr3_dq[18]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF18" SLEW="" name="ddr3_dq[19]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AA16" SLEW="" name="ddr3_dq[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AH19" SLEW="" name="ddr3_dq[20]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AJ19" SLEW="" name="ddr3_dq[21]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE19" SLEW="" name="ddr3_dq[22]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD19" SLEW="" name="ddr3_dq[23]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AK16" SLEW="" name="ddr3_dq[24]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AJ17" SLEW="" name="ddr3_dq[25]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AG15" SLEW="" name="ddr3_dq[26]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF15" SLEW="" name="ddr3_dq[27]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AH17" SLEW="" name="ddr3_dq[28]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AG14" SLEW="" name="ddr3_dq[29]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AC14" SLEW="" name="ddr3_dq[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AH15" SLEW="" name="ddr3_dq[30]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AK15" SLEW="" name="ddr3_dq[31]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AK8" SLEW="" name="ddr3_dq[32]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AK6" SLEW="" name="ddr3_dq[33]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AG7" SLEW="" name="ddr3_dq[34]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF7" SLEW="" name="ddr3_dq[35]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF8" SLEW="" name="ddr3_dq[36]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AK4" SLEW="" name="ddr3_dq[37]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AJ8" SLEW="" name="ddr3_dq[38]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AJ6" SLEW="" name="ddr3_dq[39]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD14" SLEW="" name="ddr3_dq[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AH5" SLEW="" name="ddr3_dq[40]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AH6" SLEW="" name="ddr3_dq[41]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AJ2" SLEW="" name="ddr3_dq[42]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AH2" SLEW="" name="ddr3_dq[43]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AH4" SLEW="" name="ddr3_dq[44]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AJ4" SLEW="" name="ddr3_dq[45]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AK1" SLEW="" name="ddr3_dq[46]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AJ1" SLEW="" name="ddr3_dq[47]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF1" SLEW="" name="ddr3_dq[48]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF2" SLEW="" name="ddr3_dq[49]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AA17" SLEW="" name="ddr3_dq[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE4" SLEW="" name="ddr3_dq[50]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE3" SLEW="" name="ddr3_dq[51]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF3" SLEW="" name="ddr3_dq[52]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AF5" SLEW="" name="ddr3_dq[53]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE1" SLEW="" name="ddr3_dq[54]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE5" SLEW="" name="ddr3_dq[55]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AC1" SLEW="" name="ddr3_dq[56]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD3" SLEW="" name="ddr3_dq[57]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AC4" SLEW="" name="ddr3_dq[58]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AC5" SLEW="" name="ddr3_dq[59]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AB15" SLEW="" name="ddr3_dq[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE6" SLEW="" name="ddr3_dq[60]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD6" SLEW="" name="ddr3_dq[61]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AC2" SLEW="" name="ddr3_dq[62]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD4" SLEW="" name="ddr3_dq[63]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AE15" SLEW="" name="ddr3_dq[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="Y15" SLEW="" name="ddr3_dq[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AB19" SLEW="" name="ddr3_dq[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15_T_DCI" PADName="AD16" SLEW="" name="ddr3_dq[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AC15" SLEW="" name="ddr3_dqs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="Y18" SLEW="" name="ddr3_dqs_n[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AK18" SLEW="" name="ddr3_dqs_n[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AJ16" SLEW="" name="ddr3_dqs_n[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AJ7" SLEW="" name="ddr3_dqs_n[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AH1" SLEW="" name="ddr3_dqs_n[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AG3" SLEW="" name="ddr3_dqs_n[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AD1" SLEW="" name="ddr3_dqs_n[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AC16" SLEW="" name="ddr3_dqs_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="Y19" SLEW="" name="ddr3_dqs_p[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AJ18" SLEW="" name="ddr3_dqs_p[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AH16" SLEW="" name="ddr3_dqs_p[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AH7" SLEW="" name="ddr3_dqs_p[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AG2" SLEW="" name="ddr3_dqs_p[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AG4" SLEW="" name="ddr3_dqs_p[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="DIFF_SSTL15_T_DCI" PADName="AD2" SLEW="" name="ddr3_dqs_p[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AD8" SLEW="" name="ddr3_odt[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AD9" SLEW="" name="ddr3_ras_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="LVCMOS15" PADName="AK3" SLEW="" name="ddr3_reset_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="HIGH" IOSTANDARD="SSTL15" PADName="AE9" SLEW="" name="ddr3_we_n" IN_TERM="" />}
   puts $mig_prj_file {        </PinSelection>}
   puts $mig_prj_file {        <System_Clock>}
   puts $mig_prj_file {            <Pin PADName="AD12/AD11(CC_P/N)" Bank="33" name="sys_clk_p/n" />}
   puts $mig_prj_file {        </System_Clock>}
   puts $mig_prj_file {        <System_Control>}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="sys_rst" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="init_calib_complete" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="tg_compare_error" />}
   puts $mig_prj_file {        </System_Control>}
   puts $mig_prj_file {        <TimingParameters>}
   puts $mig_prj_file {            <Parameters twtr="7.5" trrd="6" trefi="7.8" tfaw="30" trtp="7.5" tcke="5" trfc="110" trp="13.75" tras="35" trcd="13.75" />}
   puts $mig_prj_file {        </TimingParameters>}
   puts $mig_prj_file {        <mrBurstLength name="Burst Length" >8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {        <mrBurstType name="Read Burst Type and Length" >Sequential</mrBurstType>}
   puts $mig_prj_file {        <mrCasLatency name="CAS Latency" >11</mrCasLatency>}
   puts $mig_prj_file {        <mrMode name="Mode" >Normal</mrMode>}
   puts $mig_prj_file {        <mrDllReset name="DLL Reset" >No</mrDllReset>}
   puts $mig_prj_file {        <mrPdMode name="DLL control for precharge PD" >Slow Exit</mrPdMode>}
   puts $mig_prj_file {        <emrDllEnable name="DLL Enable" >Enable</emrDllEnable>}
   puts $mig_prj_file {        <emrOutputDriveStrength name="Output Driver Impedance Control" >RZQ/7</emrOutputDriveStrength>}
   puts $mig_prj_file {        <emrMirrorSelection name="Address Mirroring" >Disable</emrMirrorSelection>}
   puts $mig_prj_file {        <emrCSSelection name="Controller Chip Select Pin" >Enable</emrCSSelection>}
   puts $mig_prj_file {        <emrRTT name="RTT (nominal) - On Die Termination (ODT)" >RZQ/6</emrRTT>}
   puts $mig_prj_file {        <emrPosted name="Additive Latency (AL)" >0</emrPosted>}
   puts $mig_prj_file {        <emrOCD name="Write Leveling Enable" >Disabled</emrOCD>}
   puts $mig_prj_file {        <emrDQS name="TDQS enable" >Enabled</emrDQS>}
   puts $mig_prj_file {        <emrRDQS name="Qoff" >Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {        <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh" >Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {        <mr2CasWriteLatency name="CAS write latency" >8</mr2CasWriteLatency>}
   puts $mig_prj_file {        <mr2AutoSelfRefresh name="Auto Self Refresh" >Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {        <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate" >Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {        <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)" >Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {        <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {        <AXIParameters>}
   puts $mig_prj_file {            <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {            <C0_S_AXI_ADDR_WIDTH>30</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_DATA_WIDTH>512</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_ID_WIDTH>4</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {        </AXIParameters>}
   puts $mig_prj_file {    </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_system_mig_7series_0_1()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: axi_ad9371_tx_jesd
proc create_hier_cell_axi_ad9371_tx_jesd { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_axi_ad9371_tx_jesd() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 tx_data
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_jesd204:jesd204_tx_bus_rtl:1.0 tx_phy0
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_jesd204:jesd204_tx_bus_rtl:1.0 tx_phy1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_jesd204:jesd204_tx_bus_rtl:1.0 tx_phy2
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_jesd204:jesd204_tx_bus_rtl:1.0 tx_phy3

  # Create pins
  create_bd_pin -dir I -type clk device_clk
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I sync
  create_bd_pin -dir I sysref

  # Create instance: tx, and set properties
  set tx [ create_bd_cell -type ip -vlnv analog.com:user:jesd204_tx:1.0 tx ]
  set_property -dict [ list \
   CONFIG.NUM_LANES {4} \
 ] $tx

  set_property -dict [ list \
   CONFIG.TDATA_NUM_BYTES {16} \
 ] [get_bd_intf_pins /axi_ad9371_tx_jesd/tx/tx_data]

  # Create instance: tx_axi, and set properties
  set tx_axi [ create_bd_cell -type ip -vlnv analog.com:user:axi_jesd204_tx:1.0 tx_axi ]
  set_property -dict [ list \
   CONFIG.NUM_LANES {4} \
 ] $tx_axi

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_tx_jesd/tx_axi/s_axi]

  # Create interface connections
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins tx_axi/s_axi]
  connect_bd_intf_net -intf_net tx_axi_tx_cfg [get_bd_intf_pins tx/tx_cfg] [get_bd_intf_pins tx_axi/tx_cfg]
  connect_bd_intf_net -intf_net tx_axi_tx_ctrl [get_bd_intf_pins tx/tx_ctrl] [get_bd_intf_pins tx_axi/tx_ctrl]
  connect_bd_intf_net -intf_net tx_data_1 [get_bd_intf_pins tx_data] [get_bd_intf_pins tx/tx_data]
  connect_bd_intf_net -intf_net tx_tx_event [get_bd_intf_pins tx/tx_event] [get_bd_intf_pins tx_axi/tx_event]
  connect_bd_intf_net -intf_net tx_tx_ilas_config [get_bd_intf_pins tx/tx_ilas_config] [get_bd_intf_pins tx_axi/tx_ilas_config]
  connect_bd_intf_net -intf_net tx_tx_phy0 [get_bd_intf_pins tx_phy0] [get_bd_intf_pins tx/tx_phy0]
  connect_bd_intf_net -intf_net tx_tx_phy1 [get_bd_intf_pins tx_phy1] [get_bd_intf_pins tx/tx_phy1]
  connect_bd_intf_net -intf_net tx_tx_phy2 [get_bd_intf_pins tx_phy2] [get_bd_intf_pins tx/tx_phy2]
  connect_bd_intf_net -intf_net tx_tx_phy3 [get_bd_intf_pins tx_phy3] [get_bd_intf_pins tx/tx_phy3]
  connect_bd_intf_net -intf_net tx_tx_status [get_bd_intf_pins tx/tx_status] [get_bd_intf_pins tx_axi/tx_status]

  # Create port connections
  connect_bd_net -net device_clk_1 [get_bd_pins device_clk] [get_bd_pins tx/clk] [get_bd_pins tx_axi/core_clk]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins tx_axi/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins tx_axi/s_axi_aresetn]
  connect_bd_net -net sync_1 [get_bd_pins sync] [get_bd_pins tx/sync]
  connect_bd_net -net sysref_1 [get_bd_pins sysref] [get_bd_pins tx/sysref]
  connect_bd_net -net tx_axi_core_reset [get_bd_pins tx/reset] [get_bd_pins tx_axi/core_reset]
  connect_bd_net -net tx_axi_irq [get_bd_pins irq] [get_bd_pins tx_axi/irq]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: axi_ad9371_rx_os_jesd
proc create_hier_cell_axi_ad9371_rx_os_jesd { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_axi_ad9371_rx_os_jesd() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_jesd204:jesd204_rx_bus_rtl:1.0 rx_phy0
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_jesd204:jesd204_rx_bus_rtl:1.0 rx_phy1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I -type clk device_clk
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir O phy_en_char_align
  create_bd_pin -dir O -from 63 -to 0 rx_data_tdata
  create_bd_pin -dir O rx_data_tvalid
  create_bd_pin -dir O -from 3 -to 0 rx_eof
  create_bd_pin -dir O -from 3 -to 0 rx_sof
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir O sync
  create_bd_pin -dir I sysref

  # Create instance: rx, and set properties
  set rx [ create_bd_cell -type ip -vlnv analog.com:user:jesd204_rx:1.0 rx ]
  set_property -dict [ list \
   CONFIG.NUM_LANES {2} \
 ] $rx

  # Create instance: rx_axi, and set properties
  set rx_axi [ create_bd_cell -type ip -vlnv analog.com:user:axi_jesd204_rx:1.0 rx_axi ]
  set_property -dict [ list \
   CONFIG.NUM_LANES {2} \
 ] $rx_axi

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_rx_os_jesd/rx_axi/s_axi]

  # Create interface connections
  connect_bd_intf_net -intf_net rx_axi_rx_cfg [get_bd_intf_pins rx/rx_cfg] [get_bd_intf_pins rx_axi/rx_cfg]
  connect_bd_intf_net -intf_net rx_phy0_1 [get_bd_intf_pins rx_phy0] [get_bd_intf_pins rx/rx_phy0]
  connect_bd_intf_net -intf_net rx_phy1_1 [get_bd_intf_pins rx_phy1] [get_bd_intf_pins rx/rx_phy1]
  connect_bd_intf_net -intf_net rx_rx_event [get_bd_intf_pins rx/rx_event] [get_bd_intf_pins rx_axi/rx_event]
  connect_bd_intf_net -intf_net rx_rx_ilas_config [get_bd_intf_pins rx/rx_ilas_config] [get_bd_intf_pins rx_axi/rx_ilas_config]
  connect_bd_intf_net -intf_net rx_rx_status [get_bd_intf_pins rx/rx_status] [get_bd_intf_pins rx_axi/rx_status]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins rx_axi/s_axi]

  # Create port connections
  connect_bd_net -net device_clk_1 [get_bd_pins device_clk] [get_bd_pins rx/clk] [get_bd_pins rx_axi/core_clk]
  connect_bd_net -net rx_axi_core_reset [get_bd_pins rx/reset] [get_bd_pins rx_axi/core_reset]
  connect_bd_net -net rx_axi_irq [get_bd_pins irq] [get_bd_pins rx_axi/irq]
  connect_bd_net -net rx_phy_en_char_align [get_bd_pins phy_en_char_align] [get_bd_pins rx/phy_en_char_align]
  connect_bd_net -net rx_rx_data [get_bd_pins rx_data_tdata] [get_bd_pins rx/rx_data]
  connect_bd_net -net rx_rx_eof [get_bd_pins rx_eof] [get_bd_pins rx/rx_eof]
  connect_bd_net -net rx_rx_sof [get_bd_pins rx_sof] [get_bd_pins rx/rx_sof]
  connect_bd_net -net rx_rx_valid [get_bd_pins rx_data_tvalid] [get_bd_pins rx/rx_valid]
  connect_bd_net -net rx_sync [get_bd_pins sync] [get_bd_pins rx/sync]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins rx_axi/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins rx_axi/s_axi_aresetn]
  connect_bd_net -net sysref_1 [get_bd_pins sysref] [get_bd_pins rx/sysref]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: axi_ad9371_rx_jesd
proc create_hier_cell_axi_ad9371_rx_jesd { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_axi_ad9371_rx_jesd() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_jesd204:jesd204_rx_bus_rtl:1.0 rx_phy0
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:display_jesd204:jesd204_rx_bus_rtl:1.0 rx_phy1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I -type clk device_clk
  create_bd_pin -dir O -type intr irq
  create_bd_pin -dir O phy_en_char_align
  create_bd_pin -dir O -from 63 -to 0 rx_data_tdata
  create_bd_pin -dir O rx_data_tvalid
  create_bd_pin -dir O -from 3 -to 0 rx_eof
  create_bd_pin -dir O -from 3 -to 0 rx_sof
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir O sync
  create_bd_pin -dir I sysref

  # Create instance: rx, and set properties
  set rx [ create_bd_cell -type ip -vlnv analog.com:user:jesd204_rx:1.0 rx ]
  set_property -dict [ list \
   CONFIG.NUM_LANES {2} \
 ] $rx

  # Create instance: rx_axi, and set properties
  set rx_axi [ create_bd_cell -type ip -vlnv analog.com:user:axi_jesd204_rx:1.0 rx_axi ]
  set_property -dict [ list \
   CONFIG.NUM_LANES {2} \
 ] $rx_axi

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_rx_jesd/rx_axi/s_axi]

  # Create interface connections
  connect_bd_intf_net -intf_net rx_axi_rx_cfg [get_bd_intf_pins rx/rx_cfg] [get_bd_intf_pins rx_axi/rx_cfg]
  connect_bd_intf_net -intf_net rx_phy0_1 [get_bd_intf_pins rx_phy0] [get_bd_intf_pins rx/rx_phy0]
  connect_bd_intf_net -intf_net rx_phy1_1 [get_bd_intf_pins rx_phy1] [get_bd_intf_pins rx/rx_phy1]
  connect_bd_intf_net -intf_net rx_rx_event [get_bd_intf_pins rx/rx_event] [get_bd_intf_pins rx_axi/rx_event]
  connect_bd_intf_net -intf_net rx_rx_ilas_config [get_bd_intf_pins rx/rx_ilas_config] [get_bd_intf_pins rx_axi/rx_ilas_config]
  connect_bd_intf_net -intf_net rx_rx_status [get_bd_intf_pins rx/rx_status] [get_bd_intf_pins rx_axi/rx_status]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins rx_axi/s_axi]

  # Create port connections
  connect_bd_net -net device_clk_1 [get_bd_pins device_clk] [get_bd_pins rx/clk] [get_bd_pins rx_axi/core_clk]
  connect_bd_net -net rx_axi_core_reset [get_bd_pins rx/reset] [get_bd_pins rx_axi/core_reset]
  connect_bd_net -net rx_axi_irq [get_bd_pins irq] [get_bd_pins rx_axi/irq]
  connect_bd_net -net rx_phy_en_char_align [get_bd_pins phy_en_char_align] [get_bd_pins rx/phy_en_char_align]
  connect_bd_net -net rx_rx_data [get_bd_pins rx_data_tdata] [get_bd_pins rx/rx_data]
  connect_bd_net -net rx_rx_eof [get_bd_pins rx_eof] [get_bd_pins rx/rx_eof]
  connect_bd_net -net rx_rx_sof [get_bd_pins rx_sof] [get_bd_pins rx/rx_sof]
  connect_bd_net -net rx_rx_valid [get_bd_pins rx_data_tvalid] [get_bd_pins rx/rx_valid]
  connect_bd_net -net rx_sync [get_bd_pins sync] [get_bd_pins rx/sync]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins rx_axi/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins rx_axi/s_axi_aresetn]
  connect_bd_net -net sysref_1 [get_bd_pins sysref] [get_bd_pins rx/sysref]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]
  set iic_main [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_main ]
  set mdio [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio ]
  set phy_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 phy_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {625000000} \
   ] $phy_clk
  set sgmii [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sgmii_rtl:1.0 sgmii ]

  # Create ports
  set dac_fifo_bypass [ create_bd_port -dir I dac_fifo_bypass ]
  set gpio0_i [ create_bd_port -dir I -from 31 -to 0 gpio0_i ]
  set gpio0_o [ create_bd_port -dir O -from 31 -to 0 gpio0_o ]
  set gpio0_t [ create_bd_port -dir O -from 31 -to 0 gpio0_t ]
  set gpio1_i [ create_bd_port -dir I -from 31 -to 0 gpio1_i ]
  set gpio1_o [ create_bd_port -dir O -from 31 -to 0 gpio1_o ]
  set gpio1_t [ create_bd_port -dir O -from 31 -to 0 gpio1_t ]
  set mb_intr_05 [ create_bd_port -dir I -type intr mb_intr_05 ]
  set mb_intr_06 [ create_bd_port -dir I -type intr mb_intr_06 ]
  set phy_rst_n [ create_bd_port -dir O -from 0 -to 0 -type rst phy_rst_n ]
  set phy_sd [ create_bd_port -dir I phy_sd ]
  set rx_data_0_n [ create_bd_port -dir I rx_data_0_n ]
  set rx_data_0_p [ create_bd_port -dir I rx_data_0_p ]
  set rx_data_1_n [ create_bd_port -dir I rx_data_1_n ]
  set rx_data_1_p [ create_bd_port -dir I rx_data_1_p ]
  set rx_data_2_n [ create_bd_port -dir I rx_data_2_n ]
  set rx_data_2_p [ create_bd_port -dir I rx_data_2_p ]
  set rx_data_3_n [ create_bd_port -dir I rx_data_3_n ]
  set rx_data_3_p [ create_bd_port -dir I rx_data_3_p ]
  set rx_ref_clk_0 [ create_bd_port -dir I rx_ref_clk_0 ]
  set rx_ref_clk_2 [ create_bd_port -dir I rx_ref_clk_2 ]
  set rx_sync_0 [ create_bd_port -dir O rx_sync_0 ]
  set rx_sync_2 [ create_bd_port -dir O rx_sync_2 ]
  set rx_sysref_0 [ create_bd_port -dir I rx_sysref_0 ]
  set rx_sysref_2 [ create_bd_port -dir I rx_sysref_2 ]
  set spi_clk_i [ create_bd_port -dir I spi_clk_i ]
  set spi_clk_o [ create_bd_port -dir O spi_clk_o ]
  set spi_csn_i [ create_bd_port -dir I -from 7 -to 0 spi_csn_i ]
  set spi_csn_o [ create_bd_port -dir O -from 7 -to 0 spi_csn_o ]
  set spi_sdi_i [ create_bd_port -dir I spi_sdi_i ]
  set spi_sdo_i [ create_bd_port -dir I spi_sdo_i ]
  set spi_sdo_o [ create_bd_port -dir O spi_sdo_o ]
  set sys_clk_n [ create_bd_port -dir I -type clk sys_clk_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
 ] $sys_clk_n
  set sys_clk_p [ create_bd_port -dir I -type clk sys_clk_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
 ] $sys_clk_p
  set sys_rst [ create_bd_port -dir I -type rst sys_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $sys_rst
  set tx_data_0_n [ create_bd_port -dir O tx_data_0_n ]
  set tx_data_0_p [ create_bd_port -dir O tx_data_0_p ]
  set tx_data_1_n [ create_bd_port -dir O tx_data_1_n ]
  set tx_data_1_p [ create_bd_port -dir O tx_data_1_p ]
  set tx_data_2_n [ create_bd_port -dir O tx_data_2_n ]
  set tx_data_2_p [ create_bd_port -dir O tx_data_2_p ]
  set tx_data_3_n [ create_bd_port -dir O tx_data_3_n ]
  set tx_data_3_p [ create_bd_port -dir O tx_data_3_p ]
  set tx_ref_clk_0 [ create_bd_port -dir I tx_ref_clk_0 ]
  set tx_sync_0 [ create_bd_port -dir I tx_sync_0 ]
  set tx_sysref_0 [ create_bd_port -dir I tx_sysref_0 ]
  set uart_sin [ create_bd_port -dir I uart_sin ]
  set uart_sout [ create_bd_port -dir O uart_sout ]

  # Create instance: axi_ad9371_core, and set properties
  set axi_ad9371_core [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9371:1.0 axi_ad9371_core ]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_core/s_axi]

  # Create instance: axi_ad9371_dacfifo, and set properties
  set axi_ad9371_dacfifo [ create_bd_cell -type ip -vlnv analog.com:user:util_dacfifo:1.0 axi_ad9371_dacfifo ]
  set_property -dict [ list \
   CONFIG.ADDRESS_WIDTH {10} \
   CONFIG.DATA_WIDTH {128} \
 ] $axi_ad9371_dacfifo

  # Create instance: axi_ad9371_rx_clkgen, and set properties
  set axi_ad9371_rx_clkgen [ create_bd_cell -type ip -vlnv analog.com:user:axi_clkgen:1.0 axi_ad9371_rx_clkgen ]
  set_property -dict [ list \
   CONFIG.CLK0_DIV {8} \
   CONFIG.CLKIN_PERIOD {8} \
   CONFIG.DEVICE_TYPE {0} \
   CONFIG.ID {2} \
   CONFIG.VCO_DIV {1} \
   CONFIG.VCO_MUL {8} \
 ] $axi_ad9371_rx_clkgen

  # Create instance: axi_ad9371_rx_dma, and set properties
  set axi_ad9371_rx_dma [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_ad9371_rx_dma ]
  set_property -dict [ list \
   CONFIG.ASYNC_CLK_DEST_REQ {true} \
   CONFIG.ASYNC_CLK_REQ_SRC {true} \
   CONFIG.ASYNC_CLK_SRC_DEST {true} \
   CONFIG.AXI_SLICE_DEST {false} \
   CONFIG.AXI_SLICE_SRC {false} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_2D_TRANSFER {false} \
   CONFIG.DMA_DATA_WIDTH_SRC {64} \
   CONFIG.DMA_TYPE_DEST {0} \
   CONFIG.DMA_TYPE_SRC {2} \
   CONFIG.SYNC_TRANSFER_START {true} \
 ] $axi_ad9371_rx_dma

  # Create instance: axi_ad9371_rx_jesd
  create_hier_cell_axi_ad9371_rx_jesd [current_bd_instance .] axi_ad9371_rx_jesd

  # Create instance: axi_ad9371_rx_jesd_rstgen, and set properties
  set axi_ad9371_rx_jesd_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 axi_ad9371_rx_jesd_rstgen ]

  # Create instance: axi_ad9371_rx_os_clkgen, and set properties
  set axi_ad9371_rx_os_clkgen [ create_bd_cell -type ip -vlnv analog.com:user:axi_clkgen:1.0 axi_ad9371_rx_os_clkgen ]
  set_property -dict [ list \
   CONFIG.CLK0_DIV {8} \
   CONFIG.CLKIN_PERIOD {8} \
   CONFIG.ID {2} \
   CONFIG.VCO_DIV {1} \
   CONFIG.VCO_MUL {8} \
 ] $axi_ad9371_rx_os_clkgen

  # Create instance: axi_ad9371_rx_os_dma, and set properties
  set axi_ad9371_rx_os_dma [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_ad9371_rx_os_dma ]
  set_property -dict [ list \
   CONFIG.ASYNC_CLK_DEST_REQ {true} \
   CONFIG.ASYNC_CLK_REQ_SRC {true} \
   CONFIG.ASYNC_CLK_SRC_DEST {true} \
   CONFIG.AXI_SLICE_DEST {false} \
   CONFIG.AXI_SLICE_SRC {false} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_2D_TRANSFER {false} \
   CONFIG.DMA_DATA_WIDTH_SRC {64} \
   CONFIG.DMA_TYPE_DEST {0} \
   CONFIG.DMA_TYPE_SRC {2} \
   CONFIG.SYNC_TRANSFER_START {true} \
 ] $axi_ad9371_rx_os_dma

  # Create instance: axi_ad9371_rx_os_jesd
  create_hier_cell_axi_ad9371_rx_os_jesd [current_bd_instance .] axi_ad9371_rx_os_jesd

  # Create instance: axi_ad9371_rx_os_jesd_rstgen, and set properties
  set axi_ad9371_rx_os_jesd_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 axi_ad9371_rx_os_jesd_rstgen ]

  # Create instance: axi_ad9371_rx_os_xcvr, and set properties
  set axi_ad9371_rx_os_xcvr [ create_bd_cell -type ip -vlnv analog.com:user:axi_adxcvr:1.0 axi_ad9371_rx_os_xcvr ]
  set_property -dict [ list \
   CONFIG.LPM_OR_DFE_N {1} \
   CONFIG.NUM_OF_LANES {2} \
   CONFIG.OUT_CLK_SEL {"011"} \
   CONFIG.QPLL_ENABLE {0} \
   CONFIG.SYS_CLK_SEL {00} \
   CONFIG.TX_OR_RX_N {0} \
   CONFIG.XCVR_TYPE {0} \
 ] $axi_ad9371_rx_os_xcvr

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_rx_os_xcvr/m_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_rx_os_xcvr/s_axi]

  # Create instance: axi_ad9371_rx_xcvr, and set properties
  set axi_ad9371_rx_xcvr [ create_bd_cell -type ip -vlnv analog.com:user:axi_adxcvr:1.0 axi_ad9371_rx_xcvr ]
  set_property -dict [ list \
   CONFIG.LPM_OR_DFE_N {1} \
   CONFIG.NUM_OF_LANES {2} \
   CONFIG.OUT_CLK_SEL {"011"} \
   CONFIG.QPLL_ENABLE {0} \
   CONFIG.SYS_CLK_SEL {00} \
   CONFIG.TX_OR_RX_N {0} \
   CONFIG.XCVR_TYPE {0} \
 ] $axi_ad9371_rx_xcvr

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_rx_xcvr/m_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_rx_xcvr/s_axi]

  # Create instance: axi_ad9371_tx_clkgen, and set properties
  set axi_ad9371_tx_clkgen [ create_bd_cell -type ip -vlnv analog.com:user:axi_clkgen:1.0 axi_ad9371_tx_clkgen ]
  set_property -dict [ list \
   CONFIG.CLK0_DIV {8} \
   CONFIG.CLKIN_PERIOD {8} \
   CONFIG.DEVICE_TYPE {0} \
   CONFIG.ID {2} \
   CONFIG.VCO_DIV {1} \
   CONFIG.VCO_MUL {8} \
 ] $axi_ad9371_tx_clkgen

  # Create instance: axi_ad9371_tx_dma, and set properties
  set axi_ad9371_tx_dma [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_ad9371_tx_dma ]
  set_property -dict [ list \
   CONFIG.ASYNC_CLK_DEST_REQ {true} \
   CONFIG.ASYNC_CLK_REQ_SRC {true} \
   CONFIG.ASYNC_CLK_SRC_DEST {true} \
   CONFIG.AXI_SLICE_DEST {true} \
   CONFIG.AXI_SLICE_SRC {false} \
   CONFIG.CYCLIC {true} \
   CONFIG.DMA_2D_TRANSFER {false} \
   CONFIG.DMA_DATA_WIDTH_DEST {128} \
   CONFIG.DMA_TYPE_DEST {1} \
   CONFIG.DMA_TYPE_SRC {0} \
 ] $axi_ad9371_tx_dma

  # Create instance: axi_ad9371_tx_jesd
  create_hier_cell_axi_ad9371_tx_jesd [current_bd_instance .] axi_ad9371_tx_jesd

  # Create instance: axi_ad9371_tx_jesd_rstgen, and set properties
  set axi_ad9371_tx_jesd_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 axi_ad9371_tx_jesd_rstgen ]

  # Create instance: axi_ad9371_tx_xcvr, and set properties
  set axi_ad9371_tx_xcvr [ create_bd_cell -type ip -vlnv analog.com:user:axi_adxcvr:1.0 axi_ad9371_tx_xcvr ]
  set_property -dict [ list \
   CONFIG.LPM_OR_DFE_N {0} \
   CONFIG.NUM_OF_LANES {4} \
   CONFIG.OUT_CLK_SEL {"011"} \
   CONFIG.QPLL_ENABLE {1} \
   CONFIG.SYS_CLK_SEL {"11"} \
   CONFIG.TX_OR_RX_N {1} \
   CONFIG.XCVR_TYPE {0} \
 ] $axi_ad9371_tx_xcvr

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /axi_ad9371_tx_xcvr/s_axi]

  # Create instance: axi_cpu_interconnect, and set properties
  set axi_cpu_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_cpu_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {22} \
 ] $axi_cpu_interconnect

  # Create instance: axi_ddr_cntrl_rstgen, and set properties
  set axi_ddr_cntrl_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 axi_ddr_cntrl_rstgen ]

  # Create instance: axi_ethernet, and set properties
  set axi_ethernet [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet ]
  set_property -dict [ list \
   CONFIG.DIFFCLK_BOARD_INTERFACE {Custom} \
   CONFIG.ENABLE_LVDS {true} \
   CONFIG.ETHERNET_BOARD_INTERFACE {Custom} \
   CONFIG.MDIO_BOARD_INTERFACE {mdio_mdc} \
   CONFIG.PHYRST_BOARD_INTERFACE {phy_reset_out} \
   CONFIG.PHY_TYPE {SGMII} \
   CONFIG.RXCSUM {Full} \
   CONFIG.RXMEM {8k} \
   CONFIG.TXCSUM {Full} \
   CONFIG.TXMEM {8k} \
   CONFIG.lvdsclkrate {625} \
 ] $axi_ethernet

  # Create instance: axi_ethernet_dma, and set properties
  set axi_ethernet_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_ethernet_dma ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_sg_use_stsapp_length {1} \
 ] $axi_ethernet_dma

  # Create instance: axi_gpio, and set properties
  set axi_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio ]
  set_property -dict [ list \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio

  # Create instance: axi_iic_main, and set properties
  set axi_iic_main [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_main ]

  # Create instance: axi_intc, and set properties
  set axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {0} \
 ] $axi_intc

  # Create instance: axi_mem_interconnect, and set properties
  set axi_mem_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {10} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S03_HAS_DATA_FIFO {2} \
   CONFIG.S04_HAS_DATA_FIFO {2} \
   CONFIG.S05_HAS_DATA_FIFO {2} \
   CONFIG.S06_HAS_DATA_FIFO {2} \
   CONFIG.S07_HAS_DATA_FIFO {2} \
   CONFIG.S08_HAS_DATA_FIFO {2} \
   CONFIG.S09_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {2} \
 ] $axi_mem_interconnect

  # Create instance: axi_spi, and set properties
  set axi_spi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_spi ]
  set_property -dict [ list \
   CONFIG.C_FAMILY {kintexu} \
   CONFIG.C_NUM_SS_BITS {8} \
   CONFIG.C_SCK_RATIO {8} \
   CONFIG.C_SUB_FAMILY {kintexu} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
   CONFIG.UC_FAMILY {1} \
 ] $axi_spi

  # Create instance: axi_timer, and set properties
  set axi_timer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer ]

  # Create instance: axi_uart, and set properties
  set axi_uart [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uart ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
 ] $axi_uart

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_0

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.0 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_b.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_system_mig_7series_0_1 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {ddr3_sdram} \
   CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_b.prj} \
 ] $mig_7series_0

  # Create instance: sys_concat_intc, and set properties
  set sys_concat_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 sys_concat_intc ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {16} \
 ] $sys_concat_intc

  # Create instance: sys_dlmb, and set properties
  set sys_dlmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 sys_dlmb ]

  # Create instance: sys_dlmb_cntlr, and set properties
  set sys_dlmb_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 sys_dlmb_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $sys_dlmb_cntlr

  # Create instance: sys_dma_rstgen, and set properties
  set sys_dma_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 sys_dma_rstgen ]
  set_property -dict [ list \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $sys_dma_rstgen

  # Create instance: sys_ilmb, and set properties
  set sys_ilmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 sys_ilmb ]

  # Create instance: sys_ilmb_cntlr, and set properties
  set sys_ilmb_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 sys_ilmb_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $sys_ilmb_cntlr

  # Create instance: sys_mb, and set properties
  set sys_mb [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 sys_mb ]
  set_property -dict [ list \
   CONFIG.C_CACHE_BYTE_SIZE {16384} \
   CONFIG.C_DCACHE_BYTE_SIZE {16384} \
   CONFIG.C_DCACHE_VICTIMS {8} \
   CONFIG.C_DIV_ZERO_EXCEPTION {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_ICACHE_LINE_LEN {8} \
   CONFIG.C_ICACHE_STREAMS {1} \
   CONFIG.C_ICACHE_VICTIMS {8} \
   CONFIG.C_ILL_OPCODE_EXCEPTION {1} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_M_AXI_D_BUS_EXCEPTION {1} \
   CONFIG.C_M_AXI_I_BUS_EXCEPTION {1} \
   CONFIG.C_OPCODE_0x0_ILLEGAL {1} \
   CONFIG.C_PVR {2} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {1} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_HW_MUL {2} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MMU {3} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.G_TEMPLATE_LIST {4} \
   CONFIG.G_USE_EXCEPTIONS {1} \
 ] $sys_mb

  # Create instance: sys_mb_debug, and set properties
  set sys_mb_debug [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 sys_mb_debug ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $sys_mb_debug

  # Create instance: sys_rstgen, and set properties
  set sys_rstgen [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 sys_rstgen ]

  # Create instance: util_ad9371_rx_cpack, and set properties
  set util_ad9371_rx_cpack [ create_bd_cell -type ip -vlnv analog.com:user:util_cpack:1.0 util_ad9371_rx_cpack ]
  set_property -dict [ list \
   CONFIG.CHANNEL_DATA_WIDTH {16} \
   CONFIG.NUM_OF_CHANNELS {4} \
 ] $util_ad9371_rx_cpack

  # Create instance: util_ad9371_rx_os_cpack, and set properties
  set util_ad9371_rx_os_cpack [ create_bd_cell -type ip -vlnv analog.com:user:util_cpack:1.0 util_ad9371_rx_os_cpack ]
  set_property -dict [ list \
   CONFIG.CHANNEL_DATA_WIDTH {32} \
   CONFIG.NUM_OF_CHANNELS {2} \
 ] $util_ad9371_rx_os_cpack

  # Create instance: util_ad9371_tx_upack, and set properties
  set util_ad9371_tx_upack [ create_bd_cell -type ip -vlnv analog.com:user:util_upack:1.0 util_ad9371_tx_upack ]
  set_property -dict [ list \
   CONFIG.CHANNEL_DATA_WIDTH {32} \
   CONFIG.NUM_OF_CHANNELS {4} \
 ] $util_ad9371_tx_upack

  # Create instance: util_ad9371_xcvr, and set properties
  set util_ad9371_xcvr [ create_bd_cell -type ip -vlnv analog.com:user:util_adxcvr:1.0 util_ad9371_xcvr ]
  set_property -dict [ list \
   CONFIG.CPLL_FBDIV {4} \
   CONFIG.QPLL_FBDIV {"0001010000"} \
   CONFIG.QPLL_REFCLK_DIV {1} \
   CONFIG.RX_CDR_CFG {0x03000023ff10400020} \
   CONFIG.RX_CLK25_DIV {5} \
   CONFIG.RX_NUM_OF_LANES {4} \
   CONFIG.RX_PMA_CFG {0x00018480} \
   CONFIG.TX_CLK25_DIV {5} \
   CONFIG.TX_NUM_OF_LANES {4} \
   CONFIG.TX_OUT_DIV {2} \
   CONFIG.XCVR_TYPE {0} \
 ] $util_ad9371_xcvr

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins sys_dlmb/LMB_Sl_0] [get_bd_intf_pins sys_dlmb_cntlr/SLMB]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins sys_ilmb/LMB_Sl_0] [get_bd_intf_pins sys_ilmb_cntlr/SLMB]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_cpu_interconnect/S00_AXI] [get_bd_intf_pins sys_mb/M_AXI_DP]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins axi_mem_interconnect/S00_AXI] [get_bd_intf_pins sys_mb/M_AXI_DC]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins axi_mem_interconnect/S01_AXI] [get_bd_intf_pins sys_mb/M_AXI_IC]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_pins axi_ethernet_dma/M_AXI_SG] [get_bd_intf_pins axi_mem_interconnect/S02_AXI]
  connect_bd_intf_net -intf_net S03_AXI_1 [get_bd_intf_pins axi_ethernet_dma/M_AXI_MM2S] [get_bd_intf_pins axi_mem_interconnect/S03_AXI]
  connect_bd_intf_net -intf_net S04_AXI_1 [get_bd_intf_pins axi_ethernet_dma/M_AXI_S2MM] [get_bd_intf_pins axi_mem_interconnect/S04_AXI]
  connect_bd_intf_net -intf_net S05_AXI_1 [get_bd_intf_pins axi_ad9371_rx_xcvr/m_axi] [get_bd_intf_pins axi_mem_interconnect/S05_AXI]
  connect_bd_intf_net -intf_net S06_AXI_1 [get_bd_intf_pins axi_ad9371_rx_os_xcvr/m_axi] [get_bd_intf_pins axi_mem_interconnect/S06_AXI]
  connect_bd_intf_net -intf_net S07_AXI_1 [get_bd_intf_pins axi_ad9371_tx_dma/m_src_axi] [get_bd_intf_pins axi_mem_interconnect/S07_AXI]
  connect_bd_intf_net -intf_net S08_AXI_1 [get_bd_intf_pins axi_ad9371_rx_dma/m_dest_axi] [get_bd_intf_pins axi_mem_interconnect/S08_AXI]
  connect_bd_intf_net -intf_net S09_AXI_1 [get_bd_intf_pins axi_ad9371_rx_os_dma/m_dest_axi] [get_bd_intf_pins axi_mem_interconnect/S09_AXI]
  connect_bd_intf_net -intf_net axi_ad9371_rx_os_xcvr_up_ch_0 [get_bd_intf_pins axi_ad9371_rx_os_xcvr/up_ch_0] [get_bd_intf_pins util_ad9371_xcvr/up_rx_2]
  connect_bd_intf_net -intf_net axi_ad9371_rx_os_xcvr_up_ch_1 [get_bd_intf_pins axi_ad9371_rx_os_xcvr/up_ch_1] [get_bd_intf_pins util_ad9371_xcvr/up_rx_3]
  connect_bd_intf_net -intf_net axi_ad9371_rx_os_xcvr_up_es_0 [get_bd_intf_pins axi_ad9371_rx_os_xcvr/up_es_0] [get_bd_intf_pins util_ad9371_xcvr/up_es_2]
  connect_bd_intf_net -intf_net axi_ad9371_rx_os_xcvr_up_es_1 [get_bd_intf_pins axi_ad9371_rx_os_xcvr/up_es_1] [get_bd_intf_pins util_ad9371_xcvr/up_es_3]
  connect_bd_intf_net -intf_net axi_ad9371_rx_xcvr_up_ch_0 [get_bd_intf_pins axi_ad9371_rx_xcvr/up_ch_0] [get_bd_intf_pins util_ad9371_xcvr/up_rx_0]
  connect_bd_intf_net -intf_net axi_ad9371_rx_xcvr_up_ch_1 [get_bd_intf_pins axi_ad9371_rx_xcvr/up_ch_1] [get_bd_intf_pins util_ad9371_xcvr/up_rx_1]
  connect_bd_intf_net -intf_net axi_ad9371_rx_xcvr_up_es_0 [get_bd_intf_pins axi_ad9371_rx_xcvr/up_es_0] [get_bd_intf_pins util_ad9371_xcvr/up_es_0]
  connect_bd_intf_net -intf_net axi_ad9371_rx_xcvr_up_es_1 [get_bd_intf_pins axi_ad9371_rx_xcvr/up_es_1] [get_bd_intf_pins util_ad9371_xcvr/up_es_1]
  connect_bd_intf_net -intf_net axi_ad9371_tx_jesd_tx_phy0 [get_bd_intf_pins axi_ad9371_tx_jesd/tx_phy0] [get_bd_intf_pins util_ad9371_xcvr/tx_1]
  connect_bd_intf_net -intf_net axi_ad9371_tx_jesd_tx_phy1 [get_bd_intf_pins axi_ad9371_tx_jesd/tx_phy1] [get_bd_intf_pins util_ad9371_xcvr/tx_2]
  connect_bd_intf_net -intf_net axi_ad9371_tx_jesd_tx_phy2 [get_bd_intf_pins axi_ad9371_tx_jesd/tx_phy2] [get_bd_intf_pins util_ad9371_xcvr/tx_3]
  connect_bd_intf_net -intf_net axi_ad9371_tx_jesd_tx_phy3 [get_bd_intf_pins axi_ad9371_tx_jesd/tx_phy3] [get_bd_intf_pins util_ad9371_xcvr/tx_0]
  connect_bd_intf_net -intf_net axi_ad9371_tx_xcvr_up_ch_0 [get_bd_intf_pins axi_ad9371_tx_xcvr/up_ch_0] [get_bd_intf_pins util_ad9371_xcvr/up_tx_0]
  connect_bd_intf_net -intf_net axi_ad9371_tx_xcvr_up_ch_1 [get_bd_intf_pins axi_ad9371_tx_xcvr/up_ch_1] [get_bd_intf_pins util_ad9371_xcvr/up_tx_1]
  connect_bd_intf_net -intf_net axi_ad9371_tx_xcvr_up_ch_2 [get_bd_intf_pins axi_ad9371_tx_xcvr/up_ch_2] [get_bd_intf_pins util_ad9371_xcvr/up_tx_2]
  connect_bd_intf_net -intf_net axi_ad9371_tx_xcvr_up_ch_3 [get_bd_intf_pins axi_ad9371_tx_xcvr/up_ch_3] [get_bd_intf_pins util_ad9371_xcvr/up_tx_3]
  connect_bd_intf_net -intf_net axi_ad9371_tx_xcvr_up_cm_0 [get_bd_intf_pins axi_ad9371_tx_xcvr/up_cm_0] [get_bd_intf_pins util_ad9371_xcvr/up_cm_0]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M00_AXI [get_bd_intf_pins axi_cpu_interconnect/M00_AXI] [get_bd_intf_pins sys_mb_debug/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M01_AXI [get_bd_intf_pins axi_cpu_interconnect/M01_AXI] [get_bd_intf_pins axi_ethernet/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M02_AXI [get_bd_intf_pins axi_cpu_interconnect/M02_AXI] [get_bd_intf_pins axi_ethernet_dma/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M03_AXI [get_bd_intf_pins axi_cpu_interconnect/M03_AXI] [get_bd_intf_pins axi_uart/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M04_AXI [get_bd_intf_pins axi_cpu_interconnect/M04_AXI] [get_bd_intf_pins axi_timer/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M05_AXI [get_bd_intf_pins axi_cpu_interconnect/M05_AXI] [get_bd_intf_pins axi_intc/s_axi]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M06_AXI [get_bd_intf_pins axi_cpu_interconnect/M06_AXI] [get_bd_intf_pins axi_iic_main/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M07_AXI [get_bd_intf_pins axi_cpu_interconnect/M07_AXI] [get_bd_intf_pins axi_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M08_AXI [get_bd_intf_pins axi_cpu_interconnect/M08_AXI] [get_bd_intf_pins axi_spi/AXI_LITE]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M09_AXI [get_bd_intf_pins axi_ad9371_core/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M09_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M10_AXI [get_bd_intf_pins axi_ad9371_tx_xcvr/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M10_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M11_AXI [get_bd_intf_pins axi_ad9371_tx_clkgen/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M11_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M12_AXI [get_bd_intf_pins axi_ad9371_tx_jesd/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M12_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M13_AXI [get_bd_intf_pins axi_ad9371_tx_dma/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M13_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M14_AXI [get_bd_intf_pins axi_ad9371_rx_xcvr/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M14_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M15_AXI [get_bd_intf_pins axi_ad9371_rx_clkgen/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M15_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M16_AXI [get_bd_intf_pins axi_ad9371_rx_jesd/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M16_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M17_AXI [get_bd_intf_pins axi_ad9371_rx_dma/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M17_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M18_AXI [get_bd_intf_pins axi_ad9371_rx_os_xcvr/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M18_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M19_AXI [get_bd_intf_pins axi_ad9371_rx_os_clkgen/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M19_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M20_AXI [get_bd_intf_pins axi_ad9371_rx_os_jesd/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M20_AXI]
  connect_bd_intf_net -intf_net axi_cpu_interconnect_M21_AXI [get_bd_intf_pins axi_ad9371_rx_os_dma/s_axi] [get_bd_intf_pins axi_cpu_interconnect/M21_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_dma_M_AXIS_CNTRL [get_bd_intf_pins axi_ethernet/s_axis_txc] [get_bd_intf_pins axi_ethernet_dma/M_AXIS_CNTRL]
  connect_bd_intf_net -intf_net axi_ethernet_dma_M_AXIS_MM2S [get_bd_intf_pins axi_ethernet/s_axis_txd] [get_bd_intf_pins axi_ethernet_dma/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_ethernet_m_axis_rxd [get_bd_intf_pins axi_ethernet/m_axis_rxd] [get_bd_intf_pins axi_ethernet_dma/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net axi_ethernet_m_axis_rxs [get_bd_intf_pins axi_ethernet/m_axis_rxs] [get_bd_intf_pins axi_ethernet_dma/S_AXIS_STS]
  connect_bd_intf_net -intf_net axi_ethernet_mdio [get_bd_intf_ports mdio] [get_bd_intf_pins axi_ethernet/mdio]
  connect_bd_intf_net -intf_net axi_ethernet_sgmii [get_bd_intf_ports sgmii] [get_bd_intf_pins axi_ethernet/sgmii]
  connect_bd_intf_net -intf_net axi_iic_main_IIC [get_bd_intf_ports iic_main] [get_bd_intf_pins axi_iic_main/IIC]
  connect_bd_intf_net -intf_net axi_intc_interrupt [get_bd_intf_pins axi_intc/interrupt] [get_bd_intf_pins sys_mb/INTERRUPT]
  connect_bd_intf_net -intf_net axi_mem_interconnect_M00_AXI [get_bd_intf_pins axi_mem_interconnect/M00_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3] [get_bd_intf_pins mig_7series_0/DDR3]
  connect_bd_intf_net -intf_net phy_clk_1 [get_bd_intf_ports phy_clk] [get_bd_intf_pins axi_ethernet/lvds_clk]
  connect_bd_intf_net -intf_net sys_dlmb_cntlr_BRAM_PORT [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA] [get_bd_intf_pins sys_dlmb_cntlr/BRAM_PORT]
  connect_bd_intf_net -intf_net sys_ilmb_cntlr_BRAM_PORT [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB] [get_bd_intf_pins sys_ilmb_cntlr/BRAM_PORT]
  connect_bd_intf_net -intf_net sys_mb_DLMB [get_bd_intf_pins sys_dlmb/LMB_M] [get_bd_intf_pins sys_mb/DLMB]
  connect_bd_intf_net -intf_net sys_mb_ILMB [get_bd_intf_pins sys_ilmb/LMB_M] [get_bd_intf_pins sys_mb/ILMB]
  connect_bd_intf_net -intf_net sys_mb_debug_MBDEBUG_0 [get_bd_intf_pins sys_mb/DEBUG] [get_bd_intf_pins sys_mb_debug/MBDEBUG_0]
  connect_bd_intf_net -intf_net util_ad9371_xcvr_rx_0 [get_bd_intf_pins axi_ad9371_rx_jesd/rx_phy0] [get_bd_intf_pins util_ad9371_xcvr/rx_0]
  connect_bd_intf_net -intf_net util_ad9371_xcvr_rx_1 [get_bd_intf_pins axi_ad9371_rx_jesd/rx_phy1] [get_bd_intf_pins util_ad9371_xcvr/rx_1]
  connect_bd_intf_net -intf_net util_ad9371_xcvr_rx_2 [get_bd_intf_pins axi_ad9371_rx_os_jesd/rx_phy0] [get_bd_intf_pins util_ad9371_xcvr/rx_2]
  connect_bd_intf_net -intf_net util_ad9371_xcvr_rx_3 [get_bd_intf_pins axi_ad9371_rx_os_jesd/rx_phy1] [get_bd_intf_pins util_ad9371_xcvr/rx_3]

  # Create port connections
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins axi_ddr_cntrl_rstgen/peripheral_aresetn] [get_bd_pins axi_mem_interconnect/M00_ARESETN] [get_bd_pins mig_7series_0/aresetn]
  connect_bd_net -net axi_ad9371_core_adc_data_i0 [get_bd_pins axi_ad9371_core/adc_data_i0] [get_bd_pins util_ad9371_rx_cpack/adc_data_0]
  connect_bd_net -net axi_ad9371_core_adc_data_i1 [get_bd_pins axi_ad9371_core/adc_data_i1] [get_bd_pins util_ad9371_rx_cpack/adc_data_2]
  connect_bd_net -net axi_ad9371_core_adc_data_q0 [get_bd_pins axi_ad9371_core/adc_data_q0] [get_bd_pins util_ad9371_rx_cpack/adc_data_1]
  connect_bd_net -net axi_ad9371_core_adc_data_q1 [get_bd_pins axi_ad9371_core/adc_data_q1] [get_bd_pins util_ad9371_rx_cpack/adc_data_3]
  connect_bd_net -net axi_ad9371_core_adc_enable_i0 [get_bd_pins axi_ad9371_core/adc_enable_i0] [get_bd_pins util_ad9371_rx_cpack/adc_enable_0]
  connect_bd_net -net axi_ad9371_core_adc_enable_i1 [get_bd_pins axi_ad9371_core/adc_enable_i1] [get_bd_pins util_ad9371_rx_cpack/adc_enable_2]
  connect_bd_net -net axi_ad9371_core_adc_enable_q0 [get_bd_pins axi_ad9371_core/adc_enable_q0] [get_bd_pins util_ad9371_rx_cpack/adc_enable_1]
  connect_bd_net -net axi_ad9371_core_adc_enable_q1 [get_bd_pins axi_ad9371_core/adc_enable_q1] [get_bd_pins util_ad9371_rx_cpack/adc_enable_3]
  connect_bd_net -net axi_ad9371_core_adc_os_data_i0 [get_bd_pins axi_ad9371_core/adc_os_data_i0] [get_bd_pins util_ad9371_rx_os_cpack/adc_data_0]
  connect_bd_net -net axi_ad9371_core_adc_os_data_q0 [get_bd_pins axi_ad9371_core/adc_os_data_q0] [get_bd_pins util_ad9371_rx_os_cpack/adc_data_1]
  connect_bd_net -net axi_ad9371_core_adc_os_enable_i0 [get_bd_pins axi_ad9371_core/adc_os_enable_i0] [get_bd_pins util_ad9371_rx_os_cpack/adc_enable_0]
  connect_bd_net -net axi_ad9371_core_adc_os_enable_q0 [get_bd_pins axi_ad9371_core/adc_os_enable_q0] [get_bd_pins util_ad9371_rx_os_cpack/adc_enable_1]
  connect_bd_net -net axi_ad9371_core_adc_os_valid_i0 [get_bd_pins axi_ad9371_core/adc_os_valid_i0] [get_bd_pins util_ad9371_rx_os_cpack/adc_valid_0]
  connect_bd_net -net axi_ad9371_core_adc_os_valid_q0 [get_bd_pins axi_ad9371_core/adc_os_valid_q0] [get_bd_pins util_ad9371_rx_os_cpack/adc_valid_1]
  connect_bd_net -net axi_ad9371_core_adc_valid_i0 [get_bd_pins axi_ad9371_core/adc_valid_i0] [get_bd_pins util_ad9371_rx_cpack/adc_valid_0]
  connect_bd_net -net axi_ad9371_core_adc_valid_i1 [get_bd_pins axi_ad9371_core/adc_valid_i1] [get_bd_pins util_ad9371_rx_cpack/adc_valid_2]
  connect_bd_net -net axi_ad9371_core_adc_valid_q0 [get_bd_pins axi_ad9371_core/adc_valid_q0] [get_bd_pins util_ad9371_rx_cpack/adc_valid_1]
  connect_bd_net -net axi_ad9371_core_adc_valid_q1 [get_bd_pins axi_ad9371_core/adc_valid_q1] [get_bd_pins util_ad9371_rx_cpack/adc_valid_3]
  connect_bd_net -net axi_ad9371_core_dac_enable_i0 [get_bd_pins axi_ad9371_core/dac_enable_i0] [get_bd_pins util_ad9371_tx_upack/dac_enable_0]
  connect_bd_net -net axi_ad9371_core_dac_enable_i1 [get_bd_pins axi_ad9371_core/dac_enable_i1] [get_bd_pins util_ad9371_tx_upack/dac_enable_2]
  connect_bd_net -net axi_ad9371_core_dac_enable_q0 [get_bd_pins axi_ad9371_core/dac_enable_q0] [get_bd_pins util_ad9371_tx_upack/dac_enable_1]
  connect_bd_net -net axi_ad9371_core_dac_enable_q1 [get_bd_pins axi_ad9371_core/dac_enable_q1] [get_bd_pins util_ad9371_tx_upack/dac_enable_3]
  connect_bd_net -net axi_ad9371_core_dac_valid_i0 [get_bd_pins axi_ad9371_core/dac_valid_i0] [get_bd_pins util_ad9371_tx_upack/dac_valid_0]
  connect_bd_net -net axi_ad9371_core_dac_valid_i1 [get_bd_pins axi_ad9371_core/dac_valid_i1] [get_bd_pins util_ad9371_tx_upack/dac_valid_2]
  connect_bd_net -net axi_ad9371_core_dac_valid_q0 [get_bd_pins axi_ad9371_core/dac_valid_q0] [get_bd_pins util_ad9371_tx_upack/dac_valid_1]
  connect_bd_net -net axi_ad9371_core_dac_valid_q1 [get_bd_pins axi_ad9371_core/dac_valid_q1] [get_bd_pins util_ad9371_tx_upack/dac_valid_3]
  connect_bd_net -net axi_ad9371_dacfifo_dac_data [get_bd_pins axi_ad9371_dacfifo/dac_data] [get_bd_pins util_ad9371_tx_upack/dac_data]
  connect_bd_net -net axi_ad9371_dacfifo_dac_dunf [get_bd_pins axi_ad9371_core/dac_dunf] [get_bd_pins axi_ad9371_dacfifo/dac_dunf]
  connect_bd_net -net axi_ad9371_dacfifo_dma_ready [get_bd_pins axi_ad9371_dacfifo/dma_ready] [get_bd_pins axi_ad9371_tx_dma/m_axis_ready]
  connect_bd_net -net axi_ad9371_rx_clkgen_clk_0 [get_bd_pins axi_ad9371_core/adc_clk] [get_bd_pins axi_ad9371_rx_clkgen/clk_0] [get_bd_pins axi_ad9371_rx_dma/fifo_wr_clk] [get_bd_pins axi_ad9371_rx_jesd/device_clk] [get_bd_pins axi_ad9371_rx_jesd_rstgen/slowest_sync_clk] [get_bd_pins util_ad9371_rx_cpack/adc_clk] [get_bd_pins util_ad9371_xcvr/rx_clk_0] [get_bd_pins util_ad9371_xcvr/rx_clk_1]
  connect_bd_net -net axi_ad9371_rx_dma_fifo_wr_overflow [get_bd_pins axi_ad9371_core/adc_dovf] [get_bd_pins axi_ad9371_rx_dma/fifo_wr_overflow]
  connect_bd_net -net axi_ad9371_rx_dma_irq [get_bd_pins axi_ad9371_rx_dma/irq] [get_bd_pins sys_concat_intc/In12]
  connect_bd_net -net axi_ad9371_rx_jesd_irq [get_bd_pins axi_ad9371_rx_jesd/irq] [get_bd_pins sys_concat_intc/In15]
  connect_bd_net -net axi_ad9371_rx_jesd_phy_en_char_align [get_bd_pins axi_ad9371_rx_jesd/phy_en_char_align] [get_bd_pins util_ad9371_xcvr/rx_calign_0] [get_bd_pins util_ad9371_xcvr/rx_calign_1]
  connect_bd_net -net axi_ad9371_rx_jesd_rstgen_peripheral_reset [get_bd_pins axi_ad9371_rx_jesd_rstgen/peripheral_reset] [get_bd_pins util_ad9371_rx_cpack/adc_rst]
  connect_bd_net -net axi_ad9371_rx_jesd_rx_data_tdata [get_bd_pins axi_ad9371_core/adc_rx_data] [get_bd_pins axi_ad9371_rx_jesd/rx_data_tdata]
  connect_bd_net -net axi_ad9371_rx_jesd_rx_sof [get_bd_pins axi_ad9371_core/adc_rx_sof] [get_bd_pins axi_ad9371_rx_jesd/rx_sof]
  connect_bd_net -net axi_ad9371_rx_jesd_sync [get_bd_ports rx_sync_0] [get_bd_pins axi_ad9371_rx_jesd/sync]
  connect_bd_net -net axi_ad9371_rx_os_clkgen_clk_0 [get_bd_pins axi_ad9371_core/adc_os_clk] [get_bd_pins axi_ad9371_rx_os_clkgen/clk_0] [get_bd_pins axi_ad9371_rx_os_dma/fifo_wr_clk] [get_bd_pins axi_ad9371_rx_os_jesd/device_clk] [get_bd_pins axi_ad9371_rx_os_jesd_rstgen/slowest_sync_clk] [get_bd_pins util_ad9371_rx_os_cpack/adc_clk] [get_bd_pins util_ad9371_xcvr/rx_clk_2] [get_bd_pins util_ad9371_xcvr/rx_clk_3]
  connect_bd_net -net axi_ad9371_rx_os_dma_fifo_wr_overflow [get_bd_pins axi_ad9371_core/adc_os_dovf] [get_bd_pins axi_ad9371_rx_os_dma/fifo_wr_overflow]
  connect_bd_net -net axi_ad9371_rx_os_dma_irq [get_bd_pins axi_ad9371_rx_os_dma/irq] [get_bd_pins sys_concat_intc/In14]
  connect_bd_net -net axi_ad9371_rx_os_jesd_irq [get_bd_pins axi_ad9371_rx_os_jesd/irq] [get_bd_pins sys_concat_intc/In8]
  connect_bd_net -net axi_ad9371_rx_os_jesd_phy_en_char_align [get_bd_pins axi_ad9371_rx_os_jesd/phy_en_char_align] [get_bd_pins util_ad9371_xcvr/rx_calign_2] [get_bd_pins util_ad9371_xcvr/rx_calign_3]
  connect_bd_net -net axi_ad9371_rx_os_jesd_rstgen_peripheral_reset [get_bd_pins axi_ad9371_rx_os_jesd_rstgen/peripheral_reset] [get_bd_pins util_ad9371_rx_os_cpack/adc_rst]
  connect_bd_net -net axi_ad9371_rx_os_jesd_rx_data_tdata [get_bd_pins axi_ad9371_core/adc_rx_os_data] [get_bd_pins axi_ad9371_rx_os_jesd/rx_data_tdata]
  connect_bd_net -net axi_ad9371_rx_os_jesd_rx_sof [get_bd_pins axi_ad9371_core/adc_rx_os_sof] [get_bd_pins axi_ad9371_rx_os_jesd/rx_sof]
  connect_bd_net -net axi_ad9371_rx_os_jesd_sync [get_bd_ports rx_sync_2] [get_bd_pins axi_ad9371_rx_os_jesd/sync]
  connect_bd_net -net axi_ad9371_rx_os_xcvr_up_pll_rst [get_bd_pins axi_ad9371_rx_os_xcvr/up_pll_rst] [get_bd_pins util_ad9371_xcvr/up_cpll_rst_2] [get_bd_pins util_ad9371_xcvr/up_cpll_rst_3]
  connect_bd_net -net axi_ad9371_rx_xcvr_up_pll_rst [get_bd_pins axi_ad9371_rx_xcvr/up_pll_rst] [get_bd_pins util_ad9371_xcvr/up_cpll_rst_0] [get_bd_pins util_ad9371_xcvr/up_cpll_rst_1]
  connect_bd_net -net axi_ad9371_tx_clkgen_clk_0 [get_bd_pins axi_ad9371_core/dac_clk] [get_bd_pins axi_ad9371_dacfifo/dac_clk] [get_bd_pins axi_ad9371_tx_clkgen/clk_0] [get_bd_pins axi_ad9371_tx_jesd/device_clk] [get_bd_pins axi_ad9371_tx_jesd_rstgen/slowest_sync_clk] [get_bd_pins util_ad9371_tx_upack/dac_clk] [get_bd_pins util_ad9371_xcvr/tx_clk_0] [get_bd_pins util_ad9371_xcvr/tx_clk_1] [get_bd_pins util_ad9371_xcvr/tx_clk_2] [get_bd_pins util_ad9371_xcvr/tx_clk_3]
  connect_bd_net -net axi_ad9371_tx_dma_irq [get_bd_pins axi_ad9371_tx_dma/irq] [get_bd_pins sys_concat_intc/In13]
  connect_bd_net -net axi_ad9371_tx_dma_m_axis_data [get_bd_pins axi_ad9371_dacfifo/dma_data] [get_bd_pins axi_ad9371_tx_dma/m_axis_data]
  connect_bd_net -net axi_ad9371_tx_dma_m_axis_last [get_bd_pins axi_ad9371_dacfifo/dma_xfer_last] [get_bd_pins axi_ad9371_tx_dma/m_axis_last]
  connect_bd_net -net axi_ad9371_tx_dma_m_axis_valid [get_bd_pins axi_ad9371_dacfifo/dma_valid] [get_bd_pins axi_ad9371_tx_dma/m_axis_valid]
  connect_bd_net -net axi_ad9371_tx_dma_m_axis_xfer_req [get_bd_pins axi_ad9371_dacfifo/dma_xfer_req] [get_bd_pins axi_ad9371_tx_dma/m_axis_xfer_req]
  connect_bd_net -net axi_ad9371_tx_jesd_irq [get_bd_pins axi_ad9371_tx_jesd/irq] [get_bd_pins sys_concat_intc/In7]
  connect_bd_net -net axi_ad9371_tx_jesd_rstgen_peripheral_reset [get_bd_pins axi_ad9371_dacfifo/dac_rst] [get_bd_pins axi_ad9371_tx_jesd_rstgen/peripheral_reset]
  connect_bd_net -net axi_ad9371_tx_xcvr_up_pll_rst [get_bd_pins axi_ad9371_tx_xcvr/up_pll_rst] [get_bd_pins util_ad9371_xcvr/up_qpll_rst_0]
  connect_bd_net -net axi_ddr_cntrl_c0_ddr4_ui_clk_sync_rst [get_bd_pins axi_ddr_cntrl_rstgen/ext_reset_in] [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins sys_rstgen/ext_reset_in]
  connect_bd_net -net axi_ethernet_dma_mm2s_cntrl_reset_out_n [get_bd_pins axi_ethernet/axi_txc_arstn] [get_bd_pins axi_ethernet_dma/mm2s_cntrl_reset_out_n]
  connect_bd_net -net axi_ethernet_dma_mm2s_introut [get_bd_pins axi_ethernet_dma/mm2s_introut] [get_bd_pins sys_concat_intc/In2]
  connect_bd_net -net axi_ethernet_dma_mm2s_prmry_reset_out_n [get_bd_pins axi_ethernet/axi_txd_arstn] [get_bd_pins axi_ethernet_dma/mm2s_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_dma_s2mm_introut [get_bd_pins axi_ethernet_dma/s2mm_introut] [get_bd_pins sys_concat_intc/In3]
  connect_bd_net -net axi_ethernet_dma_s2mm_prmry_reset_out_n [get_bd_pins axi_ethernet/axi_rxd_arstn] [get_bd_pins axi_ethernet_dma/s2mm_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_dma_s2mm_sts_reset_out_n [get_bd_pins axi_ethernet/axi_rxs_arstn] [get_bd_pins axi_ethernet_dma/s2mm_sts_reset_out_n]
  connect_bd_net -net axi_ethernet_interrupt [get_bd_pins axi_ethernet/interrupt] [get_bd_pins sys_concat_intc/In1]
  connect_bd_net -net axi_ethernet_phy_rst_n [get_bd_ports phy_rst_n] [get_bd_pins axi_ethernet/phy_rst_n]
  connect_bd_net -net axi_gpio_gpio2_io_o [get_bd_ports gpio1_o] [get_bd_pins axi_gpio/gpio2_io_o]
  connect_bd_net -net axi_gpio_gpio2_io_t [get_bd_ports gpio1_t] [get_bd_pins axi_gpio/gpio2_io_t]
  connect_bd_net -net axi_gpio_gpio_io_o [get_bd_ports gpio0_o] [get_bd_pins axi_gpio/gpio_io_o]
  connect_bd_net -net axi_gpio_gpio_io_t [get_bd_ports gpio0_t] [get_bd_pins axi_gpio/gpio_io_t]
  connect_bd_net -net axi_gpio_ip2intc_irpt [get_bd_pins axi_gpio/ip2intc_irpt] [get_bd_pins sys_concat_intc/In11]
  connect_bd_net -net axi_iic_main_iic2intc_irpt [get_bd_pins axi_iic_main/iic2intc_irpt] [get_bd_pins sys_concat_intc/In9]
  connect_bd_net -net axi_spi_io0_o [get_bd_ports spi_sdo_o] [get_bd_pins axi_spi/io0_o]
  connect_bd_net -net axi_spi_ip2intc_irpt [get_bd_pins axi_spi/ip2intc_irpt] [get_bd_pins sys_concat_intc/In10]
  connect_bd_net -net axi_spi_sck_o [get_bd_ports spi_clk_o] [get_bd_pins axi_spi/sck_o]
  connect_bd_net -net axi_spi_ss_o [get_bd_ports spi_csn_o] [get_bd_pins axi_spi/ss_o]
  connect_bd_net -net axi_timer_interrupt [get_bd_pins axi_timer/interrupt] [get_bd_pins sys_concat_intc/In0]
  connect_bd_net -net axi_uart_interrupt [get_bd_pins axi_uart/interrupt] [get_bd_pins sys_concat_intc/In4]
  connect_bd_net -net axi_uart_tx [get_bd_ports uart_sout] [get_bd_pins axi_uart/tx]
  connect_bd_net -net dac_fifo_bypass_1 [get_bd_ports dac_fifo_bypass] [get_bd_pins axi_ad9371_dacfifo/bypass]
  connect_bd_net -net gpio0_i_1 [get_bd_ports gpio0_i] [get_bd_pins axi_gpio/gpio_io_i]
  connect_bd_net -net gpio1_i_1 [get_bd_ports gpio1_i] [get_bd_pins axi_gpio/gpio2_io_i]
  connect_bd_net -net mb_intr_05_1 [get_bd_ports mb_intr_05] [get_bd_pins sys_concat_intc/In5]
  connect_bd_net -net mb_intr_06_1 [get_bd_ports mb_intr_06] [get_bd_pins sys_concat_intc/In6]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins axi_ddr_cntrl_rstgen/dcm_locked] [get_bd_pins mig_7series_0/mmcm_locked]
  connect_bd_net -net phy_sd_1 [get_bd_ports phy_sd] [get_bd_pins axi_ethernet/signal_detect]
  connect_bd_net -net rx_data_0_n_1 [get_bd_ports rx_data_0_n] [get_bd_pins util_ad9371_xcvr/rx_0_n]
  connect_bd_net -net rx_data_0_p_1 [get_bd_ports rx_data_0_p] [get_bd_pins util_ad9371_xcvr/rx_0_p]
  connect_bd_net -net rx_data_1_n_1 [get_bd_ports rx_data_1_n] [get_bd_pins util_ad9371_xcvr/rx_1_n]
  connect_bd_net -net rx_data_1_p_1 [get_bd_ports rx_data_1_p] [get_bd_pins util_ad9371_xcvr/rx_1_p]
  connect_bd_net -net rx_data_2_n_1 [get_bd_ports rx_data_2_n] [get_bd_pins util_ad9371_xcvr/rx_2_n]
  connect_bd_net -net rx_data_2_p_1 [get_bd_ports rx_data_2_p] [get_bd_pins util_ad9371_xcvr/rx_2_p]
  connect_bd_net -net rx_data_3_n_1 [get_bd_ports rx_data_3_n] [get_bd_pins util_ad9371_xcvr/rx_3_n]
  connect_bd_net -net rx_data_3_p_1 [get_bd_ports rx_data_3_p] [get_bd_pins util_ad9371_xcvr/rx_3_p]
  connect_bd_net -net rx_ref_clk_0_1 [get_bd_ports rx_ref_clk_0] [get_bd_pins util_ad9371_xcvr/cpll_ref_clk_0] [get_bd_pins util_ad9371_xcvr/cpll_ref_clk_1]
  connect_bd_net -net rx_ref_clk_2_1 [get_bd_ports rx_ref_clk_2] [get_bd_pins util_ad9371_xcvr/cpll_ref_clk_2] [get_bd_pins util_ad9371_xcvr/cpll_ref_clk_3]
  connect_bd_net -net spi_clk_i_1 [get_bd_ports spi_clk_i] [get_bd_pins axi_spi/sck_i]
  connect_bd_net -net spi_csn_i_1 [get_bd_ports spi_csn_i] [get_bd_pins axi_spi/ss_i]
  connect_bd_net -net spi_sdi_i_1 [get_bd_ports spi_sdi_i] [get_bd_pins axi_spi/io1_i]
  connect_bd_net -net spi_sdo_i_1 [get_bd_ports spi_sdo_i] [get_bd_pins axi_spi/io0_i]
  connect_bd_net -net sync_1 [get_bd_ports tx_sync_0] [get_bd_pins axi_ad9371_tx_jesd/sync]
  connect_bd_net -net sys_clk_n_1 [get_bd_ports sys_clk_n] [get_bd_pins mig_7series_0/sys_clk_n]
  connect_bd_net -net sys_clk_p_1 [get_bd_ports sys_clk_p] [get_bd_pins mig_7series_0/sys_clk_p]
  connect_bd_net -net sys_concat_intc_dout [get_bd_pins axi_intc/intr] [get_bd_pins sys_concat_intc/dout]
  connect_bd_net -net sys_cpu_clk [get_bd_pins axi_ad9371_core/s_axi_aclk] [get_bd_pins axi_ad9371_rx_clkgen/s_axi_aclk] [get_bd_pins axi_ad9371_rx_dma/s_axi_aclk] [get_bd_pins axi_ad9371_rx_jesd/s_axi_aclk] [get_bd_pins axi_ad9371_rx_os_clkgen/s_axi_aclk] [get_bd_pins axi_ad9371_rx_os_dma/s_axi_aclk] [get_bd_pins axi_ad9371_rx_os_jesd/s_axi_aclk] [get_bd_pins axi_ad9371_rx_os_xcvr/s_axi_aclk] [get_bd_pins axi_ad9371_rx_xcvr/s_axi_aclk] [get_bd_pins axi_ad9371_tx_clkgen/s_axi_aclk] [get_bd_pins axi_ad9371_tx_dma/s_axi_aclk] [get_bd_pins axi_ad9371_tx_jesd/s_axi_aclk] [get_bd_pins axi_ad9371_tx_xcvr/s_axi_aclk] [get_bd_pins axi_cpu_interconnect/ACLK] [get_bd_pins axi_cpu_interconnect/M00_ACLK] [get_bd_pins axi_cpu_interconnect/M01_ACLK] [get_bd_pins axi_cpu_interconnect/M02_ACLK] [get_bd_pins axi_cpu_interconnect/M03_ACLK] [get_bd_pins axi_cpu_interconnect/M04_ACLK] [get_bd_pins axi_cpu_interconnect/M05_ACLK] [get_bd_pins axi_cpu_interconnect/M06_ACLK] [get_bd_pins axi_cpu_interconnect/M07_ACLK] [get_bd_pins axi_cpu_interconnect/M08_ACLK] [get_bd_pins axi_cpu_interconnect/M09_ACLK] [get_bd_pins axi_cpu_interconnect/M10_ACLK] [get_bd_pins axi_cpu_interconnect/M11_ACLK] [get_bd_pins axi_cpu_interconnect/M12_ACLK] [get_bd_pins axi_cpu_interconnect/M13_ACLK] [get_bd_pins axi_cpu_interconnect/M14_ACLK] [get_bd_pins axi_cpu_interconnect/M15_ACLK] [get_bd_pins axi_cpu_interconnect/M16_ACLK] [get_bd_pins axi_cpu_interconnect/M17_ACLK] [get_bd_pins axi_cpu_interconnect/M18_ACLK] [get_bd_pins axi_cpu_interconnect/M19_ACLK] [get_bd_pins axi_cpu_interconnect/M20_ACLK] [get_bd_pins axi_cpu_interconnect/M21_ACLK] [get_bd_pins axi_cpu_interconnect/S00_ACLK] [get_bd_pins axi_ethernet/axis_clk] [get_bd_pins axi_ethernet/s_axi_lite_clk] [get_bd_pins axi_ethernet_dma/m_axi_mm2s_aclk] [get_bd_pins axi_ethernet_dma/m_axi_s2mm_aclk] [get_bd_pins axi_ethernet_dma/m_axi_sg_aclk] [get_bd_pins axi_ethernet_dma/s_axi_lite_aclk] [get_bd_pins axi_gpio/s_axi_aclk] [get_bd_pins axi_iic_main/s_axi_aclk] [get_bd_pins axi_intc/s_axi_aclk] [get_bd_pins axi_mem_interconnect/ACLK] [get_bd_pins axi_mem_interconnect/S00_ACLK] [get_bd_pins axi_mem_interconnect/S01_ACLK] [get_bd_pins axi_mem_interconnect/S02_ACLK] [get_bd_pins axi_mem_interconnect/S03_ACLK] [get_bd_pins axi_mem_interconnect/S04_ACLK] [get_bd_pins axi_mem_interconnect/S05_ACLK] [get_bd_pins axi_mem_interconnect/S06_ACLK] [get_bd_pins axi_spi/ext_spi_clk] [get_bd_pins axi_spi/s_axi_aclk] [get_bd_pins axi_timer/s_axi_aclk] [get_bd_pins axi_uart/s_axi_aclk] [get_bd_pins mig_7series_0/ui_addn_clk_0] [get_bd_pins sys_dlmb/LMB_Clk] [get_bd_pins sys_dlmb_cntlr/LMB_Clk] [get_bd_pins sys_ilmb/LMB_Clk] [get_bd_pins sys_ilmb_cntlr/LMB_Clk] [get_bd_pins sys_mb/Clk] [get_bd_pins sys_mb_debug/S_AXI_ACLK] [get_bd_pins sys_rstgen/slowest_sync_clk] [get_bd_pins util_ad9371_xcvr/up_clk]
  connect_bd_net -net sys_cpu_reset [get_bd_pins sys_dma_rstgen/ext_reset_in] [get_bd_pins sys_rstgen/peripheral_reset]
  connect_bd_net -net sys_cpu_resetn [get_bd_pins axi_ad9371_core/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_clkgen/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_dma/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_jesd/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_jesd_rstgen/ext_reset_in] [get_bd_pins axi_ad9371_rx_os_clkgen/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_os_dma/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_os_jesd/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_os_jesd_rstgen/ext_reset_in] [get_bd_pins axi_ad9371_rx_os_xcvr/s_axi_aresetn] [get_bd_pins axi_ad9371_rx_xcvr/s_axi_aresetn] [get_bd_pins axi_ad9371_tx_clkgen/s_axi_aresetn] [get_bd_pins axi_ad9371_tx_dma/s_axi_aresetn] [get_bd_pins axi_ad9371_tx_jesd/s_axi_aresetn] [get_bd_pins axi_ad9371_tx_jesd_rstgen/ext_reset_in] [get_bd_pins axi_ad9371_tx_xcvr/s_axi_aresetn] [get_bd_pins axi_cpu_interconnect/ARESETN] [get_bd_pins axi_cpu_interconnect/M00_ARESETN] [get_bd_pins axi_cpu_interconnect/M01_ARESETN] [get_bd_pins axi_cpu_interconnect/M02_ARESETN] [get_bd_pins axi_cpu_interconnect/M03_ARESETN] [get_bd_pins axi_cpu_interconnect/M04_ARESETN] [get_bd_pins axi_cpu_interconnect/M05_ARESETN] [get_bd_pins axi_cpu_interconnect/M06_ARESETN] [get_bd_pins axi_cpu_interconnect/M07_ARESETN] [get_bd_pins axi_cpu_interconnect/M08_ARESETN] [get_bd_pins axi_cpu_interconnect/M09_ARESETN] [get_bd_pins axi_cpu_interconnect/M10_ARESETN] [get_bd_pins axi_cpu_interconnect/M11_ARESETN] [get_bd_pins axi_cpu_interconnect/M12_ARESETN] [get_bd_pins axi_cpu_interconnect/M13_ARESETN] [get_bd_pins axi_cpu_interconnect/M14_ARESETN] [get_bd_pins axi_cpu_interconnect/M15_ARESETN] [get_bd_pins axi_cpu_interconnect/M16_ARESETN] [get_bd_pins axi_cpu_interconnect/M17_ARESETN] [get_bd_pins axi_cpu_interconnect/M18_ARESETN] [get_bd_pins axi_cpu_interconnect/M19_ARESETN] [get_bd_pins axi_cpu_interconnect/M20_ARESETN] [get_bd_pins axi_cpu_interconnect/M21_ARESETN] [get_bd_pins axi_cpu_interconnect/S00_ARESETN] [get_bd_pins axi_ethernet/s_axi_lite_resetn] [get_bd_pins axi_ethernet_dma/axi_resetn] [get_bd_pins axi_gpio/s_axi_aresetn] [get_bd_pins axi_iic_main/s_axi_aresetn] [get_bd_pins axi_intc/s_axi_aresetn] [get_bd_pins axi_mem_interconnect/ARESETN] [get_bd_pins axi_mem_interconnect/S00_ARESETN] [get_bd_pins axi_mem_interconnect/S01_ARESETN] [get_bd_pins axi_mem_interconnect/S02_ARESETN] [get_bd_pins axi_mem_interconnect/S03_ARESETN] [get_bd_pins axi_mem_interconnect/S04_ARESETN] [get_bd_pins axi_mem_interconnect/S05_ARESETN] [get_bd_pins axi_mem_interconnect/S06_ARESETN] [get_bd_pins axi_spi/s_axi_aresetn] [get_bd_pins axi_timer/s_axi_aresetn] [get_bd_pins axi_uart/s_axi_aresetn] [get_bd_pins sys_mb_debug/S_AXI_ARESETN] [get_bd_pins sys_rstgen/peripheral_aresetn] [get_bd_pins util_ad9371_xcvr/up_rstn]
  connect_bd_net -net sys_dma_clk [get_bd_pins axi_ad9371_dacfifo/dma_clk] [get_bd_pins axi_ad9371_rx_dma/m_dest_axi_aclk] [get_bd_pins axi_ad9371_rx_os_dma/m_dest_axi_aclk] [get_bd_pins axi_ad9371_tx_dma/m_axis_aclk] [get_bd_pins axi_ad9371_tx_dma/m_src_axi_aclk] [get_bd_pins axi_mem_interconnect/S07_ACLK] [get_bd_pins axi_mem_interconnect/S08_ACLK] [get_bd_pins axi_mem_interconnect/S09_ACLK] [get_bd_pins mig_7series_0/ui_addn_clk_1] [get_bd_pins sys_dma_rstgen/slowest_sync_clk]
  connect_bd_net -net sys_dma_reset [get_bd_pins axi_ad9371_dacfifo/dma_rst] [get_bd_pins sys_dma_rstgen/peripheral_reset]
  connect_bd_net -net sys_dma_resetn [get_bd_pins axi_ad9371_rx_dma/m_dest_axi_aresetn] [get_bd_pins axi_ad9371_rx_os_dma/m_dest_axi_aresetn] [get_bd_pins axi_ad9371_tx_dma/m_src_axi_aresetn] [get_bd_pins axi_mem_interconnect/S07_ARESETN] [get_bd_pins axi_mem_interconnect/S08_ARESETN] [get_bd_pins axi_mem_interconnect/S09_ARESETN] [get_bd_pins sys_dma_rstgen/peripheral_aresetn]
  connect_bd_net -net sys_mb_debug_Debug_SYS_Rst [get_bd_pins sys_mb_debug/Debug_SYS_Rst] [get_bd_pins sys_rstgen/mb_debug_sys_rst]
  connect_bd_net -net sys_mem_clk [get_bd_pins axi_ddr_cntrl_rstgen/slowest_sync_clk] [get_bd_pins axi_mem_interconnect/M00_ACLK] [get_bd_pins mig_7series_0/ui_clk]
  connect_bd_net -net sys_rst_1 [get_bd_ports sys_rst] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net sys_rstgen_bus_struct_reset [get_bd_pins sys_dlmb/SYS_Rst] [get_bd_pins sys_dlmb_cntlr/LMB_Rst] [get_bd_pins sys_ilmb/SYS_Rst] [get_bd_pins sys_ilmb_cntlr/LMB_Rst] [get_bd_pins sys_rstgen/bus_struct_reset]
  connect_bd_net -net sys_rstgen_mb_reset [get_bd_pins sys_mb/Reset] [get_bd_pins sys_rstgen/mb_reset]
  connect_bd_net -net sysref_1 [get_bd_ports tx_sysref_0] [get_bd_pins axi_ad9371_tx_jesd/sysref]
  connect_bd_net -net sysref_2 [get_bd_ports rx_sysref_0] [get_bd_pins axi_ad9371_rx_jesd/sysref]
  connect_bd_net -net sysref_3 [get_bd_ports rx_sysref_2] [get_bd_pins axi_ad9371_rx_os_jesd/sysref]
  connect_bd_net -net tx_data_tdata_1 [get_bd_pins axi_ad9371_core/dac_tx_data] [get_bd_pins axi_ad9371_tx_jesd/tx_data_tdata]
  connect_bd_net -net tx_ref_clk_0_1 [get_bd_ports tx_ref_clk_0] [get_bd_pins util_ad9371_xcvr/qpll_ref_clk_0]
  connect_bd_net -net uart_sin_1 [get_bd_ports uart_sin] [get_bd_pins axi_uart/rx]
  connect_bd_net -net util_ad9371_rx_cpack_adc_data [get_bd_pins axi_ad9371_rx_dma/fifo_wr_din] [get_bd_pins util_ad9371_rx_cpack/adc_data]
  connect_bd_net -net util_ad9371_rx_cpack_adc_sync [get_bd_pins axi_ad9371_rx_dma/fifo_wr_sync] [get_bd_pins util_ad9371_rx_cpack/adc_sync]
  connect_bd_net -net util_ad9371_rx_cpack_adc_valid [get_bd_pins axi_ad9371_rx_dma/fifo_wr_en] [get_bd_pins util_ad9371_rx_cpack/adc_valid]
  connect_bd_net -net util_ad9371_rx_os_cpack_adc_data [get_bd_pins axi_ad9371_rx_os_dma/fifo_wr_din] [get_bd_pins util_ad9371_rx_os_cpack/adc_data]
  connect_bd_net -net util_ad9371_rx_os_cpack_adc_sync [get_bd_pins axi_ad9371_rx_os_dma/fifo_wr_sync] [get_bd_pins util_ad9371_rx_os_cpack/adc_sync]
  connect_bd_net -net util_ad9371_rx_os_cpack_adc_valid [get_bd_pins axi_ad9371_rx_os_dma/fifo_wr_en] [get_bd_pins util_ad9371_rx_os_cpack/adc_valid]
  connect_bd_net -net util_ad9371_tx_upack_dac_data_0 [get_bd_pins axi_ad9371_core/dac_data_i0] [get_bd_pins util_ad9371_tx_upack/dac_data_0]
  connect_bd_net -net util_ad9371_tx_upack_dac_data_1 [get_bd_pins axi_ad9371_core/dac_data_q0] [get_bd_pins util_ad9371_tx_upack/dac_data_1]
  connect_bd_net -net util_ad9371_tx_upack_dac_data_2 [get_bd_pins axi_ad9371_core/dac_data_i1] [get_bd_pins util_ad9371_tx_upack/dac_data_2]
  connect_bd_net -net util_ad9371_tx_upack_dac_data_3 [get_bd_pins axi_ad9371_core/dac_data_q1] [get_bd_pins util_ad9371_tx_upack/dac_data_3]
  connect_bd_net -net util_ad9371_tx_upack_dac_valid [get_bd_pins axi_ad9371_dacfifo/dac_valid] [get_bd_pins util_ad9371_tx_upack/dac_valid]
  connect_bd_net -net util_ad9371_xcvr_rx_out_clk_0 [get_bd_pins axi_ad9371_rx_clkgen/clk] [get_bd_pins util_ad9371_xcvr/rx_out_clk_0]
  connect_bd_net -net util_ad9371_xcvr_rx_out_clk_2 [get_bd_pins axi_ad9371_rx_os_clkgen/clk] [get_bd_pins util_ad9371_xcvr/rx_out_clk_2]
  connect_bd_net -net util_ad9371_xcvr_tx_0_n [get_bd_ports tx_data_0_n] [get_bd_pins util_ad9371_xcvr/tx_0_n]
  connect_bd_net -net util_ad9371_xcvr_tx_0_p [get_bd_ports tx_data_0_p] [get_bd_pins util_ad9371_xcvr/tx_0_p]
  connect_bd_net -net util_ad9371_xcvr_tx_1_n [get_bd_ports tx_data_1_n] [get_bd_pins util_ad9371_xcvr/tx_1_n]
  connect_bd_net -net util_ad9371_xcvr_tx_1_p [get_bd_ports tx_data_1_p] [get_bd_pins util_ad9371_xcvr/tx_1_p]
  connect_bd_net -net util_ad9371_xcvr_tx_2_n [get_bd_ports tx_data_2_n] [get_bd_pins util_ad9371_xcvr/tx_2_n]
  connect_bd_net -net util_ad9371_xcvr_tx_2_p [get_bd_ports tx_data_2_p] [get_bd_pins util_ad9371_xcvr/tx_2_p]
  connect_bd_net -net util_ad9371_xcvr_tx_3_n [get_bd_ports tx_data_3_n] [get_bd_pins util_ad9371_xcvr/tx_3_n]
  connect_bd_net -net util_ad9371_xcvr_tx_3_p [get_bd_ports tx_data_3_p] [get_bd_pins util_ad9371_xcvr/tx_3_p]
  connect_bd_net -net util_ad9371_xcvr_tx_out_clk_0 [get_bd_pins axi_ad9371_tx_clkgen/clk] [get_bd_pins util_ad9371_xcvr/tx_out_clk_0]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ad9371_rx_dma/m_dest_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ad9371_rx_os_dma/m_dest_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ad9371_rx_os_xcvr/m_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ad9371_rx_xcvr/m_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ad9371_tx_dma/m_src_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ethernet_dma/Data_SG] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ethernet_dma/Data_MM2S] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ethernet_dma/Data_S2MM] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_core/s_axi/axi_lite] SEG_data_axi_ad9371_core
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_clkgen/s_axi/axi_lite] SEG_data_axi_ad9371_rx_clkgen
  create_bd_addr_seg -range 0x00001000 -offset 0x7C400000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_dma/s_axi/axi_lite] SEG_data_axi_ad9371_rx_dma
  create_bd_addr_seg -range 0x00004000 -offset 0x44AA0000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_jesd/rx_axi/s_axi/axi_lite] SEG_data_axi_ad9371_rx_jesd
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_os_clkgen/s_axi/axi_lite] SEG_data_axi_ad9371_rx_os_clkgen
  create_bd_addr_seg -range 0x00001000 -offset 0x7C440000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_os_dma/s_axi/axi_lite] SEG_data_axi_ad9371_rx_os_dma
  create_bd_addr_seg -range 0x00004000 -offset 0x44AB0000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_os_jesd/rx_axi/s_axi/axi_lite] SEG_data_axi_ad9371_rx_os_jesd
  create_bd_addr_seg -range 0x00010000 -offset 0x44A50000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_os_xcvr/s_axi/axi_lite] SEG_data_axi_ad9371_rx_os_xcvr
  create_bd_addr_seg -range 0x00010000 -offset 0x44A60000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_rx_xcvr/s_axi/axi_lite] SEG_data_axi_ad9371_rx_xcvr
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_tx_clkgen/s_axi/axi_lite] SEG_data_axi_ad9371_tx_clkgen
  create_bd_addr_seg -range 0x00001000 -offset 0x7C420000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_tx_dma/s_axi/axi_lite] SEG_data_axi_ad9371_tx_dma
  create_bd_addr_seg -range 0x00004000 -offset 0x44A90000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_tx_jesd/tx_axi/s_axi/axi_lite] SEG_data_axi_ad9371_tx_jesd
  create_bd_addr_seg -range 0x00010000 -offset 0x44A80000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ad9371_tx_xcvr/s_axi/axi_lite] SEG_data_axi_ad9371_tx_xcvr
  create_bd_addr_seg -range 0x00040000 -offset 0x40E00000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ethernet/s_axi/Reg0] SEG_data_axi_ethernet
  create_bd_addr_seg -range 0x00001000 -offset 0x41E10000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_ethernet_dma/S_AXI_LITE/Reg] SEG_data_axi_ethernet_dma
  create_bd_addr_seg -range 0x00001000 -offset 0x40000000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_gpio/S_AXI/Reg] SEG_data_axi_gpio
  create_bd_addr_seg -range 0x00001000 -offset 0x41600000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_iic_main/S_AXI/Reg] SEG_data_axi_iic_main
  create_bd_addr_seg -range 0x00001000 -offset 0x41200000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_intc/S_AXI/Reg] SEG_data_axi_intc
  create_bd_addr_seg -range 0x00010000 -offset 0x44A70000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_spi/AXI_LITE/Reg] SEG_data_axi_spi
  create_bd_addr_seg -range 0x00001000 -offset 0x41C00000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_timer/S_AXI/Reg] SEG_data_axi_timer
  create_bd_addr_seg -range 0x00001000 -offset 0x40600000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs axi_uart/S_AXI/Reg] SEG_data_axi_uart
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs sys_mb_debug/S_AXI/Reg] SEG_data_sys_mb_debug
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs sys_dlmb_cntlr/SLMB/Mem] SEG_dlmb_cntlr
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces sys_mb/Instruction] [get_bd_addr_segs sys_ilmb_cntlr/SLMB/Mem] SEG_ilmb_cntlr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces sys_mb/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces sys_mb/Instruction] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


