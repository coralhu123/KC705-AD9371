################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ad9528/ad9528.c 

OBJS += \
./src/ad9528/ad9528.o 

C_DEPS += \
./src/ad9528/ad9528.d 


# Each subdirectory must supply rules for building sources it contributes
src/ad9528/%.o: ../src/ad9528/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\ad9528" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\mykonos" -I"E:\vivado2017.4\KC705\AD9371\hdl-hdl_2018_r1\projects\adrv9371x\kc705\adrv9371x_kc705.sdk\hw\src\mykonos\mykonos_debug" -c -fmessage-length=0 -MT"$@" -I../../hw_bsp/sys_mb/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


