################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/adc_core.c \
../src/clkgen_core.c \
../src/common.c \
../src/dac_core.c \
../src/headless.c \
../src/jesd_core.c \
../src/myko.c \
../src/myko_ad9528init.c \
../src/platform_drivers.c 

OBJS += \
./src/adc_core.o \
./src/clkgen_core.o \
./src/common.o \
./src/dac_core.o \
./src/headless.o \
./src/jesd_core.o \
./src/myko.o \
./src/myko_ad9528init.o \
./src/platform_drivers.o 

C_DEPS += \
./src/adc_core.d \
./src/clkgen_core.d \
./src/common.d \
./src/dac_core.d \
./src/headless.d \
./src/jesd_core.d \
./src/myko.d \
./src/myko_ad9528init.d \
./src/platform_drivers.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\ad9528" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\mykonos" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\mykonos\mykonos_debug" -c -fmessage-length=0 -MT"$@" -I../../hw_bsp/sys_mb/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


