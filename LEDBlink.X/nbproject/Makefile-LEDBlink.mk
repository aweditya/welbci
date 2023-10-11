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
ifeq "$(wildcard nbproject/Makefile-local-LEDBlink.mk)" "nbproject/Makefile-local-LEDBlink.mk"
include nbproject/Makefile-local-LEDBlink.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LEDBlink
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/LEDBlink/stdio/xc32_monitor.c ../src/config/LEDBlink/initialization.c ../src/config/LEDBlink/exceptions.c ../src/config/LEDBlink/peripheral/clk/plib_clk.c ../src/config/LEDBlink/peripheral/coretimer/plib_coretimer.c ../src/main.c ../src/config/LEDBlink/peripheral/evic/plib_evic.c ../src/config/LEDBlink/peripheral/gpio/plib_gpio.c ../src/config/LEDBlink/interrupts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/141907938/xc32_monitor.o ${OBJECTDIR}/_ext/553898140/initialization.o ${OBJECTDIR}/_ext/553898140/exceptions.o ${OBJECTDIR}/_ext/385850342/plib_clk.o ${OBJECTDIR}/_ext/731640834/plib_coretimer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/923610515/plib_evic.o ${OBJECTDIR}/_ext/923664343/plib_gpio.o ${OBJECTDIR}/_ext/553898140/interrupts.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/141907938/xc32_monitor.o.d ${OBJECTDIR}/_ext/553898140/initialization.o.d ${OBJECTDIR}/_ext/553898140/exceptions.o.d ${OBJECTDIR}/_ext/385850342/plib_clk.o.d ${OBJECTDIR}/_ext/731640834/plib_coretimer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/923610515/plib_evic.o.d ${OBJECTDIR}/_ext/923664343/plib_gpio.o.d ${OBJECTDIR}/_ext/553898140/interrupts.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/141907938/xc32_monitor.o ${OBJECTDIR}/_ext/553898140/initialization.o ${OBJECTDIR}/_ext/553898140/exceptions.o ${OBJECTDIR}/_ext/385850342/plib_clk.o ${OBJECTDIR}/_ext/731640834/plib_coretimer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/923610515/plib_evic.o ${OBJECTDIR}/_ext/923664343/plib_gpio.o ${OBJECTDIR}/_ext/553898140/interrupts.o

