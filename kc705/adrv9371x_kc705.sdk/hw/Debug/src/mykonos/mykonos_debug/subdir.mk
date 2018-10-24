################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/mykonos/mykonos_debug/mykonos_dbgjesd.c 

OBJS += \
./src/mykonos/mykonos_debug/mykonos_dbgjesd.o 

C_DEPS += \
./src/mykonos/mykonos_debug/mykonos_dbgjesd.d 


# Each subdirectory must supply rules for building sources it contributes
src/mykonos/mykonos_debug/%.o: ../src/mykonos/mykonos_debug/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\ad9528" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\mykonos" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\mykonos\mykonos_debug" -c -fmessage-length=0 -MT"$@" -I../../hw_bsp/sys_mb/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


