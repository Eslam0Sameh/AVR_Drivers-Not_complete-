#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECU_LAYER/Character_Lcd/LCD.c ECU_LAYER/DC_motor/DC_motor.c ECU_LAYER/Keypad/keypad.c ECU_LAYER/LED/led.c ECU_LAYER/PUSH_BUTTON/push_button.c ECU_LAYER/Relay/Relay.c ECU_LAYER/seven_segment/seven_segment.c ECU_LAYER/ECU_layer_initialisation.c MCAL_LAYER/ADC/ADC.c MCAL_LAYER/EEPROM/EEPROM.c MCAL_LAYER/GPIO/gpio.c MCAL_LAYER/Interrupt/Interrupt_ISR.c MCAL_LAYER/Interrupt/Interrupt_internal.c MCAL_LAYER/Interrupt/Interrupt_external.c MCAL_LAYER/Timer0/time0.c MCAL_LAYER/Timer1/timer1.c MCAL_LAYER/Timer2/timer2.c MCAL_LAYER/Timer3/timer3.c application.c MCAL_LAYER/ASY_EUSART/ASY_EUSART.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1 ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1 ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1 ${OBJECTDIR}/ECU_LAYER/LED/led.p1 ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1 ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1 ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1 ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1 ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1 ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1 ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1 ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1 ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1 ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1 ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1 ${OBJECTDIR}/application.p1 ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1.d ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1.d ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1.d ${OBJECTDIR}/ECU_LAYER/LED/led.p1.d ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1.d ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1.d ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1.d ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1.d ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1.d ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1.d ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1.d ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1.d ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1.d ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1.d ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1.d ${OBJECTDIR}/application.p1.d ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1 ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1 ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1 ${OBJECTDIR}/ECU_LAYER/LED/led.p1 ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1 ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1 ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1 ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1 ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1 ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1 ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1 ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1 ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1 ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1 ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1 ${OBJECTDIR}/application.p1 ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1

