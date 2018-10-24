#--------------------Physical Constraints-----------------
##++ tx and rx LOC constraints not loaded in board flow for custom mode 

##++ mgt clk LOC constraints not loaded in board flow for custom mode 

set_property BOARD_PIN {PHY_MDC} [get_ports ext_mdc]
set_property BOARD_PIN {PHY_MDIO} [get_ports ext_mdio_o]

