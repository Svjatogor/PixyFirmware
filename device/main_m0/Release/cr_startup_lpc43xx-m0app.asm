   1              		.syntax unified
   2              		.cpu cortex-m0
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 0
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.syntax unified
  15              		.file	"cr_startup_lpc43xx-m0app.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.global	g_pfnVectors
  20              		.section	.isr_vector,"a",%progbits
  21              		.align	2
  24              	g_pfnVectors:
  25 0000 00000000 		.word	_vStackTop
  26 0004 00000000 		.word	ResetISR
  27 0008 00000000 		.word	M0_NMI_Handler
  28 000c 00000000 		.word	M0_HardFault_Handler
  29 0010 00000000 		.word	0
  30 0014 00000000 		.word	0
  31 0018 00000000 		.word	0
  32 001c 00000000 		.word	0
  33 0020 00000000 		.word	0
  34 0024 00000000 		.word	0
  35 0028 00000000 		.word	0
  36 002c 00000000 		.word	M0_SVC_Handler
  37 0030 00000000 		.word	0
  38 0034 00000000 		.word	0
  39 0038 00000000 		.word	M0_PendSV_Handler
  40 003c 00000000 		.word	M0_SysTick_Handler
  41 0040 00000000 		.word	M0_RTC_IRQHandler
  42 0044 00000000 		.word	M0_M4CORE_IRQHandler
  43 0048 00000000 		.word	M0_DMA_IRQHandler
  44 004c 00000000 		.word	0
  45 0050 00000000 		.word	0
  46 0054 00000000 		.word	M0_ETH_IRQHandler
  47 0058 00000000 		.word	M0_SDIO_IRQHandler
  48 005c 00000000 		.word	M0_LCD_IRQHandler
  49 0060 00000000 		.word	M0_USB0_IRQHandler
  50 0064 00000000 		.word	M0_USB1_IRQHandler
  51 0068 00000000 		.word	M0_SCT_IRQHandler
  52 006c 00000000 		.word	M0_RIT_OR_WWDT_IRQHandler
  53 0070 00000000 		.word	M0_TIMER0_IRQHandler
  54 0074 00000000 		.word	M0_GINT1_IRQHandler
  55 0078 00000000 		.word	M0_TIMER3_IRQHandler
  56 007c 00000000 		.word	0
  57 0080 00000000 		.word	0
  58 0084 00000000 		.word	M0_MCPWM_IRQHandler
  59 0088 00000000 		.word	M0_ADC0_IRQHandler
  60 008c 00000000 		.word	M0_I2C0_OR_I2C1_IRQHandler
  61 0090 00000000 		.word	M0_SGPIO_IRQHandler
  62 0094 00000000 		.word	M0_SPI_OR_DAC_IRQHandler
  63 0098 00000000 		.word	M0_ADC1_IRQHandler
  64 009c 00000000 		.word	M0_SSP0_OR_SSP1_IRQHandler
  65 00a0 00000000 		.word	M0_EVENTROUTER_IRQHandler
  66 00a4 00000000 		.word	M0_USART0_IRQHandler
  67 00a8 00000000 		.word	M0_USART2_OR_C_CAN1_IRQHandler
  68 00ac 00000000 		.word	M0_USART3_IRQHandler
  69 00b0 00000000 		.word	M0_I2S0_OR_I2S1_OR_QEI_IRQHandler
  70 00b4 00000000 		.word	M0_C_CAN0_IRQHandler
  71 00b8 00000000 		.word	M0_SPIFI_OR_VADC_IRQHandler
  72 00bc 00000000 		.word	M0_M0SUB_IRQHandler
  73              		.section	.after_vectors,"ax",%progbits
  74              		.align	2
  75              		.global	data_init
  76              		.code	16
  77              		.thumb_func
  79              	data_init:
  80              	.LFB32:
  81              		.file 1 "../src/cr_startup_lpc43xx-m0app.c"
   1:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
   2:../src/cr_startup_lpc43xx-m0app.c **** // LPC43xx (Cortex M0 APP) Startup code for use with LPCXpresso IDE
   3:../src/cr_startup_lpc43xx-m0app.c **** //
   4:../src/cr_startup_lpc43xx-m0app.c **** // Version : 140113
   5:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
   6:../src/cr_startup_lpc43xx-m0app.c **** //
   7:../src/cr_startup_lpc43xx-m0app.c **** // Copyright(C) NXP Semiconductors, 2013-2014
   8:../src/cr_startup_lpc43xx-m0app.c **** // All rights reserved.
   9:../src/cr_startup_lpc43xx-m0app.c **** //
  10:../src/cr_startup_lpc43xx-m0app.c **** // Software that is described herein is for illustrative purposes only
  11:../src/cr_startup_lpc43xx-m0app.c **** // which provides customers with programming information regarding the
  12:../src/cr_startup_lpc43xx-m0app.c **** // LPC products.  This software is supplied "AS IS" without any warranties of
  13:../src/cr_startup_lpc43xx-m0app.c **** // any kind, and NXP Semiconductors and its licensor disclaim any and
  14:../src/cr_startup_lpc43xx-m0app.c **** // all warranties, express or implied, including all implied warranties of
  15:../src/cr_startup_lpc43xx-m0app.c **** // merchantability, fitness for a particular purpose and non-infringement of
  16:../src/cr_startup_lpc43xx-m0app.c **** // intellectual property rights.  NXP Semiconductors assumes no responsibility
  17:../src/cr_startup_lpc43xx-m0app.c **** // or liability for the use of the software, conveys no license or rights under any
  18:../src/cr_startup_lpc43xx-m0app.c **** // patent, copyright, mask work right, or any other intellectual property rights in
  19:../src/cr_startup_lpc43xx-m0app.c **** // or to any products. NXP Semiconductors reserves the right to make changes
  20:../src/cr_startup_lpc43xx-m0app.c **** // in the software without notification. NXP Semiconductors also makes no
  21:../src/cr_startup_lpc43xx-m0app.c **** // representation or warranty that such application will be suitable for the
  22:../src/cr_startup_lpc43xx-m0app.c **** // specified use without further testing or modification.
  23:../src/cr_startup_lpc43xx-m0app.c **** //
  24:../src/cr_startup_lpc43xx-m0app.c **** // Permission to use, copy, modify, and distribute this software and its
  25:../src/cr_startup_lpc43xx-m0app.c **** // documentation is hereby granted, under NXP Semiconductors' and its
  26:../src/cr_startup_lpc43xx-m0app.c **** // licensor's relevant copyrights in the software, without fee, provided that it
  27:../src/cr_startup_lpc43xx-m0app.c **** // is used in conjunction with NXP Semiconductors microcontrollers.  This
  28:../src/cr_startup_lpc43xx-m0app.c **** // copyright, permission, and disclaimer notice must appear in all copies of
  29:../src/cr_startup_lpc43xx-m0app.c **** // this code.
  30:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  31:../src/cr_startup_lpc43xx-m0app.c **** 
  32:../src/cr_startup_lpc43xx-m0app.c **** #include "debug_frmwrk.h"
  33:../src/cr_startup_lpc43xx-m0app.c **** 
  34:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__cplusplus)
  35:../src/cr_startup_lpc43xx-m0app.c **** #ifdef __REDLIB__
  36:../src/cr_startup_lpc43xx-m0app.c **** #error Redlib does not support C++
  37:../src/cr_startup_lpc43xx-m0app.c **** #else
  38:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  39:../src/cr_startup_lpc43xx-m0app.c **** //
  40:../src/cr_startup_lpc43xx-m0app.c **** // The entry point for the C++ library startup
  41:../src/cr_startup_lpc43xx-m0app.c **** //
  42:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  43:../src/cr_startup_lpc43xx-m0app.c **** extern "C" {
  44:../src/cr_startup_lpc43xx-m0app.c ****   extern void __libc_init_array(void);
  45:../src/cr_startup_lpc43xx-m0app.c **** }
  46:../src/cr_startup_lpc43xx-m0app.c **** #endif
  47:../src/cr_startup_lpc43xx-m0app.c **** #endif
  48:../src/cr_startup_lpc43xx-m0app.c **** 
  49:../src/cr_startup_lpc43xx-m0app.c **** #define WEAK __attribute__ ((weak))
  50:../src/cr_startup_lpc43xx-m0app.c **** #define ALIAS(f) __attribute__ ((weak, alias (#f)))
  51:../src/cr_startup_lpc43xx-m0app.c **** 
  52:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  53:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__cplusplus)
  54:../src/cr_startup_lpc43xx-m0app.c **** extern "C" {
  55:../src/cr_startup_lpc43xx-m0app.c **** #endif
  56:../src/cr_startup_lpc43xx-m0app.c **** 
  57:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  58:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_CMSIS) || defined (__USE_LPCOPEN)
  59:../src/cr_startup_lpc43xx-m0app.c **** // Declaration of external SystemInit function
  60:../src/cr_startup_lpc43xx-m0app.c **** extern void SystemInit(void);
  61:../src/cr_startup_lpc43xx-m0app.c **** #endif
  62:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  63:../src/cr_startup_lpc43xx-m0app.c **** //
  64:../src/cr_startup_lpc43xx-m0app.c **** // Forward declaration of the default handlers. These are aliased.
  65:../src/cr_startup_lpc43xx-m0app.c **** // When the application defines a handler (with the same name), this will 
  66:../src/cr_startup_lpc43xx-m0app.c **** // automatically take precedence over these weak definitions
  67:../src/cr_startup_lpc43xx-m0app.c **** //
  68:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  69:../src/cr_startup_lpc43xx-m0app.c ****      void ResetISR(void);
  70:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
  71:../src/cr_startup_lpc43xx-m0app.c **** WEAK void NMI_Handler(void);
  72:../src/cr_startup_lpc43xx-m0app.c **** WEAK void HardFault_Handler(void);
  73:../src/cr_startup_lpc43xx-m0app.c **** WEAK void SVC_Handler(void);
  74:../src/cr_startup_lpc43xx-m0app.c **** WEAK void PendSV_Handler(void);
  75:../src/cr_startup_lpc43xx-m0app.c **** WEAK void SysTick_Handler(void);
  76:../src/cr_startup_lpc43xx-m0app.c **** WEAK void IntDefaultHandler(void);
  77:../src/cr_startup_lpc43xx-m0app.c **** #else
  78:../src/cr_startup_lpc43xx-m0app.c **** WEAK void M0_NMI_Handler(void);
  79:../src/cr_startup_lpc43xx-m0app.c **** WEAK void M0_HardFault_Handler (void);
  80:../src/cr_startup_lpc43xx-m0app.c **** WEAK void M0_SVC_Handler(void);
  81:../src/cr_startup_lpc43xx-m0app.c **** WEAK void M0_PendSV_Handler(void);
  82:../src/cr_startup_lpc43xx-m0app.c **** WEAK void M0_SysTick_Handler(void);
  83:../src/cr_startup_lpc43xx-m0app.c **** WEAK void M0_IntDefaultHandler(void);
  84:../src/cr_startup_lpc43xx-m0app.c **** #endif
  85:../src/cr_startup_lpc43xx-m0app.c **** 
  86:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  87:../src/cr_startup_lpc43xx-m0app.c **** //
  88:../src/cr_startup_lpc43xx-m0app.c **** // Forward declaration of the specific IRQ handlers. These are aliased
  89:../src/cr_startup_lpc43xx-m0app.c **** // to the IntDefaultHandler, which is a 'forever' loop. When the application
  90:../src/cr_startup_lpc43xx-m0app.c **** // defines a handler (with the same name), this will automatically take 
  91:../src/cr_startup_lpc43xx-m0app.c **** // precedence over these weak definitions
  92:../src/cr_startup_lpc43xx-m0app.c **** //
  93:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
  94:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
  95:../src/cr_startup_lpc43xx-m0app.c **** void RTC_IRQHandler(void) ALIAS(IntDefaultHandler);
  96:../src/cr_startup_lpc43xx-m0app.c **** void MX_CORE_IRQHandler(void) ALIAS(IntDefaultHandler);
  97:../src/cr_startup_lpc43xx-m0app.c **** void DMA_IRQHandler(void) ALIAS(IntDefaultHandler);
  98:../src/cr_startup_lpc43xx-m0app.c **** void FLASHEEPROM_IRQHandler(void) ALIAS(IntDefaultHandler);
  99:../src/cr_startup_lpc43xx-m0app.c **** void ETH_IRQHandler(void) ALIAS(IntDefaultHandler);
 100:../src/cr_startup_lpc43xx-m0app.c **** void SDIO_IRQHandler(void) ALIAS(IntDefaultHandler);
 101:../src/cr_startup_lpc43xx-m0app.c **** void LCD_IRQHandler(void) ALIAS(IntDefaultHandler);
 102:../src/cr_startup_lpc43xx-m0app.c **** void USB0_IRQHandler(void) ALIAS(IntDefaultHandler);
 103:../src/cr_startup_lpc43xx-m0app.c **** void USB1_IRQHandler(void) ALIAS(IntDefaultHandler);
 104:../src/cr_startup_lpc43xx-m0app.c **** void SCT_IRQHandler(void) ALIAS(IntDefaultHandler);
 105:../src/cr_startup_lpc43xx-m0app.c **** void RIT_IRQHandler(void) ALIAS(IntDefaultHandler);
 106:../src/cr_startup_lpc43xx-m0app.c **** void TIMER0_IRQHandler(void) ALIAS(IntDefaultHandler);
 107:../src/cr_startup_lpc43xx-m0app.c **** void GINT1_IRQHandler(void) ALIAS(IntDefaultHandler);
 108:../src/cr_startup_lpc43xx-m0app.c **** void GPIO4_IRQHandler(void) ALIAS(IntDefaultHandler);
 109:../src/cr_startup_lpc43xx-m0app.c **** void TIMER3_IRQHandler(void) ALIAS(IntDefaultHandler);
 110:../src/cr_startup_lpc43xx-m0app.c **** void MCPWM_IRQHandler(void) ALIAS(IntDefaultHandler);
 111:../src/cr_startup_lpc43xx-m0app.c **** void ADC0_IRQHandler(void) ALIAS(IntDefaultHandler);
 112:../src/cr_startup_lpc43xx-m0app.c **** void I2C0_IRQHandler(void) ALIAS(IntDefaultHandler);
 113:../src/cr_startup_lpc43xx-m0app.c **** void SGPIO_IRQHandler(void) ALIAS(IntDefaultHandler);
 114:../src/cr_startup_lpc43xx-m0app.c **** void SPI_IRQHandler (void) ALIAS(IntDefaultHandler);
 115:../src/cr_startup_lpc43xx-m0app.c **** void ADC1_IRQHandler(void) ALIAS(IntDefaultHandler);
 116:../src/cr_startup_lpc43xx-m0app.c **** void SSP0_IRQHandler(void) ALIAS(IntDefaultHandler);
 117:../src/cr_startup_lpc43xx-m0app.c **** void EVRT_IRQHandler(void) ALIAS(IntDefaultHandler);
 118:../src/cr_startup_lpc43xx-m0app.c **** void UART0_IRQHandler(void) ALIAS(IntDefaultHandler);
 119:../src/cr_startup_lpc43xx-m0app.c **** void UART1_IRQHandler(void) ALIAS(IntDefaultHandler);
 120:../src/cr_startup_lpc43xx-m0app.c **** void UART2_IRQHandler(void) ALIAS(IntDefaultHandler);
 121:../src/cr_startup_lpc43xx-m0app.c **** void UART3_IRQHandler(void) ALIAS(IntDefaultHandler);
 122:../src/cr_startup_lpc43xx-m0app.c **** void I2S0_IRQHandler(void) ALIAS(IntDefaultHandler);
 123:../src/cr_startup_lpc43xx-m0app.c **** void CAN0_IRQHandler(void) ALIAS(IntDefaultHandler);
 124:../src/cr_startup_lpc43xx-m0app.c **** void SPIFI_ADCHS_IRQHandler(void) ALIAS(IntDefaultHandler);
 125:../src/cr_startup_lpc43xx-m0app.c **** void M0SUB_IRQHandler(void) ALIAS(IntDefaultHandler);
 126:../src/cr_startup_lpc43xx-m0app.c **** #else
 127:../src/cr_startup_lpc43xx-m0app.c **** void M0_RTC_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 128:../src/cr_startup_lpc43xx-m0app.c **** void M0_M4CORE_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 129:../src/cr_startup_lpc43xx-m0app.c **** void M0_DMA_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 130:../src/cr_startup_lpc43xx-m0app.c **** void M0_ETH_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 131:../src/cr_startup_lpc43xx-m0app.c **** void M0_SDIO_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 132:../src/cr_startup_lpc43xx-m0app.c **** void M0_LCD_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 133:../src/cr_startup_lpc43xx-m0app.c **** void M0_USB0_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 134:../src/cr_startup_lpc43xx-m0app.c **** void M0_USB1_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 135:../src/cr_startup_lpc43xx-m0app.c **** void M0_SCT_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 136:../src/cr_startup_lpc43xx-m0app.c **** void M0_RIT_OR_WWDT_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 137:../src/cr_startup_lpc43xx-m0app.c **** void M0_TIMER0_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 138:../src/cr_startup_lpc43xx-m0app.c **** void M0_GINT1_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 139:../src/cr_startup_lpc43xx-m0app.c **** void M0_TIMER3_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 140:../src/cr_startup_lpc43xx-m0app.c **** void M0_MCPWM_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 141:../src/cr_startup_lpc43xx-m0app.c **** void M0_ADC0_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 142:../src/cr_startup_lpc43xx-m0app.c **** void M0_I2C0_OR_I2C1_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 143:../src/cr_startup_lpc43xx-m0app.c **** void M0_SGPIO_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 144:../src/cr_startup_lpc43xx-m0app.c **** void M0_SPI_OR_DAC_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 145:../src/cr_startup_lpc43xx-m0app.c **** void M0_ADC1_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 146:../src/cr_startup_lpc43xx-m0app.c **** void M0_SSP0_OR_SSP1_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 147:../src/cr_startup_lpc43xx-m0app.c **** void M0_EVENTROUTER_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 148:../src/cr_startup_lpc43xx-m0app.c **** void M0_USART0_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 149:../src/cr_startup_lpc43xx-m0app.c **** void M0_USART2_OR_C_CAN1_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 150:../src/cr_startup_lpc43xx-m0app.c **** void M0_USART3_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 151:../src/cr_startup_lpc43xx-m0app.c **** void M0_I2S0_OR_I2S1_OR_QEI_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 152:../src/cr_startup_lpc43xx-m0app.c **** void M0_C_CAN0_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 153:../src/cr_startup_lpc43xx-m0app.c **** void M0_SPIFI_OR_VADC_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 154:../src/cr_startup_lpc43xx-m0app.c **** void M0_M0SUB_IRQHandler(void) ALIAS(M0_IntDefaultHandler);
 155:../src/cr_startup_lpc43xx-m0app.c **** #endif
 156:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 157:../src/cr_startup_lpc43xx-m0app.c **** //
 158:../src/cr_startup_lpc43xx-m0app.c **** // The entry point for the application.
 159:../src/cr_startup_lpc43xx-m0app.c **** // __main() is the entry point for Redlib based applications
 160:../src/cr_startup_lpc43xx-m0app.c **** // main() is the entry point for Newlib based applications
 161:../src/cr_startup_lpc43xx-m0app.c **** //
 162:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 163:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__REDLIB__)
 164:../src/cr_startup_lpc43xx-m0app.c **** extern void __main(void);
 165:../src/cr_startup_lpc43xx-m0app.c **** #endif
 166:../src/cr_startup_lpc43xx-m0app.c **** extern int main(void);
 167:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 168:../src/cr_startup_lpc43xx-m0app.c **** //
 169:../src/cr_startup_lpc43xx-m0app.c **** // External declaration for the pointer to the stack top from the Linker Script
 170:../src/cr_startup_lpc43xx-m0app.c **** //
 171:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 172:../src/cr_startup_lpc43xx-m0app.c **** extern void _vStackTop(void);
 173:../src/cr_startup_lpc43xx-m0app.c **** 
 174:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 175:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__cplusplus)
 176:../src/cr_startup_lpc43xx-m0app.c **** } // extern "C"
 177:../src/cr_startup_lpc43xx-m0app.c **** #endif
 178:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 179:../src/cr_startup_lpc43xx-m0app.c **** //
 180:../src/cr_startup_lpc43xx-m0app.c **** // The vector table.
 181:../src/cr_startup_lpc43xx-m0app.c **** // This relies on the linker script to place at correct location in memory.
 182:../src/cr_startup_lpc43xx-m0app.c **** //
 183:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 184:../src/cr_startup_lpc43xx-m0app.c **** extern void (* const g_pfnVectors[])(void);
 185:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".isr_vector")))
 186:../src/cr_startup_lpc43xx-m0app.c **** void (* const g_pfnVectors[])(void) = {
 187:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
 188:../src/cr_startup_lpc43xx-m0app.c ****     // Core Level - CM0
 189:../src/cr_startup_lpc43xx-m0app.c ****     &_vStackTop,                        // The initial stack pointer
 190:../src/cr_startup_lpc43xx-m0app.c ****     ResetISR,                           // 1 The reset handler
 191:../src/cr_startup_lpc43xx-m0app.c ****     NMI_Handler,                    // The NMI handler
 192:../src/cr_startup_lpc43xx-m0app.c ****     HardFault_Handler,              // The hard fault handler
 193:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 4 Reserved
 194:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 5 Reserved
 195:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 6 Reserved
 196:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 7 Reserved
 197:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 8 Reserved
 198:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 9 Reserved
 199:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 10 Reserved
 200:../src/cr_startup_lpc43xx-m0app.c ****     SVC_Handler,                    // SVCall handler
 201:../src/cr_startup_lpc43xx-m0app.c ****     0,                              // Reserved
 202:../src/cr_startup_lpc43xx-m0app.c ****     0,                              // Reserved
 203:../src/cr_startup_lpc43xx-m0app.c ****     PendSV_Handler,                 // The PendSV handler
 204:../src/cr_startup_lpc43xx-m0app.c ****     SysTick_Handler,                // The SysTick handler
 205:../src/cr_startup_lpc43xx-m0app.c **** 
 206:../src/cr_startup_lpc43xx-m0app.c ****     // Chip Level - 43xx M0 core
 207:../src/cr_startup_lpc43xx-m0app.c ****     RTC_IRQHandler,                 // 16 RTC
 208:../src/cr_startup_lpc43xx-m0app.c ****     MX_CORE_IRQHandler,             // 17 CortexM4/M0 (LPC43XX ONLY)
 209:../src/cr_startup_lpc43xx-m0app.c ****     DMA_IRQHandler,                 // 18 General Purpose DMA
 210:../src/cr_startup_lpc43xx-m0app.c ****     0,                              // 19 Reserved
 211:../src/cr_startup_lpc43xx-m0app.c ****     FLASHEEPROM_IRQHandler,         // 20 ORed flash Bank A, flash Bank B, EEPROM interrupts
 212:../src/cr_startup_lpc43xx-m0app.c ****     ETH_IRQHandler,                 // 21 Ethernet
 213:../src/cr_startup_lpc43xx-m0app.c ****     SDIO_IRQHandler,                // 22 SD/MMC
 214:../src/cr_startup_lpc43xx-m0app.c ****     LCD_IRQHandler,                 // 23 LCD
 215:../src/cr_startup_lpc43xx-m0app.c ****     USB0_IRQHandler,                // 24 USB0
 216:../src/cr_startup_lpc43xx-m0app.c ****     USB1_IRQHandler,                // 25 USB1
 217:../src/cr_startup_lpc43xx-m0app.c ****     SCT_IRQHandler,                 // 26 State Configurable Timer
 218:../src/cr_startup_lpc43xx-m0app.c ****     RIT_IRQHandler,                 // 27 ORed Repetitive Interrupt Timer, WWDT
 219:../src/cr_startup_lpc43xx-m0app.c ****     TIMER0_IRQHandler,              // 28 Timer0
 220:../src/cr_startup_lpc43xx-m0app.c ****     GINT1_IRQHandler,               // 29 GINT1
 221:../src/cr_startup_lpc43xx-m0app.c ****     GPIO4_IRQHandler,               // 30 GPIO4
 222:../src/cr_startup_lpc43xx-m0app.c ****     TIMER3_IRQHandler,              // 31 Timer 3
 223:../src/cr_startup_lpc43xx-m0app.c ****     MCPWM_IRQHandler,               // 32 Motor Control PWM
 224:../src/cr_startup_lpc43xx-m0app.c ****     ADC0_IRQHandler,                // 33 A/D Converter 0
 225:../src/cr_startup_lpc43xx-m0app.c ****     I2C0_IRQHandler,                // 34 ORed I2C0, I2C1
 226:../src/cr_startup_lpc43xx-m0app.c ****     SGPIO_IRQHandler,               // 35 SGPIO (LPC43XX ONLY)
 227:../src/cr_startup_lpc43xx-m0app.c ****     SPI_IRQHandler,                 // 36 ORed SPI, DAC (LPC43XX ONLY)
 228:../src/cr_startup_lpc43xx-m0app.c ****     ADC1_IRQHandler,                // 37 A/D Converter 1
 229:../src/cr_startup_lpc43xx-m0app.c ****     SSP0_IRQHandler,                // 38 ORed SSP0, SSP1
 230:../src/cr_startup_lpc43xx-m0app.c ****     EVRT_IRQHandler,                // 39 Event Router
 231:../src/cr_startup_lpc43xx-m0app.c ****     UART0_IRQHandler,               // 40 UART0
 232:../src/cr_startup_lpc43xx-m0app.c ****     UART1_IRQHandler,               // 41 UART1
 233:../src/cr_startup_lpc43xx-m0app.c ****     UART2_IRQHandler,               // 42 UART2
 234:../src/cr_startup_lpc43xx-m0app.c ****     UART3_IRQHandler,               // 43 USRT3
 235:../src/cr_startup_lpc43xx-m0app.c ****     I2S0_IRQHandler,                // 44 ORed I2S0, I2S1
 236:../src/cr_startup_lpc43xx-m0app.c ****     CAN0_IRQHandler,                // 45 C_CAN0
 237:../src/cr_startup_lpc43xx-m0app.c ****     SPIFI_ADCHS_IRQHandler,         // 46 SPIFI OR ADCHS interrupt
 238:../src/cr_startup_lpc43xx-m0app.c ****     M0SUB_IRQHandler,               // 47 M0SUB core
 239:../src/cr_startup_lpc43xx-m0app.c **** };
 240:../src/cr_startup_lpc43xx-m0app.c **** #else
 241:../src/cr_startup_lpc43xx-m0app.c ****     // Core Level - CM0
 242:../src/cr_startup_lpc43xx-m0app.c ****     &_vStackTop,                        // The initial stack pointer
 243:../src/cr_startup_lpc43xx-m0app.c ****     ResetISR,                           // 1 The reset handler
 244:../src/cr_startup_lpc43xx-m0app.c ****     M0_NMI_Handler,                     // 2 The NMI handler
 245:../src/cr_startup_lpc43xx-m0app.c ****     M0_HardFault_Handler,               // 3 The hard fault handler
 246:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 4 Reserved
 247:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 5 Reserved
 248:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 6 Reserved
 249:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 7 Reserved
 250:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 8 Reserved
 251:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 9 Reserved
 252:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 10 Reserved
 253:../src/cr_startup_lpc43xx-m0app.c ****     M0_SVC_Handler,                     // 11 SVCall handler
 254:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 12 Reserved
 255:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 13 Reserved
 256:../src/cr_startup_lpc43xx-m0app.c ****     M0_PendSV_Handler,                  // 14 The PendSV handler
 257:../src/cr_startup_lpc43xx-m0app.c ****     M0_SysTick_Handler,                 // 15 The SysTick handler
 258:../src/cr_startup_lpc43xx-m0app.c **** 
 259:../src/cr_startup_lpc43xx-m0app.c ****     // Chip Level - LPC43 (CM0 APP)
 260:../src/cr_startup_lpc43xx-m0app.c ****         M0_RTC_IRQHandler,              // 16 RTC
 261:../src/cr_startup_lpc43xx-m0app.c ****     M0_M4CORE_IRQHandler,               // 17 Interrupt from M4 Core
 262:../src/cr_startup_lpc43xx-m0app.c ****     M0_DMA_IRQHandler,                  // 18 General Purpose DMA
 263:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 19 Reserved
 264:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 20 Reserved
 265:../src/cr_startup_lpc43xx-m0app.c ****     M0_ETH_IRQHandler,                  // 21 Ethernet
 266:../src/cr_startup_lpc43xx-m0app.c ****     M0_SDIO_IRQHandler,                 // 22 SD/MMC
 267:../src/cr_startup_lpc43xx-m0app.c ****     M0_LCD_IRQHandler,                  // 23 LCD
 268:../src/cr_startup_lpc43xx-m0app.c ****     M0_USB0_IRQHandler,                 // 24 USB0
 269:../src/cr_startup_lpc43xx-m0app.c ****     M0_USB1_IRQHandler,                 // 25 USB1
 270:../src/cr_startup_lpc43xx-m0app.c ****     M0_SCT_IRQHandler ,                 // 26 State Configurable Timer
 271:../src/cr_startup_lpc43xx-m0app.c ****     M0_RIT_OR_WWDT_IRQHandler,          // 27 Repetitive Interrupt Timer
 272:../src/cr_startup_lpc43xx-m0app.c ****     M0_TIMER0_IRQHandler,               // 28 Timer0
 273:../src/cr_startup_lpc43xx-m0app.c ****     M0_GINT1_IRQHandler,                // 29 GINT1
 274:../src/cr_startup_lpc43xx-m0app.c ****     M0_TIMER3_IRQHandler,               // 30 Timer3
 275:../src/cr_startup_lpc43xx-m0app.c ****     0,                                  // 31 Reserved
 276:../src/cr_startup_lpc43xx-m0app.c ****     0 ,                                 // 32 Reserved
 277:../src/cr_startup_lpc43xx-m0app.c ****     M0_MCPWM_IRQHandler,                // 33 Motor Control PWM
 278:../src/cr_startup_lpc43xx-m0app.c ****     M0_ADC0_IRQHandler,                 // 34 ADC0
 279:../src/cr_startup_lpc43xx-m0app.c ****     M0_I2C0_OR_I2C1_IRQHandler,         // 35 I2C0 or I2C1
 280:../src/cr_startup_lpc43xx-m0app.c ****     M0_SGPIO_IRQHandler,                // 36 Serial GPIO
 281:../src/cr_startup_lpc43xx-m0app.c ****     M0_SPI_OR_DAC_IRQHandler,           // 37 SPI or DAC
 282:../src/cr_startup_lpc43xx-m0app.c ****     M0_ADC1_IRQHandler,                 // 38 ADC1
 283:../src/cr_startup_lpc43xx-m0app.c ****     M0_SSP0_OR_SSP1_IRQHandler,         // 39 SSP0 or SSP1
 284:../src/cr_startup_lpc43xx-m0app.c ****     M0_EVENTROUTER_IRQHandler,          // 40 Event Router
 285:../src/cr_startup_lpc43xx-m0app.c ****     M0_USART0_IRQHandler,               // 41 USART0
 286:../src/cr_startup_lpc43xx-m0app.c ****     M0_USART2_OR_C_CAN1_IRQHandler,     // 42 USART2 or C CAN1
 287:../src/cr_startup_lpc43xx-m0app.c ****     M0_USART3_IRQHandler,               // 43 USART3
 288:../src/cr_startup_lpc43xx-m0app.c ****     M0_I2S0_OR_I2S1_OR_QEI_IRQHandler,  // 44 I2S0 or I2S1 or QEI
 289:../src/cr_startup_lpc43xx-m0app.c ****     M0_C_CAN0_IRQHandler,               // 45 C CAN0
 290:../src/cr_startup_lpc43xx-m0app.c ****     M0_SPIFI_OR_VADC_IRQHandler,        // 46
 291:../src/cr_startup_lpc43xx-m0app.c ****     M0_M0SUB_IRQHandler,                // 47 Interrupt from M0SUB
 292:../src/cr_startup_lpc43xx-m0app.c ****   };
 293:../src/cr_startup_lpc43xx-m0app.c **** #endif
 294:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 295:../src/cr_startup_lpc43xx-m0app.c **** // Functions to carry out the initialization of RW and BSS data sections. These
 296:../src/cr_startup_lpc43xx-m0app.c **** // are written as separate functions rather than being inlined within the
 297:../src/cr_startup_lpc43xx-m0app.c **** // ResetISR() function in order to cope with MCUs with multiple banks of
 298:../src/cr_startup_lpc43xx-m0app.c **** // memory.
 299:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 300:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 301:../src/cr_startup_lpc43xx-m0app.c **** void data_init(unsigned int romstart, unsigned int start, unsigned int len) {
  82              		.loc 1 301 0
  83              		.cfi_startproc
  84              		@ args = 0, pretend = 0, frame = 32
  85              		@ frame_needed = 1, uses_anonymous_args = 0
  86 0000 80B5     		push	{r7, lr}
  87              		.cfi_def_cfa_offset 8
  88              		.cfi_offset 7, -8
  89              		.cfi_offset 14, -4
  90 0002 88B0     		sub	sp, sp, #32
  91              		.cfi_def_cfa_offset 40
  92 0004 00AF     		add	r7, sp, #0
  93              		.cfi_def_cfa_register 7
  94 0006 F860     		str	r0, [r7, #12]
  95 0008 B960     		str	r1, [r7, #8]
  96 000a 7A60     		str	r2, [r7, #4]
 302:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int *pulDest = (unsigned int*) start;
  97              		.loc 1 302 0
  98 000c BB68     		ldr	r3, [r7, #8]
  99 000e FB61     		str	r3, [r7, #28]
 303:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int *pulSrc = (unsigned int*) romstart;
 100              		.loc 1 303 0
 101 0010 FB68     		ldr	r3, [r7, #12]
 102 0012 BB61     		str	r3, [r7, #24]
 304:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int loop;
 305:../src/cr_startup_lpc43xx-m0app.c ****   for (loop = 0; loop < len; loop = loop + 4)
 103              		.loc 1 305 0
 104 0014 0023     		movs	r3, #0
 105 0016 7B61     		str	r3, [r7, #20]
 106 0018 0AE0     		b	.L2
 107              	.L3:
 306:../src/cr_startup_lpc43xx-m0app.c ****     *pulDest++ = *pulSrc++;
 108              		.loc 1 306 0 discriminator 3
 109 001a FB69     		ldr	r3, [r7, #28]
 110 001c 1A1D     		adds	r2, r3, #4
 111 001e FA61     		str	r2, [r7, #28]
 112 0020 BA69     		ldr	r2, [r7, #24]
 113 0022 111D     		adds	r1, r2, #4
 114 0024 B961     		str	r1, [r7, #24]
 115 0026 1268     		ldr	r2, [r2]
 116 0028 1A60     		str	r2, [r3]
 305:../src/cr_startup_lpc43xx-m0app.c ****     *pulDest++ = *pulSrc++;
 117              		.loc 1 305 0 discriminator 3
 118 002a 7B69     		ldr	r3, [r7, #20]
 119 002c 0433     		adds	r3, r3, #4
 120 002e 7B61     		str	r3, [r7, #20]
 121              	.L2:
 305:../src/cr_startup_lpc43xx-m0app.c ****     *pulDest++ = *pulSrc++;
 122              		.loc 1 305 0 is_stmt 0 discriminator 1
 123 0030 7A69     		ldr	r2, [r7, #20]
 124 0032 7B68     		ldr	r3, [r7, #4]
 125 0034 9A42     		cmp	r2, r3
 126 0036 F0D3     		bcc	.L3
 307:../src/cr_startup_lpc43xx-m0app.c **** }
 127              		.loc 1 307 0 is_stmt 1
 128 0038 C046     		nop
 129 003a BD46     		mov	sp, r7
 130 003c 08B0     		add	sp, sp, #32
 131              		@ sp needed
 132 003e 80BD     		pop	{r7, pc}
 133              		.cfi_endproc
 134              	.LFE32:
 136              		.align	2
 137              		.global	bss_init
 138              		.code	16
 139              		.thumb_func
 141              	bss_init:
 142              	.LFB33:
 308:../src/cr_startup_lpc43xx-m0app.c **** 
 309:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 310:../src/cr_startup_lpc43xx-m0app.c **** void bss_init(unsigned int start, unsigned int len) {
 143              		.loc 1 310 0
 144              		.cfi_startproc
 145              		@ args = 0, pretend = 0, frame = 16
 146              		@ frame_needed = 1, uses_anonymous_args = 0
 147 0040 80B5     		push	{r7, lr}
 148              		.cfi_def_cfa_offset 8
 149              		.cfi_offset 7, -8
 150              		.cfi_offset 14, -4
 151 0042 84B0     		sub	sp, sp, #16
 152              		.cfi_def_cfa_offset 24
 153 0044 00AF     		add	r7, sp, #0
 154              		.cfi_def_cfa_register 7
 155 0046 7860     		str	r0, [r7, #4]
 156 0048 3960     		str	r1, [r7]
 311:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int *pulDest = (unsigned int*) start;
 157              		.loc 1 311 0
 158 004a 7B68     		ldr	r3, [r7, #4]
 159 004c FB60     		str	r3, [r7, #12]
 312:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int loop;
 313:../src/cr_startup_lpc43xx-m0app.c ****   for (loop = 0; loop < len; loop = loop + 4)
 160              		.loc 1 313 0
 161 004e 0023     		movs	r3, #0
 162 0050 BB60     		str	r3, [r7, #8]
 163 0052 07E0     		b	.L5
 164              	.L6:
 314:../src/cr_startup_lpc43xx-m0app.c ****     *pulDest++ = 0;
 165              		.loc 1 314 0 discriminator 3
 166 0054 FB68     		ldr	r3, [r7, #12]
 167 0056 1A1D     		adds	r2, r3, #4
 168 0058 FA60     		str	r2, [r7, #12]
 169 005a 0022     		movs	r2, #0
 170 005c 1A60     		str	r2, [r3]
 313:../src/cr_startup_lpc43xx-m0app.c ****     *pulDest++ = 0;
 171              		.loc 1 313 0 discriminator 3
 172 005e BB68     		ldr	r3, [r7, #8]
 173 0060 0433     		adds	r3, r3, #4
 174 0062 BB60     		str	r3, [r7, #8]
 175              	.L5:
 313:../src/cr_startup_lpc43xx-m0app.c ****     *pulDest++ = 0;
 176              		.loc 1 313 0 is_stmt 0 discriminator 1
 177 0064 BA68     		ldr	r2, [r7, #8]
 178 0066 3B68     		ldr	r3, [r7]
 179 0068 9A42     		cmp	r2, r3
 180 006a F3D3     		bcc	.L6
 315:../src/cr_startup_lpc43xx-m0app.c **** }
 181              		.loc 1 315 0 is_stmt 1
 182 006c C046     		nop
 183 006e BD46     		mov	sp, r7
 184 0070 04B0     		add	sp, sp, #16
 185              		@ sp needed
 186 0072 80BD     		pop	{r7, pc}
 187              		.cfi_endproc
 188              	.LFE33:
 190              		.section	.text.ResetISR,"ax",%progbits
 191              		.align	2
 192              		.global	ResetISR
 193              		.code	16
 194              		.thumb_func
 196              	ResetISR:
 197              	.LFB34:
 316:../src/cr_startup_lpc43xx-m0app.c **** 
 317:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 318:../src/cr_startup_lpc43xx-m0app.c **** // The following symbols are constructs generated by the linker, indicating
 319:../src/cr_startup_lpc43xx-m0app.c **** // the location of various points in the "Global Section Table". This table is
 320:../src/cr_startup_lpc43xx-m0app.c **** // created by the linker via the Code Red managed linker script mechanism. It
 321:../src/cr_startup_lpc43xx-m0app.c **** // contains the load address, execution address and length of each RW data
 322:../src/cr_startup_lpc43xx-m0app.c **** // section and the execution and length of each BSS (zero initialized) section.
 323:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 324:../src/cr_startup_lpc43xx-m0app.c **** extern unsigned int __data_section_table;
 325:../src/cr_startup_lpc43xx-m0app.c **** extern unsigned int __data_section_table_end;
 326:../src/cr_startup_lpc43xx-m0app.c **** extern unsigned int __bss_section_table;
 327:../src/cr_startup_lpc43xx-m0app.c **** extern unsigned int __bss_section_table_end;
 328:../src/cr_startup_lpc43xx-m0app.c **** 
 329:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 330:../src/cr_startup_lpc43xx-m0app.c **** // Reset entry point for your code.
 331:../src/cr_startup_lpc43xx-m0app.c **** // Sets up a simple runtime environment and initializes the C/C++
 332:../src/cr_startup_lpc43xx-m0app.c **** // library.
 333:../src/cr_startup_lpc43xx-m0app.c **** //
 334:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 335:../src/cr_startup_lpc43xx-m0app.c **** void
 336:../src/cr_startup_lpc43xx-m0app.c **** ResetISR(void) {
 198              		.loc 1 336 0
 199              		.cfi_startproc
 200              		@ args = 0, pretend = 0, frame = 24
 201              		@ frame_needed = 1, uses_anonymous_args = 0
 202 0000 80B5     		push	{r7, lr}
 203              		.cfi_def_cfa_offset 8
 204              		.cfi_offset 7, -8
 205              		.cfi_offset 14, -4
 206 0002 86B0     		sub	sp, sp, #24
 207              		.cfi_def_cfa_offset 32
 208 0004 00AF     		add	r7, sp, #0
 209              		.cfi_def_cfa_register 7
 337:../src/cr_startup_lpc43xx-m0app.c **** 
 338:../src/cr_startup_lpc43xx-m0app.c ****   // ******************************
 339:../src/cr_startup_lpc43xx-m0app.c ****   // Modify CREG->M0APPMAP so that M0 looks in correct place
 340:../src/cr_startup_lpc43xx-m0app.c ****   // for its vector table when an exception is triggered.
 341:../src/cr_startup_lpc43xx-m0app.c ****   // Note that we do not use the CMSIS register access mechanism,
 342:../src/cr_startup_lpc43xx-m0app.c ****   // as there is no guarantee that the project has been configured
 343:../src/cr_startup_lpc43xx-m0app.c ****   // to use CMSIS.
 344:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int *pCREG_M0APPMAP = (unsigned int *) 0x40043404;
 210              		.loc 1 344 0
 211 0006 1C4B     		ldr	r3, .L13
 212 0008 3B61     		str	r3, [r7, #16]
 345:../src/cr_startup_lpc43xx-m0app.c ****   // CMSIS : CREG->M0APPMAP = <address of vector table>
 346:../src/cr_startup_lpc43xx-m0app.c ****   *pCREG_M0APPMAP = (unsigned int)g_pfnVectors;
 213              		.loc 1 346 0
 214 000a 1C4A     		ldr	r2, .L13+4
 215 000c 3B69     		ldr	r3, [r7, #16]
 216 000e 1A60     		str	r2, [r3]
 347:../src/cr_startup_lpc43xx-m0app.c **** 
 348:../src/cr_startup_lpc43xx-m0app.c ****     //
 349:../src/cr_startup_lpc43xx-m0app.c ****     // Copy the data sections from flash to SRAM.
 350:../src/cr_startup_lpc43xx-m0app.c ****     //
 351:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int LoadAddr, ExeAddr, SectionLen;
 352:../src/cr_startup_lpc43xx-m0app.c ****   unsigned int *SectionTableAddr;
 353:../src/cr_startup_lpc43xx-m0app.c **** 
 354:../src/cr_startup_lpc43xx-m0app.c ****   // Load base address of Global Section Table
 355:../src/cr_startup_lpc43xx-m0app.c ****   SectionTableAddr = &__data_section_table;
 217              		.loc 1 355 0
 218 0010 1B4B     		ldr	r3, .L13+8
 219 0012 7B61     		str	r3, [r7, #20]
 356:../src/cr_startup_lpc43xx-m0app.c **** 
 357:../src/cr_startup_lpc43xx-m0app.c ****     // Copy the data sections from flash to SRAM.
 358:../src/cr_startup_lpc43xx-m0app.c ****   while (SectionTableAddr < &__data_section_table_end) {
 220              		.loc 1 358 0
 221 0014 14E0     		b	.L8
 222              	.L9:
 359:../src/cr_startup_lpc43xx-m0app.c ****     LoadAddr = *SectionTableAddr++;
 223              		.loc 1 359 0
 224 0016 7B69     		ldr	r3, [r7, #20]
 225 0018 1A1D     		adds	r2, r3, #4
 226 001a 7A61     		str	r2, [r7, #20]
 227 001c 1B68     		ldr	r3, [r3]
 228 001e FB60     		str	r3, [r7, #12]
 360:../src/cr_startup_lpc43xx-m0app.c ****     ExeAddr = *SectionTableAddr++;
 229              		.loc 1 360 0
 230 0020 7B69     		ldr	r3, [r7, #20]
 231 0022 1A1D     		adds	r2, r3, #4
 232 0024 7A61     		str	r2, [r7, #20]
 233 0026 1B68     		ldr	r3, [r3]
 234 0028 BB60     		str	r3, [r7, #8]
 361:../src/cr_startup_lpc43xx-m0app.c ****     SectionLen = *SectionTableAddr++;
 235              		.loc 1 361 0
 236 002a 7B69     		ldr	r3, [r7, #20]
 237 002c 1A1D     		adds	r2, r3, #4
 238 002e 7A61     		str	r2, [r7, #20]
 239 0030 1B68     		ldr	r3, [r3]
 240 0032 7B60     		str	r3, [r7, #4]
 362:../src/cr_startup_lpc43xx-m0app.c ****     data_init(LoadAddr, ExeAddr, SectionLen);
 241              		.loc 1 362 0
 242 0034 7A68     		ldr	r2, [r7, #4]
 243 0036 B968     		ldr	r1, [r7, #8]
 244 0038 FB68     		ldr	r3, [r7, #12]
 245 003a 1800     		movs	r0, r3
 246 003c FFF7FEFF 		bl	data_init
 247              	.L8:
 358:../src/cr_startup_lpc43xx-m0app.c ****     LoadAddr = *SectionTableAddr++;
 248              		.loc 1 358 0
 249 0040 7A69     		ldr	r2, [r7, #20]
 250 0042 104B     		ldr	r3, .L13+12
 251 0044 9A42     		cmp	r2, r3
 252 0046 E6D3     		bcc	.L9
 363:../src/cr_startup_lpc43xx-m0app.c ****   }
 364:../src/cr_startup_lpc43xx-m0app.c ****   // At this point, SectionTableAddr = &__bss_section_table;
 365:../src/cr_startup_lpc43xx-m0app.c ****   // Zero fill the bss segment
 366:../src/cr_startup_lpc43xx-m0app.c ****   while (SectionTableAddr < &__bss_section_table_end) {
 253              		.loc 1 366 0
 254 0048 0FE0     		b	.L10
 255              	.L11:
 367:../src/cr_startup_lpc43xx-m0app.c ****     ExeAddr = *SectionTableAddr++;
 256              		.loc 1 367 0
 257 004a 7B69     		ldr	r3, [r7, #20]
 258 004c 1A1D     		adds	r2, r3, #4
 259 004e 7A61     		str	r2, [r7, #20]
 260 0050 1B68     		ldr	r3, [r3]
 261 0052 BB60     		str	r3, [r7, #8]
 368:../src/cr_startup_lpc43xx-m0app.c ****     SectionLen = *SectionTableAddr++;
 262              		.loc 1 368 0
 263 0054 7B69     		ldr	r3, [r7, #20]
 264 0056 1A1D     		adds	r2, r3, #4
 265 0058 7A61     		str	r2, [r7, #20]
 266 005a 1B68     		ldr	r3, [r3]
 267 005c 7B60     		str	r3, [r7, #4]
 369:../src/cr_startup_lpc43xx-m0app.c ****     bss_init(ExeAddr, SectionLen);
 268              		.loc 1 369 0
 269 005e 7A68     		ldr	r2, [r7, #4]
 270 0060 BB68     		ldr	r3, [r7, #8]
 271 0062 1100     		movs	r1, r2
 272 0064 1800     		movs	r0, r3
 273 0066 FFF7FEFF 		bl	bss_init
 274              	.L10:
 366:../src/cr_startup_lpc43xx-m0app.c ****     ExeAddr = *SectionTableAddr++;
 275              		.loc 1 366 0
 276 006a 7A69     		ldr	r2, [r7, #20]
 277 006c 064B     		ldr	r3, .L13+16
 278 006e 9A42     		cmp	r2, r3
 279 0070 EBD3     		bcc	.L11
 370:../src/cr_startup_lpc43xx-m0app.c ****   }
 371:../src/cr_startup_lpc43xx-m0app.c **** 
 372:../src/cr_startup_lpc43xx-m0app.c **** // **********************************************************
 373:../src/cr_startup_lpc43xx-m0app.c **** // No need to call SystemInit() here, as master CM4 cpu will
 374:../src/cr_startup_lpc43xx-m0app.c **** // have done the main system set up before enabling CM0.
 375:../src/cr_startup_lpc43xx-m0app.c **** // **********************************************************
 376:../src/cr_startup_lpc43xx-m0app.c **** 
 377:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__cplusplus)
 378:../src/cr_startup_lpc43xx-m0app.c ****   //
 379:../src/cr_startup_lpc43xx-m0app.c ****   // Call C++ library initialisation
 380:../src/cr_startup_lpc43xx-m0app.c ****   //
 381:../src/cr_startup_lpc43xx-m0app.c ****   __libc_init_array();
 382:../src/cr_startup_lpc43xx-m0app.c **** #endif
 383:../src/cr_startup_lpc43xx-m0app.c **** 
 384:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__REDLIB__)
 385:../src/cr_startup_lpc43xx-m0app.c ****   // Call the Redlib library, which in turn calls main()
 386:../src/cr_startup_lpc43xx-m0app.c ****   __main() ;
 280              		.loc 1 386 0
 281 0072 FFF7FEFF 		bl	__main
 282              	.L12:
 387:../src/cr_startup_lpc43xx-m0app.c **** #else
 388:../src/cr_startup_lpc43xx-m0app.c ****   main();
 389:../src/cr_startup_lpc43xx-m0app.c **** #endif
 390:../src/cr_startup_lpc43xx-m0app.c **** 
 391:../src/cr_startup_lpc43xx-m0app.c ****   //
 392:../src/cr_startup_lpc43xx-m0app.c ****   // main() shouldn't return, but if it does, we'll just enter an infinite loop 
 393:../src/cr_startup_lpc43xx-m0app.c ****   //
 394:../src/cr_startup_lpc43xx-m0app.c ****   while (1) {
 395:../src/cr_startup_lpc43xx-m0app.c ****     ;
 396:../src/cr_startup_lpc43xx-m0app.c ****   }
 283              		.loc 1 396 0 discriminator 1
 284 0076 FEE7     		b	.L12
 285              	.L14:
 286              		.align	2
 287              	.L13:
 288 0078 04340440 		.word	1074017284
 289 007c 00000000 		.word	g_pfnVectors
 290 0080 00000000 		.word	__data_section_table
 291 0084 00000000 		.word	__data_section_table_end
 292 0088 00000000 		.word	__bss_section_table_end
 293              		.cfi_endproc
 294              	.LFE34:
 296              		.section	.after_vectors
 297              		.align	2
 298              		.weak	M0_NMI_Handler
 299              		.code	16
 300              		.thumb_func
 302              	M0_NMI_Handler:
 303              	.LFB35:
 397:../src/cr_startup_lpc43xx-m0app.c **** }
 398:../src/cr_startup_lpc43xx-m0app.c **** 
 399:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 400:../src/cr_startup_lpc43xx-m0app.c **** // Default exception handlers. Override the ones here by defining your own
 401:../src/cr_startup_lpc43xx-m0app.c **** // handler routines in your application code.
 402:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 403:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 404:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
 405:../src/cr_startup_lpc43xx-m0app.c **** void NMI_Handler(void)
 406:../src/cr_startup_lpc43xx-m0app.c **** #else
 407:../src/cr_startup_lpc43xx-m0app.c **** void M0_NMI_Handler(void)
 408:../src/cr_startup_lpc43xx-m0app.c **** #endif
 409:../src/cr_startup_lpc43xx-m0app.c **** {   while(1) { }
 304              		.loc 1 409 0
 305              		.cfi_startproc
 306              		@ args = 0, pretend = 0, frame = 0
 307              		@ frame_needed = 1, uses_anonymous_args = 0
 308 0074 80B5     		push	{r7, lr}
 309              		.cfi_def_cfa_offset 8
 310              		.cfi_offset 7, -8
 311              		.cfi_offset 14, -4
 312 0076 00AF     		add	r7, sp, #0
 313              		.cfi_def_cfa_register 7
 314              	.L16:
 315              		.loc 1 409 0 discriminator 1
 316 0078 FEE7     		b	.L16
 317              		.cfi_endproc
 318              	.LFE35:
 320              		.section	.rodata
 321              		.align	2
 322              	.LC4:
 323 0000 48617264 		.ascii	"HardFault\012\000"
 323      4661756C 
 323      740A00
 324              		.section	.after_vectors
 325 007a C046     		.align	2
 326              		.weak	M0_HardFault_Handler
 327              		.code	16
 328              		.thumb_func
 330              	M0_HardFault_Handler:
 331              	.LFB36:
 410:../src/cr_startup_lpc43xx-m0app.c **** }
 411:../src/cr_startup_lpc43xx-m0app.c **** 
 412:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 413:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
 414:../src/cr_startup_lpc43xx-m0app.c **** void HardFault_Handler(void)
 415:../src/cr_startup_lpc43xx-m0app.c **** #else
 416:../src/cr_startup_lpc43xx-m0app.c **** void M0_HardFault_Handler(void)
 417:../src/cr_startup_lpc43xx-m0app.c **** #endif
 418:../src/cr_startup_lpc43xx-m0app.c **** {
 332              		.loc 1 418 0
 333              		.cfi_startproc
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 1, uses_anonymous_args = 0
 336 007c 80B5     		push	{r7, lr}
 337              		.cfi_def_cfa_offset 8
 338              		.cfi_offset 7, -8
 339              		.cfi_offset 14, -4
 340 007e 00AF     		add	r7, sp, #0
 341              		.cfi_def_cfa_register 7
 419:../src/cr_startup_lpc43xx-m0app.c **** 	_DBG("HardFault\n");
 342              		.loc 1 419 0
 343 0080 034B     		ldr	r3, .L19
 344 0082 044A     		ldr	r2, .L19+4
 345 0084 1900     		movs	r1, r3
 346 0086 1000     		movs	r0, r2
 347 0088 FFF7FEFF 		bl	UARTPuts
 348              	.L18:
 420:../src/cr_startup_lpc43xx-m0app.c **** 	while(1) { }
 349              		.loc 1 420 0 discriminator 1
 350 008c FEE7     		b	.L18
 351              	.L20:
 352 008e C046     		.align	2
 353              	.L19:
 354 0090 00000000 		.word	.LC4
 355 0094 00200840 		.word	1074274304
 356              		.cfi_endproc
 357              	.LFE36:
 359              		.align	2
 360              		.weak	M0_SVC_Handler
 361              		.code	16
 362              		.thumb_func
 364              	M0_SVC_Handler:
 365              	.LFB37:
 421:../src/cr_startup_lpc43xx-m0app.c **** }
 422:../src/cr_startup_lpc43xx-m0app.c **** 
 423:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 424:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
 425:../src/cr_startup_lpc43xx-m0app.c **** void SVC_Handler(void)
 426:../src/cr_startup_lpc43xx-m0app.c **** #else
 427:../src/cr_startup_lpc43xx-m0app.c **** void M0_SVC_Handler(void)
 428:../src/cr_startup_lpc43xx-m0app.c **** #endif
 429:../src/cr_startup_lpc43xx-m0app.c **** {   while(1) { }
 366              		.loc 1 429 0
 367              		.cfi_startproc
 368              		@ args = 0, pretend = 0, frame = 0
 369              		@ frame_needed = 1, uses_anonymous_args = 0
 370 0098 80B5     		push	{r7, lr}
 371              		.cfi_def_cfa_offset 8
 372              		.cfi_offset 7, -8
 373              		.cfi_offset 14, -4
 374 009a 00AF     		add	r7, sp, #0
 375              		.cfi_def_cfa_register 7
 376              	.L22:
 377              		.loc 1 429 0 discriminator 1
 378 009c FEE7     		b	.L22
 379              		.cfi_endproc
 380              	.LFE37:
 382 009e C046     		.align	2
 383              		.weak	M0_PendSV_Handler
 384              		.code	16
 385              		.thumb_func
 387              	M0_PendSV_Handler:
 388              	.LFB38:
 430:../src/cr_startup_lpc43xx-m0app.c **** }
 431:../src/cr_startup_lpc43xx-m0app.c **** 
 432:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 433:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
 434:../src/cr_startup_lpc43xx-m0app.c **** void PendSV_Handler(void)
 435:../src/cr_startup_lpc43xx-m0app.c **** #else
 436:../src/cr_startup_lpc43xx-m0app.c **** void M0_PendSV_Handler(void)
 437:../src/cr_startup_lpc43xx-m0app.c **** #endif
 438:../src/cr_startup_lpc43xx-m0app.c **** {   while(1) { }
 389              		.loc 1 438 0
 390              		.cfi_startproc
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 1, uses_anonymous_args = 0
 393 00a0 80B5     		push	{r7, lr}
 394              		.cfi_def_cfa_offset 8
 395              		.cfi_offset 7, -8
 396              		.cfi_offset 14, -4
 397 00a2 00AF     		add	r7, sp, #0
 398              		.cfi_def_cfa_register 7
 399              	.L24:
 400              		.loc 1 438 0 discriminator 1
 401 00a4 FEE7     		b	.L24
 402              		.cfi_endproc
 403              	.LFE38:
 405 00a6 C046     		.align	2
 406              		.weak	M0_SysTick_Handler
 407              		.code	16
 408              		.thumb_func
 410              	M0_SysTick_Handler:
 411              	.LFB39:
 439:../src/cr_startup_lpc43xx-m0app.c **** }
 440:../src/cr_startup_lpc43xx-m0app.c **** 
 441:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 442:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
 443:../src/cr_startup_lpc43xx-m0app.c **** void SysTick_Handler(void)
 444:../src/cr_startup_lpc43xx-m0app.c **** #else
 445:../src/cr_startup_lpc43xx-m0app.c **** void M0_SysTick_Handler(void)
 446:../src/cr_startup_lpc43xx-m0app.c **** #endif
 447:../src/cr_startup_lpc43xx-m0app.c **** {   while(1) { }
 412              		.loc 1 447 0
 413              		.cfi_startproc
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 1, uses_anonymous_args = 0
 416 00a8 80B5     		push	{r7, lr}
 417              		.cfi_def_cfa_offset 8
 418              		.cfi_offset 7, -8
 419              		.cfi_offset 14, -4
 420 00aa 00AF     		add	r7, sp, #0
 421              		.cfi_def_cfa_register 7
 422              	.L26:
 423              		.loc 1 447 0 discriminator 1
 424 00ac FEE7     		b	.L26
 425              		.cfi_endproc
 426              	.LFE39:
 428 00ae C046     		.align	2
 429              		.weak	M0_IntDefaultHandler
 430              		.code	16
 431              		.thumb_func
 433              	M0_IntDefaultHandler:
 434              	.LFB40:
 448:../src/cr_startup_lpc43xx-m0app.c **** }
 449:../src/cr_startup_lpc43xx-m0app.c **** 
 450:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 451:../src/cr_startup_lpc43xx-m0app.c **** //
 452:../src/cr_startup_lpc43xx-m0app.c **** // Processor ends up here if an unexpected interrupt occurs or a specific
 453:../src/cr_startup_lpc43xx-m0app.c **** // handler is not present in the application code.
 454:../src/cr_startup_lpc43xx-m0app.c **** //
 455:../src/cr_startup_lpc43xx-m0app.c **** //*****************************************************************************
 456:../src/cr_startup_lpc43xx-m0app.c **** __attribute__ ((section(".after_vectors")))
 457:../src/cr_startup_lpc43xx-m0app.c **** #if defined (__USE_LPCOPEN)
 458:../src/cr_startup_lpc43xx-m0app.c **** void IntDefaultHandler(void)
 459:../src/cr_startup_lpc43xx-m0app.c **** #else
 460:../src/cr_startup_lpc43xx-m0app.c **** void M0_IntDefaultHandler(void)
 461:../src/cr_startup_lpc43xx-m0app.c **** #endif
 462:../src/cr_startup_lpc43xx-m0app.c **** {   while(1) { }
 435              		.loc 1 462 0
 436              		.cfi_startproc
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 1, uses_anonymous_args = 0
 439 00b0 80B5     		push	{r7, lr}
 440              		.cfi_def_cfa_offset 8
 441              		.cfi_offset 7, -8
 442              		.cfi_offset 14, -4
 443 00b2 00AF     		add	r7, sp, #0
 444              		.cfi_def_cfa_register 7
 445              	.L28:
 446              		.loc 1 462 0 discriminator 1
 447 00b4 FEE7     		b	.L28
 448              		.cfi_endproc
 449              	.LFE40:
 451              		.weak	M0_M0SUB_IRQHandler
 452              		.thumb_set M0_M0SUB_IRQHandler,M0_IntDefaultHandler
 453              		.weak	M0_SPIFI_OR_VADC_IRQHandler
 454              		.thumb_set M0_SPIFI_OR_VADC_IRQHandler,M0_IntDefaultHandler
 455              		.weak	M0_C_CAN0_IRQHandler
 456              		.thumb_set M0_C_CAN0_IRQHandler,M0_IntDefaultHandler
 457              		.weak	M0_I2S0_OR_I2S1_OR_QEI_IRQHandler
 458              		.thumb_set M0_I2S0_OR_I2S1_OR_QEI_IRQHandler,M0_IntDefaultHandler
 459              		.weak	M0_USART3_IRQHandler
 460              		.thumb_set M0_USART3_IRQHandler,M0_IntDefaultHandler
 461              		.weak	M0_USART2_OR_C_CAN1_IRQHandler
 462              		.thumb_set M0_USART2_OR_C_CAN1_IRQHandler,M0_IntDefaultHandler
 463              		.weak	M0_USART0_IRQHandler
 464              		.thumb_set M0_USART0_IRQHandler,M0_IntDefaultHandler
 465              		.weak	M0_EVENTROUTER_IRQHandler
 466              		.thumb_set M0_EVENTROUTER_IRQHandler,M0_IntDefaultHandler
 467              		.weak	M0_SSP0_OR_SSP1_IRQHandler
 468              		.thumb_set M0_SSP0_OR_SSP1_IRQHandler,M0_IntDefaultHandler
 469              		.weak	M0_ADC1_IRQHandler
 470              		.thumb_set M0_ADC1_IRQHandler,M0_IntDefaultHandler
 471              		.weak	M0_SPI_OR_DAC_IRQHandler
 472              		.thumb_set M0_SPI_OR_DAC_IRQHandler,M0_IntDefaultHandler
 473              		.weak	M0_SGPIO_IRQHandler
 474              		.thumb_set M0_SGPIO_IRQHandler,M0_IntDefaultHandler
 475              		.weak	M0_I2C0_OR_I2C1_IRQHandler
 476              		.thumb_set M0_I2C0_OR_I2C1_IRQHandler,M0_IntDefaultHandler
 477              		.weak	M0_ADC0_IRQHandler
 478              		.thumb_set M0_ADC0_IRQHandler,M0_IntDefaultHandler
 479              		.weak	M0_MCPWM_IRQHandler
 480              		.thumb_set M0_MCPWM_IRQHandler,M0_IntDefaultHandler
 481              		.weak	M0_TIMER3_IRQHandler
 482              		.thumb_set M0_TIMER3_IRQHandler,M0_IntDefaultHandler
 483              		.weak	M0_GINT1_IRQHandler
 484              		.thumb_set M0_GINT1_IRQHandler,M0_IntDefaultHandler
 485              		.weak	M0_TIMER0_IRQHandler
 486              		.thumb_set M0_TIMER0_IRQHandler,M0_IntDefaultHandler
 487              		.weak	M0_RIT_OR_WWDT_IRQHandler
 488              		.thumb_set M0_RIT_OR_WWDT_IRQHandler,M0_IntDefaultHandler
 489              		.weak	M0_SCT_IRQHandler
 490              		.thumb_set M0_SCT_IRQHandler,M0_IntDefaultHandler
 491              		.weak	M0_USB1_IRQHandler
 492              		.thumb_set M0_USB1_IRQHandler,M0_IntDefaultHandler
 493              		.weak	M0_USB0_IRQHandler
 494              		.thumb_set M0_USB0_IRQHandler,M0_IntDefaultHandler
 495              		.weak	M0_LCD_IRQHandler
 496              		.thumb_set M0_LCD_IRQHandler,M0_IntDefaultHandler
 497              		.weak	M0_SDIO_IRQHandler
 498              		.thumb_set M0_SDIO_IRQHandler,M0_IntDefaultHandler
 499              		.weak	M0_ETH_IRQHandler
 500              		.thumb_set M0_ETH_IRQHandler,M0_IntDefaultHandler
 501              		.weak	M0_DMA_IRQHandler
 502              		.thumb_set M0_DMA_IRQHandler,M0_IntDefaultHandler
 503              		.weak	M0_M4CORE_IRQHandler
 504              		.thumb_set M0_M4CORE_IRQHandler,M0_IntDefaultHandler
 505              		.weak	M0_RTC_IRQHandler
 506              		.thumb_set M0_RTC_IRQHandler,M0_IntDefaultHandler
 507 00b6 C046     		.text
 508              	.Letext0:
 509              		.file 2 "/usr/local/lpcxpresso_8.2.2_650/lpcxpresso/tools/redlib/include/stdint.h"
 510              		.file 3 "../../common/inc/lpc43xx.h"
DEFINED SYMBOLS
                            *ABS*:00000000 cr_startup_lpc43xx-m0app.c
     /tmp/ccmiBIDv.s:24     .isr_vector:00000000 g_pfnVectors
     /tmp/ccmiBIDv.s:21     .isr_vector:00000000 $d
     /tmp/ccmiBIDv.s:196    .text.ResetISR:00000000 ResetISR
     /tmp/ccmiBIDv.s:302    .after_vectors:00000074 M0_NMI_Handler
     /tmp/ccmiBIDv.s:330    .after_vectors:0000007c M0_HardFault_Handler
     /tmp/ccmiBIDv.s:364    .after_vectors:00000098 M0_SVC_Handler
     /tmp/ccmiBIDv.s:387    .after_vectors:000000a0 M0_PendSV_Handler
     /tmp/ccmiBIDv.s:410    .after_vectors:000000a8 M0_SysTick_Handler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_RTC_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_M4CORE_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_DMA_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_ETH_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_SDIO_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_LCD_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_USB0_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_USB1_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_SCT_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_RIT_OR_WWDT_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_TIMER0_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_GINT1_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_TIMER3_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_MCPWM_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_ADC0_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_I2C0_OR_I2C1_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_SGPIO_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_SPI_OR_DAC_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_ADC1_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_SSP0_OR_SSP1_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_EVENTROUTER_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_USART0_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_USART2_OR_C_CAN1_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_USART3_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_I2S0_OR_I2S1_OR_QEI_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_C_CAN0_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_SPIFI_OR_VADC_IRQHandler
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_M0SUB_IRQHandler
     /tmp/ccmiBIDv.s:74     .after_vectors:00000000 $t
     /tmp/ccmiBIDv.s:79     .after_vectors:00000000 data_init
     /tmp/ccmiBIDv.s:141    .after_vectors:00000040 bss_init
     /tmp/ccmiBIDv.s:191    .text.ResetISR:00000000 $t
     /tmp/ccmiBIDv.s:288    .text.ResetISR:00000078 $d
     /tmp/ccmiBIDv.s:321    .rodata:00000000 $d
     /tmp/ccmiBIDv.s:354    .after_vectors:00000090 $d
     /tmp/ccmiBIDv.s:359    .after_vectors:00000098 $t
     /tmp/ccmiBIDv.s:433    .after_vectors:000000b0 M0_IntDefaultHandler
                     .debug_frame:00000010 $d

UNDEFINED SYMBOLS
_vStackTop
__main
__data_section_table
__data_section_table_end
__bss_section_table_end
UARTPuts