# Source Files
SOURCEFILES=ECU_LAYER/Character_Lcd/LCD.c ECU_LAYER/DC_motor/DC_motor.c ECU_LAYER/Keypad/keypad.c ECU_LAYER/LED/led.c ECU_LAYER/PUSH_BUTTON/push_button.c ECU_LAYER/Relay/Relay.c ECU_LAYER/seven_segment/seven_segment.c ECU_LAYER/ECU_layer_initialisation.c MCAL_LAYER/ADC/ADC.c MCAL_LAYER/EEPROM/EEPROM.c MCAL_LAYER/GPIO/gpio.c MCAL_LAYER/Interrupt/Interrupt_ISR.c MCAL_LAYER/Interrupt/Interrupt_internal.c MCAL_LAYER/Interrupt/Interrupt_external.c MCAL_LAYER/Timer0/time0.c MCAL_LAYER/Timer1/timer1.c MCAL_LAYER/Timer2/timer2.c MCAL_LAYER/Timer3/timer3.c application.c MCAL_LAYER/ASY_EUSART/ASY_EUSART.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1: ECU_LAYER/Character_Lcd/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/Character_Lcd" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1 ECU_LAYER/Character_Lcd/LCD.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.d ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1: ECU_LAYER/DC_motor/DC_motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/DC_motor" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1 ECU_LAYER/DC_motor/DC_motor.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.d ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1: ECU_LAYER/Keypad/keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/Keypad" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1 ECU_LAYER/Keypad/keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.d ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/LED/led.p1: ECU_LAYER/LED/led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/LED" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/LED/led.p1 ECU_LAYER/LED/led.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/LED/led.d ${OBJECTDIR}/ECU_LAYER/LED/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/LED/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1: ECU_LAYER/PUSH_BUTTON/push_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1 ECU_LAYER/PUSH_BUTTON/push_button.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.d ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1: ECU_LAYER/Relay/Relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/Relay" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1 ECU_LAYER/Relay/Relay.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.d ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1: ECU_LAYER/seven_segment/seven_segment.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/seven_segment" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1 ECU_LAYER/seven_segment/seven_segment.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.d ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1: ECU_LAYER/ECU_layer_initialisation.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1 ECU_LAYER/ECU_layer_initialisation.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.d ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1: MCAL_LAYER/ADC/ADC.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/ADC" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1 MCAL_LAYER/ADC/ADC.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.d ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1: MCAL_LAYER/EEPROM/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/EEPROM" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1 MCAL_LAYER/EEPROM/EEPROM.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.d ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1: MCAL_LAYER/GPIO/gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1 MCAL_LAYER/GPIO/gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.d ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1: MCAL_LAYER/Interrupt/Interrupt_ISR.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1 MCAL_LAYER/Interrupt/Interrupt_ISR.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1: MCAL_LAYER/Interrupt/Interrupt_internal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1 MCAL_LAYER/Interrupt/Interrupt_internal.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1: MCAL_LAYER/Interrupt/Interrupt_external.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1 MCAL_LAYER/Interrupt/Interrupt_external.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1: MCAL_LAYER/Timer0/time0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer0" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1 MCAL_LAYER/Timer0/time0.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.d ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1: MCAL_LAYER/Timer1/timer1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer1" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1 MCAL_LAYER/Timer1/timer1.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.d ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1: MCAL_LAYER/Timer2/timer2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer2" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1 MCAL_LAYER/Timer2/timer2.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.d ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1: MCAL_LAYER/Timer3/timer3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer3" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1 MCAL_LAYER/Timer3/timer3.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.d ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1: MCAL_LAYER/ASY_EUSART/ASY_EUSART.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/ASY_EUSART" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1 MCAL_LAYER/ASY_EUSART/ASY_EUSART.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.d ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1: ECU_LAYER/Character_Lcd/LCD.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/Character_Lcd" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1 ECU_LAYER/Character_Lcd/LCD.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.d ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/Character_Lcd/LCD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1: ECU_LAYER/DC_motor/DC_motor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/DC_motor" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1 ECU_LAYER/DC_motor/DC_motor.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.d ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/DC_motor/DC_motor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1: ECU_LAYER/Keypad/keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/Keypad" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1 ECU_LAYER/Keypad/keypad.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.d ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/Keypad/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/LED/led.p1: ECU_LAYER/LED/led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/LED" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/LED/led.p1 ECU_LAYER/LED/led.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/LED/led.d ${OBJECTDIR}/ECU_LAYER/LED/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/LED/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1: ECU_LAYER/PUSH_BUTTON/push_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1 ECU_LAYER/PUSH_BUTTON/push_button.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.d ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/PUSH_BUTTON/push_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1: ECU_LAYER/Relay/Relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/Relay" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1 ECU_LAYER/Relay/Relay.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.d ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/Relay/Relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1: ECU_LAYER/seven_segment/seven_segment.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/seven_segment" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1 ECU_LAYER/seven_segment/seven_segment.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.d ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/seven_segment/seven_segment.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1: ECU_LAYER/ECU_layer_initialisation.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1 ECU_LAYER/ECU_layer_initialisation.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.d ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/ECU_layer_initialisation.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1: MCAL_LAYER/ADC/ADC.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/ADC" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1 MCAL_LAYER/ADC/ADC.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.d ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/ADC/ADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1: MCAL_LAYER/EEPROM/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/EEPROM" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1 MCAL_LAYER/EEPROM/EEPROM.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.d ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/EEPROM/EEPROM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1: MCAL_LAYER/GPIO/gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1 MCAL_LAYER/GPIO/gpio.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.d ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/GPIO/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1: MCAL_LAYER/Interrupt/Interrupt_ISR.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1 MCAL_LAYER/Interrupt/Interrupt_ISR.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_ISR.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1: MCAL_LAYER/Interrupt/Interrupt_internal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1 MCAL_LAYER/Interrupt/Interrupt_internal.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_internal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1: MCAL_LAYER/Interrupt/Interrupt_external.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1 MCAL_LAYER/Interrupt/Interrupt_external.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_external.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1: MCAL_LAYER/Timer0/time0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer0" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1 MCAL_LAYER/Timer0/time0.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.d ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer0/time0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1: MCAL_LAYER/Timer1/timer1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer1" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1 MCAL_LAYER/Timer1/timer1.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.d ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer1/timer1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1: MCAL_LAYER/Timer2/timer2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer2" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1 MCAL_LAYER/Timer2/timer2.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.d ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer2/timer2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1: MCAL_LAYER/Timer3/timer3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Timer3" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1 MCAL_LAYER/Timer3/timer3.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.d ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Timer3/timer3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1: MCAL_LAYER/ASY_EUSART/ASY_EUSART.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/ASY_EUSART" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1 MCAL_LAYER/ASY_EUSART/ASY_EUSART.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.d ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/ASY_EUSART/ASY_EUSART.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/ESLAAAM.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
