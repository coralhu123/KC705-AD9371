set curr_wave [current_wave_config]
if { [string length $curr_wave] == 0 } {
  if { [llength [get_objects]] > 0} {
    add_wave /
    set_property needs_save false [current_wave_config]
  } else {
     send_msg_id Add_Wave-1 WARNING "No top level signals found. Simulator will start without a wave window. If you want to open a wave window go to 'File->New Waveform Configuration' or type 'create_wave_config' in the TCL console."
  }
}

run -all

source -notrace {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_tx_clkgen_0/bd/bd.tcl}
source -notrace {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_tx_dma_0/bd/bd.tcl}
source -notrace {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_clkgen_0/bd/bd.tcl}
source -notrace {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_dma_0/bd/bd.tcl}
source -notrace {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_os_clkgen_0/bd/bd.tcl}
source -notrace {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_os_dma_0/bd/bd.tcl}

quit