# Source Files
SOURCEFILES=../src/config/LEDBlink/stdio/xc32_monitor.c ../src/config/LEDBlink/initialization.c ../src/config/LEDBlink/exceptions.c ../src/config/LEDBlink/peripheral/clk/plib_clk.c ../src/config/LEDBlink/peripheral/coretimer/plib_coretimer.c ../src/main.c ../src/config/LEDBlink/peripheral/evic/plib_evic.c ../src/config/LEDBlink/peripheral/gpio/plib_gpio.c ../src/config/LEDBlink/interrupts.c



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
	${MAKE}  -f nbproject/Makefile-LEDBlink.mk ${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128D
MP_LINKER_FILE_OPTION=,--script="..\src\config\LEDBlink\p32MX250F128D.ld"
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
${OBJECTDIR}/_ext/141907938/xc32_monitor.o: ../src/config/LEDBlink/stdio/xc32_monitor.c  .generated_files/flags/LEDBlink/9d6ad74a4b3d5e09660c912cdd4fd02cb1bce06d .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/141907938" 
	@${RM} ${OBJECTDIR}/_ext/141907938/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/141907938/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141907938/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/141907938/xc32_monitor.o ../src/config/LEDBlink/stdio/xc32_monitor.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/553898140/initialization.o: ../src/config/LEDBlink/initialization.c  .generated_files/flags/LEDBlink/fbf96bc05981e405e420f099c6adc9de1fa37c3c .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553898140" 
	@${RM} ${OBJECTDIR}/_ext/553898140/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/553898140/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553898140/initialization.o.d" -o ${OBJECTDIR}/_ext/553898140/initialization.o ../src/config/LEDBlink/initialization.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/553898140/exceptions.o: ../src/config/LEDBlink/exceptions.c  .generated_files/flags/LEDBlink/519b0cf06cb8a5bbb2515406d01d2e044e79709e .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553898140" 
	@${RM} ${OBJECTDIR}/_ext/553898140/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/553898140/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553898140/exceptions.o.d" -o ${OBJECTDIR}/_ext/553898140/exceptions.o ../src/config/LEDBlink/exceptions.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/385850342/plib_clk.o: ../src/config/LEDBlink/peripheral/clk/plib_clk.c  .generated_files/flags/LEDBlink/98bca3ed3b155041b6c7ffd8ee066085f04b1bf0 .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/385850342" 
	@${RM} ${OBJECTDIR}/_ext/385850342/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/385850342/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/385850342/plib_clk.o.d" -o ${OBJECTDIR}/_ext/385850342/plib_clk.o ../src/config/LEDBlink/peripheral/clk/plib_clk.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/731640834/plib_coretimer.o: ../src/config/LEDBlink/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/LEDBlink/fc22bcf2bacfccae590bd17018cfc0fd04f1e4ec .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/731640834" 
	@${RM} ${OBJECTDIR}/_ext/731640834/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/731640834/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/731640834/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/731640834/plib_coretimer.o ../src/config/LEDBlink/peripheral/coretimer/plib_coretimer.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LEDBlink/fcc94a9d31f5592472168c7ac4504d112d669cae .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/923610515/plib_evic.o: ../src/config/LEDBlink/peripheral/evic/plib_evic.c  .generated_files/flags/LEDBlink/7651f60640d918c3ee67beb316bdd1b8932b4d8a .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/923610515" 
	@${RM} ${OBJECTDIR}/_ext/923610515/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/923610515/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/923610515/plib_evic.o.d" -o ${OBJECTDIR}/_ext/923610515/plib_evic.o ../src/config/LEDBlink/peripheral/evic/plib_evic.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/923664343/plib_gpio.o: ../src/config/LEDBlink/peripheral/gpio/plib_gpio.c  .generated_files/flags/LEDBlink/4025b9f81541c057327ba7fd4104b333ea2deb8b .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/923664343" 
	@${RM} ${OBJECTDIR}/_ext/923664343/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/923664343/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/923664343/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/923664343/plib_gpio.o ../src/config/LEDBlink/peripheral/gpio/plib_gpio.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/553898140/interrupts.o: ../src/config/LEDBlink/interrupts.c  .generated_files/flags/LEDBlink/9bb8cbc7186a2d06277b8c910ced5ab6e8cd1fe0 .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553898140" 
	@${RM} ${OBJECTDIR}/_ext/553898140/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/553898140/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553898140/interrupts.o.d" -o ${OBJECTDIR}/_ext/553898140/interrupts.o ../src/config/LEDBlink/interrupts.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/141907938/xc32_monitor.o: ../src/config/LEDBlink/stdio/xc32_monitor.c  .generated_files/flags/LEDBlink/8e40242906f249a29acb2b4fc58099f82df39e58 .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/141907938" 
	@${RM} ${OBJECTDIR}/_ext/141907938/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/141907938/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141907938/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/141907938/xc32_monitor.o ../src/config/LEDBlink/stdio/xc32_monitor.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/553898140/initialization.o: ../src/config/LEDBlink/initialization.c  .generated_files/flags/LEDBlink/c322fe5c7f5396a4b4f03eb5a28c0c553ab5bbce .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553898140" 
	@${RM} ${OBJECTDIR}/_ext/553898140/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/553898140/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553898140/initialization.o.d" -o ${OBJECTDIR}/_ext/553898140/initialization.o ../src/config/LEDBlink/initialization.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/553898140/exceptions.o: ../src/config/LEDBlink/exceptions.c  .generated_files/flags/LEDBlink/2a1dc7e40a87c42f9744684bb4cb98f76f2dff06 .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553898140" 
	@${RM} ${OBJECTDIR}/_ext/553898140/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/553898140/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553898140/exceptions.o.d" -o ${OBJECTDIR}/_ext/553898140/exceptions.o ../src/config/LEDBlink/exceptions.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/385850342/plib_clk.o: ../src/config/LEDBlink/peripheral/clk/plib_clk.c  .generated_files/flags/LEDBlink/af35013ad4e0527d2168706749087eeacbef73d9 .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/385850342" 
	@${RM} ${OBJECTDIR}/_ext/385850342/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/385850342/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/385850342/plib_clk.o.d" -o ${OBJECTDIR}/_ext/385850342/plib_clk.o ../src/config/LEDBlink/peripheral/clk/plib_clk.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/731640834/plib_coretimer.o: ../src/config/LEDBlink/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/LEDBlink/24313c2c18eae51606df9a27b9f6fbb1bb541acf .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/731640834" 
	@${RM} ${OBJECTDIR}/_ext/731640834/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/731640834/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/731640834/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/731640834/plib_coretimer.o ../src/config/LEDBlink/peripheral/coretimer/plib_coretimer.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LEDBlink/408754b32ea3b5756d6302f26e3e58816ae066da .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/923610515/plib_evic.o: ../src/config/LEDBlink/peripheral/evic/plib_evic.c  .generated_files/flags/LEDBlink/6bc17dd7cb7793d86250b647556bdd0883643509 .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/923610515" 
	@${RM} ${OBJECTDIR}/_ext/923610515/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/923610515/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/923610515/plib_evic.o.d" -o ${OBJECTDIR}/_ext/923610515/plib_evic.o ../src/config/LEDBlink/peripheral/evic/plib_evic.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/923664343/plib_gpio.o: ../src/config/LEDBlink/peripheral/gpio/plib_gpio.c  .generated_files/flags/LEDBlink/484fcc200b65b1205e76d57497e15523ba04684e .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/923664343" 
	@${RM} ${OBJECTDIR}/_ext/923664343/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/923664343/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/923664343/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/923664343/plib_gpio.o ../src/config/LEDBlink/peripheral/gpio/plib_gpio.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/553898140/interrupts.o: ../src/config/LEDBlink/interrupts.c  .generated_files/flags/LEDBlink/57556ce422d62a5fc3e43a785405401cb3ebd457 .generated_files/flags/LEDBlink/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/553898140" 
	@${RM} ${OBJECTDIR}/_ext/553898140/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/553898140/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/LEDBlink" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/553898140/interrupts.o.d" -o ${OBJECTDIR}/_ext/553898140/interrupts.o ../src/config/LEDBlink/interrupts.c    -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/LEDBlink/p32MX250F128D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/LEDBlink/p32MX250F128D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LEDBlink=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/LEDBlink.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
