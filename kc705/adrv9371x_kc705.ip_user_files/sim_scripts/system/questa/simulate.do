onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib system_opt

do {wave.do}

view wave
view structure
view signals

do {system.udo}

run -all

source {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_tx_clkgen_0/bd/bd.tcl}
source {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_tx_dma_0/bd/bd.tcl}
source {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_clkgen_0/bd/bd.tcl}
source {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_dma_0/bd/bd.tcl}
source {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_os_clkgen_0/bd/bd.tcl}
source {../../../../adrv9371x_kcu105.srcs/sources_1/bd/system/ip/system_axi_ad9371_rx_os_dma_0/bd/bd.tcl}


quit -force
