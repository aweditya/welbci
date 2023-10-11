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
ifeq "$(wildcard nbproject/Makefile-local-uart-test.mk)" "nbproject/Makefile-local-uart-test.mk"
include nbproject/Makefile-local-uart-test.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=uart-test
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/uart-test/peripheral/gpio/plib_gpio.c ../src/config/uart-test/peripheral/uart/plib_uart1.c ../src/main.c ../src/config/uart-test/stdio/xc32_monitor.c ../src/config/uart-test/initialization.c ../src/config/uart-test/peripheral/clk/plib_clk.c ../src/config/uart-test/peripheral/evic/plib_evic.c ../src/config/uart-test/exceptions.c ../src/config/uart-test/interrupts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/809298735/plib_gpio.o ${OBJECTDIR}/_ext/808895792/plib_uart1.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/535612824/xc32_monitor.o ${OBJECTDIR}/_ext/279021474/initialization.o ${OBJECTDIR}/_ext/389531616/plib_clk.o ${OBJECTDIR}/_ext/809352563/plib_evic.o ${OBJECTDIR}/_ext/279021474/exceptions.o ${OBJECTDIR}/_ext/279021474/interrupts.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/809298735/plib_gpio.o.d ${OBJECTDIR}/_ext/808895792/plib_uart1.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/535612824/xc32_monitor.o.d ${OBJECTDIR}/_ext/279021474/initialization.o.d ${OBJECTDIR}/_ext/389531616/plib_clk.o.d ${OBJECTDIR}/_ext/809352563/plib_evic.o.d ${OBJECTDIR}/_ext/279021474/exceptions.o.d ${OBJECTDIR}/_ext/279021474/interrupts.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/809298735/plib_gpio.o ${OBJECTDIR}/_ext/808895792/plib_uart1.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/535612824/xc32_monitor.o ${OBJECTDIR}/_ext/279021474/initialization.o ${OBJECTDIR}/_ext/389531616/plib_clk.o ${OBJECTDIR}/_ext/809352563/plib_evic.o ${OBJECTDIR}/_ext/279021474/exceptions.o ${OBJECTDIR}/_ext/279021474/interrupts.o

