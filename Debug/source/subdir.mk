################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/semihost_hardfault.c \
../source/simple_pwm.c 

C_DEPS += \
./source/semihost_hardfault.d \
./source/simple_pwm.d 

OBJS += \
./source/semihost_hardfault.o \
./source/simple_pwm.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DMCUXPRESSO_SDK -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\source" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\drivers" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\device" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\utilities" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\component\uart" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\component\lists" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\CMSIS" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\board" -I"C:\Dev\NXP\Training\workspace\frdmmcxa153_ctimer_pwm_example\frdmmcxa153\driver_examples\ctimer\simple_pwm" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33+nodsp -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/semihost_hardfault.d ./source/semihost_hardfault.o ./source/simple_pwm.d ./source/simple_pwm.o

.PHONY: clean-source