# Source Files
SOURCEFILES=../src/config/uart-test/peripheral/gpio/plib_gpio.c ../src/config/uart-test/peripheral/uart/plib_uart1.c ../src/main.c ../src/config/uart-test/stdio/xc32_monitor.c ../src/config/uart-test/initialization.c ../src/config/uart-test/peripheral/clk/plib_clk.c ../src/config/uart-test/peripheral/evic/plib_evic.c ../src/config/uart-test/exceptions.c ../src/config/uart-test/interrupts.c



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
	${MAKE}  -f nbproject/Makefile-uart-test.mk ${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128D
MP_LINKER_FILE_OPTION=,--script="..\src\config\uart-test\p32MX250F128D.ld"
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/809298735/plib_gpio.o: ../src/config/uart-test/peripheral/gpio/plib_gpio.c  .generated_files/flags/uart-test/b78c72a57fa73c67b906eaecd2ea5bf018a31faf .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/809298735" 
	@${RM} ${OBJECTDIR}/_ext/809298735/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/809298735/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809298735/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/809298735/plib_gpio.o ../src/config/uart-test/peripheral/gpio/plib_gpio.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/808895792/plib_uart1.o: ../src/config/uart-test/peripheral/uart/plib_uart1.c  .generated_files/flags/uart-test/5e8aab61eda972fe10af78e24c0e3a5675340f44 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/808895792" 
	@${RM} ${OBJECTDIR}/_ext/808895792/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/808895792/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/808895792/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/808895792/plib_uart1.o ../src/config/uart-test/peripheral/uart/plib_uart1.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/uart-test/db4e4b886e8736041f381e53f36b9d4c901a8f .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/535612824/xc32_monitor.o: ../src/config/uart-test/stdio/xc32_monitor.c  .generated_files/flags/uart-test/5caa864a85170dd24e0d57c703e0f8db2a2add40 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/535612824" 
	@${RM} ${OBJECTDIR}/_ext/535612824/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/535612824/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/535612824/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/535612824/xc32_monitor.o ../src/config/uart-test/stdio/xc32_monitor.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/279021474/initialization.o: ../src/config/uart-test/initialization.c  .generated_files/flags/uart-test/545809fbb7461ddb3d02362df017c9beb85f1f53 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/279021474" 
	@${RM} ${OBJECTDIR}/_ext/279021474/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/279021474/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/279021474/initialization.o.d" -o ${OBJECTDIR}/_ext/279021474/initialization.o ../src/config/uart-test/initialization.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/389531616/plib_clk.o: ../src/config/uart-test/peripheral/clk/plib_clk.c  .generated_files/flags/uart-test/1ff7b27ea529d0b969e4bb8b63343122fae3e8b .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/389531616" 
	@${RM} ${OBJECTDIR}/_ext/389531616/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/389531616/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/389531616/plib_clk.o.d" -o ${OBJECTDIR}/_ext/389531616/plib_clk.o ../src/config/uart-test/peripheral/clk/plib_clk.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809352563/plib_evic.o: ../src/config/uart-test/peripheral/evic/plib_evic.c  .generated_files/flags/uart-test/5276a1e1366ffec31e1a33219306e9662a374398 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/809352563" 
	@${RM} ${OBJECTDIR}/_ext/809352563/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/809352563/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809352563/plib_evic.o.d" -o ${OBJECTDIR}/_ext/809352563/plib_evic.o ../src/config/uart-test/peripheral/evic/plib_evic.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/279021474/exceptions.o: ../src/config/uart-test/exceptions.c  .generated_files/flags/uart-test/d795ab1557731b9297983f5d564385401f8ed0de .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/279021474" 
	@${RM} ${OBJECTDIR}/_ext/279021474/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/279021474/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/279021474/exceptions.o.d" -o ${OBJECTDIR}/_ext/279021474/exceptions.o ../src/config/uart-test/exceptions.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/279021474/interrupts.o: ../src/config/uart-test/interrupts.c  .generated_files/flags/uart-test/134604f3664657b9af06b72e26c8fdad68a10348 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/279021474" 
	@${RM} ${OBJECTDIR}/_ext/279021474/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/279021474/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/279021474/interrupts.o.d" -o ${OBJECTDIR}/_ext/279021474/interrupts.o ../src/config/uart-test/interrupts.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/809298735/plib_gpio.o: ../src/config/uart-test/peripheral/gpio/plib_gpio.c  .generated_files/flags/uart-test/c2727a4a3d8f5a119ec64b27e2e08bdee499963f .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/809298735" 
	@${RM} ${OBJECTDIR}/_ext/809298735/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/809298735/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809298735/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/809298735/plib_gpio.o ../src/config/uart-test/peripheral/gpio/plib_gpio.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/808895792/plib_uart1.o: ../src/config/uart-test/peripheral/uart/plib_uart1.c  .generated_files/flags/uart-test/677466599f09362e23acd9bd155ef2798aeaa5ce .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/808895792" 
	@${RM} ${OBJECTDIR}/_ext/808895792/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/808895792/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/808895792/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/808895792/plib_uart1.o ../src/config/uart-test/peripheral/uart/plib_uart1.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/uart-test/a27fcd2bef3d9a15298de4110d00b2517a533291 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/535612824/xc32_monitor.o: ../src/config/uart-test/stdio/xc32_monitor.c  .generated_files/flags/uart-test/c2311d178027f0e4cb0f1c5de2e2c204e7b38d39 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/535612824" 
	@${RM} ${OBJECTDIR}/_ext/535612824/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/535612824/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/535612824/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/535612824/xc32_monitor.o ../src/config/uart-test/stdio/xc32_monitor.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/279021474/initialization.o: ../src/config/uart-test/initialization.c  .generated_files/flags/uart-test/41d333626de59c9bf593b0d960041baf301c2aa1 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/279021474" 
	@${RM} ${OBJECTDIR}/_ext/279021474/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/279021474/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/279021474/initialization.o.d" -o ${OBJECTDIR}/_ext/279021474/initialization.o ../src/config/uart-test/initialization.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/389531616/plib_clk.o: ../src/config/uart-test/peripheral/clk/plib_clk.c  .generated_files/flags/uart-test/620dd825cbb80d4b68f81cf57706dd7d9b379ab1 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/389531616" 
	@${RM} ${OBJECTDIR}/_ext/389531616/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/389531616/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/389531616/plib_clk.o.d" -o ${OBJECTDIR}/_ext/389531616/plib_clk.o ../src/config/uart-test/peripheral/clk/plib_clk.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/809352563/plib_evic.o: ../src/config/uart-test/peripheral/evic/plib_evic.c  .generated_files/flags/uart-test/6b096e8cd278aab342f4053ed0c5610935688586 .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/809352563" 
	@${RM} ${OBJECTDIR}/_ext/809352563/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/809352563/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/809352563/plib_evic.o.d" -o ${OBJECTDIR}/_ext/809352563/plib_evic.o ../src/config/uart-test/peripheral/evic/plib_evic.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/279021474/exceptions.o: ../src/config/uart-test/exceptions.c  .generated_files/flags/uart-test/99050d4d2289877a8b521302505f307e863ea79a .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/279021474" 
	@${RM} ${OBJECTDIR}/_ext/279021474/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/279021474/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/279021474/exceptions.o.d" -o ${OBJECTDIR}/_ext/279021474/exceptions.o ../src/config/uart-test/exceptions.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/279021474/interrupts.o: ../src/config/uart-test/interrupts.c  .generated_files/flags/uart-test/9cd64c45f46b1e3ef413795034af42e7a499b3be .generated_files/flags/uart-test/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/279021474" 
	@${RM} ${OBJECTDIR}/_ext/279021474/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/279021474/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/uart-test" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/279021474/interrupts.o.d" -o ${OBJECTDIR}/_ext/279021474/interrupts.o ../src/config/uart-test/interrupts.c    -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/uart-test/p32MX250F128D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/uart-test/p32MX250F128D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_uart-test=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/UARTTest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
