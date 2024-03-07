;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Thu Mar 07 15:29:38 2024
;--------------------------------------------------------
$name lab5
$optc51 --model-small
$printf_float
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _InitPinADC_PARM_2
	public _main
	public _TIMER0_Init
	public _Volts_at_Pin
	public _ADC_at_Pin
	public _InitPinADC
	public _getsn
	public _LCDprint2
	public _LCDprint
	public _LCD_4BIT
	public _WriteCommand
	public _WriteData
	public _LCD_byte
	public _LCD_pulse
	public _waitms
	public _Timer3us
	public _InitADC
	public __c51_external_startup
	public _LCDprint2_PARM_3
	public _LCDprint_PARM_3
	public _getsn_PARM_2
	public _LCDprint2_PARM_2
	public _LCDprint_PARM_2
	public _overflow_count
	public _GET_ADC
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_ACC            DATA 0xe0
_ADC0ASAH       DATA 0xb6
_ADC0ASAL       DATA 0xb5
_ADC0ASCF       DATA 0xa1
_ADC0ASCT       DATA 0xc7
_ADC0CF0        DATA 0xbc
_ADC0CF1        DATA 0xb9
_ADC0CF2        DATA 0xdf
_ADC0CN0        DATA 0xe8
_ADC0CN1        DATA 0xb2
_ADC0CN2        DATA 0xb3
_ADC0GTH        DATA 0xc4
_ADC0GTL        DATA 0xc3
_ADC0H          DATA 0xbe
_ADC0L          DATA 0xbd
_ADC0LTH        DATA 0xc6
_ADC0LTL        DATA 0xc5
_ADC0MX         DATA 0xbb
_B              DATA 0xf0
_CKCON0         DATA 0x8e
_CKCON1         DATA 0xa6
_CLEN0          DATA 0xc6
_CLIE0          DATA 0xc7
_CLIF0          DATA 0xe8
_CLKSEL         DATA 0xa9
_CLOUT0         DATA 0xd1
_CLU0CF         DATA 0xb1
_CLU0FN         DATA 0xaf
_CLU0MX         DATA 0x84
_CLU1CF         DATA 0xb3
_CLU1FN         DATA 0xb2
_CLU1MX         DATA 0x85
_CLU2CF         DATA 0xb6
_CLU2FN         DATA 0xb5
_CLU2MX         DATA 0x91
_CLU3CF         DATA 0xbf
_CLU3FN         DATA 0xbe
_CLU3MX         DATA 0xae
_CMP0CN0        DATA 0x9b
_CMP0CN1        DATA 0x99
_CMP0MD         DATA 0x9d
_CMP0MX         DATA 0x9f
_CMP1CN0        DATA 0xbf
_CMP1CN1        DATA 0xac
_CMP1MD         DATA 0xab
_CMP1MX         DATA 0xaa
_CRC0CN0        DATA 0xce
_CRC0CN1        DATA 0x86
_CRC0CNT        DATA 0xd3
_CRC0DAT        DATA 0xcb
_CRC0FLIP       DATA 0xcf
_CRC0IN         DATA 0xca
_CRC0ST         DATA 0xd2
_DAC0CF0        DATA 0x91
_DAC0CF1        DATA 0x92
_DAC0H          DATA 0x85
_DAC0L          DATA 0x84
_DAC1CF0        DATA 0x93
_DAC1CF1        DATA 0x94
_DAC1H          DATA 0x8a
_DAC1L          DATA 0x89
_DAC2CF0        DATA 0x95
_DAC2CF1        DATA 0x96
_DAC2H          DATA 0x8c
_DAC2L          DATA 0x8b
_DAC3CF0        DATA 0x9a
_DAC3CF1        DATA 0x9c
_DAC3H          DATA 0x8e
_DAC3L          DATA 0x8d
_DACGCF0        DATA 0x88
_DACGCF1        DATA 0x98
_DACGCF2        DATA 0xa2
_DERIVID        DATA 0xad
_DEVICEID       DATA 0xb5
_DPH            DATA 0x83
_DPL            DATA 0x82
_EIE1           DATA 0xe6
_EIE2           DATA 0xf3
_EIP1           DATA 0xbb
_EIP1H          DATA 0xee
_EIP2           DATA 0xed
_EIP2H          DATA 0xf6
_EMI0CN         DATA 0xe7
_FLKEY          DATA 0xb7
_HFO0CAL        DATA 0xc7
_HFO1CAL        DATA 0xd6
_HFOCN          DATA 0xef
_I2C0ADM        DATA 0xff
_I2C0CN0        DATA 0xba
_I2C0DIN        DATA 0xbc
_I2C0DOUT       DATA 0xbb
_I2C0FCN0       DATA 0xad
_I2C0FCN1       DATA 0xab
_I2C0FCT        DATA 0xf5
_I2C0SLAD       DATA 0xbd
_I2C0STAT       DATA 0xb9
_IE             DATA 0xa8
_IP             DATA 0xb8
_IPH            DATA 0xf2
_IT01CF         DATA 0xe4
_LFO0CN         DATA 0xb1
_P0             DATA 0x80
_P0MASK         DATA 0xfe
_P0MAT          DATA 0xfd
_P0MDIN         DATA 0xf1
_P0MDOUT        DATA 0xa4
_P0SKIP         DATA 0xd4
_P1             DATA 0x90
_P1MASK         DATA 0xee
_P1MAT          DATA 0xed
_P1MDIN         DATA 0xf2
_P1MDOUT        DATA 0xa5
_P1SKIP         DATA 0xd5
_P2             DATA 0xa0
_P2MASK         DATA 0xfc
_P2MAT          DATA 0xfb
_P2MDIN         DATA 0xf3
_P2MDOUT        DATA 0xa6
_P2SKIP         DATA 0xcc
_P3             DATA 0xb0
_P3MDIN         DATA 0xf4
_P3MDOUT        DATA 0x9c
_PCA0CENT       DATA 0x9e
_PCA0CLR        DATA 0x9c
_PCA0CN0        DATA 0xd8
_PCA0CPH0       DATA 0xfc
_PCA0CPH1       DATA 0xea
_PCA0CPH2       DATA 0xec
_PCA0CPH3       DATA 0xf5
_PCA0CPH4       DATA 0x85
_PCA0CPH5       DATA 0xde
_PCA0CPL0       DATA 0xfb
_PCA0CPL1       DATA 0xe9
_PCA0CPL2       DATA 0xeb
_PCA0CPL3       DATA 0xf4
_PCA0CPL4       DATA 0x84
_PCA0CPL5       DATA 0xdd
_PCA0CPM0       DATA 0xda
_PCA0CPM1       DATA 0xdb
_PCA0CPM2       DATA 0xdc
_PCA0CPM3       DATA 0xae
_PCA0CPM4       DATA 0xaf
_PCA0CPM5       DATA 0xcc
_PCA0H          DATA 0xfa
_PCA0L          DATA 0xf9
_PCA0MD         DATA 0xd9
_PCA0POL        DATA 0x96
_PCA0PWM        DATA 0xf7
_PCON0          DATA 0x87
_PCON1          DATA 0xcd
_PFE0CN         DATA 0xc1
_PRTDRV         DATA 0xf6
_PSCTL          DATA 0x8f
_PSTAT0         DATA 0xaa
_PSW            DATA 0xd0
_REF0CN         DATA 0xd1
_REG0CN         DATA 0xc9
_REVID          DATA 0xb6
_RSTSRC         DATA 0xef
_SBCON1         DATA 0x94
_SBRLH1         DATA 0x96
_SBRLL1         DATA 0x95
_SBUF           DATA 0x99
_SBUF0          DATA 0x99
_SBUF1          DATA 0x92
_SCON           DATA 0x98
_SCON0          DATA 0x98
_SCON1          DATA 0xc8
_SFRPAGE        DATA 0xa7
_SFRPGCN        DATA 0xbc
_SFRSTACK       DATA 0xd7
_SMB0ADM        DATA 0xd6
_SMB0ADR        DATA 0xd7
_SMB0CF         DATA 0xc1
_SMB0CN0        DATA 0xc0
_SMB0DAT        DATA 0xc2
_SMB0FCN0       DATA 0xc3
_SMB0FCN1       DATA 0xc4
_SMB0FCT        DATA 0xef
_SMB0RXLN       DATA 0xc5
_SMB0TC         DATA 0xac
_SMOD1          DATA 0x93
_SP             DATA 0x81
_SPI0CFG        DATA 0xa1
_SPI0CKR        DATA 0xa2
_SPI0CN0        DATA 0xf8
_SPI0DAT        DATA 0xa3
_SPI0FCN0       DATA 0x9a
_SPI0FCN1       DATA 0x9b
_SPI0FCT        DATA 0xf7
_SPI0PCF        DATA 0xdf
_TCON           DATA 0x88
_TH0            DATA 0x8c
_TH1            DATA 0x8d
_TL0            DATA 0x8a
_TL1            DATA 0x8b
_TMOD           DATA 0x89
_TMR2CN0        DATA 0xc8
_TMR2CN1        DATA 0xfd
_TMR2H          DATA 0xcf
_TMR2L          DATA 0xce
_TMR2RLH        DATA 0xcb
_TMR2RLL        DATA 0xca
_TMR3CN0        DATA 0x91
_TMR3CN1        DATA 0xfe
_TMR3H          DATA 0x95
_TMR3L          DATA 0x94
_TMR3RLH        DATA 0x93
_TMR3RLL        DATA 0x92
_TMR4CN0        DATA 0x98
_TMR4CN1        DATA 0xff
_TMR4H          DATA 0xa5
_TMR4L          DATA 0xa4
_TMR4RLH        DATA 0xa3
_TMR4RLL        DATA 0xa2
_TMR5CN0        DATA 0xc0
_TMR5CN1        DATA 0xf1
_TMR5H          DATA 0xd5
_TMR5L          DATA 0xd4
_TMR5RLH        DATA 0xd3
_TMR5RLL        DATA 0xd2
_UART0PCF       DATA 0xd9
_UART1FCN0      DATA 0x9d
_UART1FCN1      DATA 0xd8
_UART1FCT       DATA 0xfa
_UART1LIN       DATA 0x9e
_UART1PCF       DATA 0xda
_VDM0CN         DATA 0xff
_WDTCN          DATA 0x97
_XBR0           DATA 0xe1
_XBR1           DATA 0xe2
_XBR2           DATA 0xe3
_XOSC0CN        DATA 0x86
_DPTR           DATA 0x8382
_TMR2RL         DATA 0xcbca
_TMR3RL         DATA 0x9392
_TMR4RL         DATA 0xa3a2
_TMR5RL         DATA 0xd3d2
_TMR0           DATA 0x8c8a
_TMR1           DATA 0x8d8b
_TMR2           DATA 0xcfce
_TMR3           DATA 0x9594
_TMR4           DATA 0xa5a4
_TMR5           DATA 0xd5d4
_SBRL1          DATA 0x9695
_PCA0           DATA 0xfaf9
_PCA0CP0        DATA 0xfcfb
_PCA0CP1        DATA 0xeae9
_PCA0CP2        DATA 0xeceb
_PCA0CP3        DATA 0xf5f4
_PCA0CP4        DATA 0x8584
_PCA0CP5        DATA 0xdedd
_ADC0ASA        DATA 0xb6b5
_ADC0GT         DATA 0xc4c3
_ADC0           DATA 0xbebd
_ADC0LT         DATA 0xc6c5
_DAC0           DATA 0x8584
_DAC1           DATA 0x8a89
_DAC2           DATA 0x8c8b
_DAC3           DATA 0x8e8d
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_ACC_0          BIT 0xe0
_ACC_1          BIT 0xe1
_ACC_2          BIT 0xe2
_ACC_3          BIT 0xe3
_ACC_4          BIT 0xe4
_ACC_5          BIT 0xe5
_ACC_6          BIT 0xe6
_ACC_7          BIT 0xe7
_TEMPE          BIT 0xe8
_ADGN0          BIT 0xe9
_ADGN1          BIT 0xea
_ADWINT         BIT 0xeb
_ADBUSY         BIT 0xec
_ADINT          BIT 0xed
_IPOEN          BIT 0xee
_ADEN           BIT 0xef
_B_0            BIT 0xf0
_B_1            BIT 0xf1
_B_2            BIT 0xf2
_B_3            BIT 0xf3
_B_4            BIT 0xf4
_B_5            BIT 0xf5
_B_6            BIT 0xf6
_B_7            BIT 0xf7
_C0FIF          BIT 0xe8
_C0RIF          BIT 0xe9
_C1FIF          BIT 0xea
_C1RIF          BIT 0xeb
_C2FIF          BIT 0xec
_C2RIF          BIT 0xed
_C3FIF          BIT 0xee
_C3RIF          BIT 0xef
_D1SRC0         BIT 0x88
_D1SRC1         BIT 0x89
_D1AMEN         BIT 0x8a
_D01REFSL       BIT 0x8b
_D3SRC0         BIT 0x8c
_D3SRC1         BIT 0x8d
_D3AMEN         BIT 0x8e
_D23REFSL       BIT 0x8f
_D0UDIS         BIT 0x98
_D1UDIS         BIT 0x99
_D2UDIS         BIT 0x9a
_D3UDIS         BIT 0x9b
_EX0            BIT 0xa8
_ET0            BIT 0xa9
_EX1            BIT 0xaa
_ET1            BIT 0xab
_ES0            BIT 0xac
_ET2            BIT 0xad
_ESPI0          BIT 0xae
_EA             BIT 0xaf
_PX0            BIT 0xb8
_PT0            BIT 0xb9
_PX1            BIT 0xba
_PT1            BIT 0xbb
_PS0            BIT 0xbc
_PT2            BIT 0xbd
_PSPI0          BIT 0xbe
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_7           BIT 0xb7
_CCF0           BIT 0xd8
_CCF1           BIT 0xd9
_CCF2           BIT 0xda
_CCF3           BIT 0xdb
_CCF4           BIT 0xdc
_CCF5           BIT 0xdd
_CR             BIT 0xde
_CF             BIT 0xdf
_PARITY         BIT 0xd0
_F1             BIT 0xd1
_OV             BIT 0xd2
_RS0            BIT 0xd3
_RS1            BIT 0xd4
_F0             BIT 0xd5
_AC             BIT 0xd6
_CY             BIT 0xd7
_RI             BIT 0x98
_TI             BIT 0x99
_RB8            BIT 0x9a
_TB8            BIT 0x9b
_REN            BIT 0x9c
_CE             BIT 0x9d
_SMODE          BIT 0x9e
_RI1            BIT 0xc8
_TI1            BIT 0xc9
_RBX1           BIT 0xca
_TBX1           BIT 0xcb
_REN1           BIT 0xcc
_PERR1          BIT 0xcd
_OVR1           BIT 0xce
_SI             BIT 0xc0
_ACK            BIT 0xc1
_ARBLOST        BIT 0xc2
_ACKRQ          BIT 0xc3
_STO            BIT 0xc4
_STA            BIT 0xc5
_TXMODE         BIT 0xc6
_MASTER         BIT 0xc7
_SPIEN          BIT 0xf8
_TXNF           BIT 0xf9
_NSSMD0         BIT 0xfa
_NSSMD1         BIT 0xfb
_RXOVRN         BIT 0xfc
_MODF           BIT 0xfd
_WCOL           BIT 0xfe
_SPIF           BIT 0xff
_IT0            BIT 0x88
_IE0            BIT 0x89
_IT1            BIT 0x8a
_IE1            BIT 0x8b
_TR0            BIT 0x8c
_TF0            BIT 0x8d
_TR1            BIT 0x8e
_TF1            BIT 0x8f
_T2XCLK0        BIT 0xc8
_T2XCLK1        BIT 0xc9
_TR2            BIT 0xca
_T2SPLIT        BIT 0xcb
_TF2CEN         BIT 0xcc
_TF2LEN         BIT 0xcd
_TF2L           BIT 0xce
_TF2H           BIT 0xcf
_T4XCLK0        BIT 0x98
_T4XCLK1        BIT 0x99
_TR4            BIT 0x9a
_T4SPLIT        BIT 0x9b
_TF4CEN         BIT 0x9c
_TF4LEN         BIT 0x9d
_TF4L           BIT 0x9e
_TF4H           BIT 0x9f
_T5XCLK0        BIT 0xc0
_T5XCLK1        BIT 0xc1
_TR5            BIT 0xc2
_T5SPLIT        BIT 0xc3
_TF5CEN         BIT 0xc4
_TF5LEN         BIT 0xc5
_TF5L           BIT 0xc6
_TF5H           BIT 0xc7
_RIE            BIT 0xd8
_RXTO0          BIT 0xd9
_RXTO1          BIT 0xda
_RFRQ           BIT 0xdb
_TIE            BIT 0xdc
_TXHOLD         BIT 0xdd
_TXNF1          BIT 0xde
_TFRQ           BIT 0xdf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_overflow_count:
	ds 1
_LCDprint_PARM_2:
	ds 1
_LCDprint2_PARM_2:
	ds 1
_getsn_PARM_2:
	ds 2
_getsn_buff_1_88:
	ds 3
_getsn_sloc0_1_0:
	ds 2
_main_period_1_105:
	ds 4
_main_signal_period_1_105:
	ds 4
_main_noise_filter_1_105:
	ds 4
_main_max_distance_1_105:
	ds 4
_main_signal_max_distance_1_105:
	ds 4
_main_signal_peak_value_1_105:
	ds 4
_main_print_signal_peak_1_105:
	ds 4
_main_peak_value_1_105:
	ds 4
_main_print_phase_1_105:
	ds 4
_main_print_measured_frequency_1_105:
	ds 4
_main_print_ref_amplitude_1_105:
	ds 4
_main_print_ref_frequency_1_105:
	ds 4
_main_i_1_105:
	ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
_InitPinADC_PARM_2:
	ds 1
	rseg	R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
_LCDprint_PARM_3:
	DBIT	1
_LCDprint2_PARM_3:
	DBIT	1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
_main_buffer1_1_105:
	ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Reset entry point and interrupt vectors
;--------------------------------------------------------
	CSEG at 0x0000
	ljmp	_crt0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:28: unsigned char overflow_count = 0; // Change was made to overflow_count, and is now global
	mov	_overflow_count,#0x00
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:36: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:39: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:40: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:41: WDTCN = 0xAD; //4Second key
	mov	_WDTCN,#0xAD
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:43: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:44: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:51: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:52: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:53: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:74: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:75: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:76: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:77: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:78: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:79: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:84: P0MDOUT |= 0x10; // Enable UART0 TX as push-pull output
	orl	_P0MDOUT,#0x10
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:85: XBR0     = 0x01; // Enable UART0 on P0.4(TX) and P0.5(RX)                     
	mov	_XBR0,#0x01
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:86: XBR1     = 0X00;
	mov	_XBR1,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:87: XBR2     = 0x40; // Enable crossbar and weak pull-ups
	mov	_XBR2,#0x40
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:93: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:94: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:95: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:96: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:97: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:98: TR1 = 1; // START Timer1
	setb	_TR1
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:99: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:101: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:104: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:106: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:107: ADEN=0; // Disable ADC
	clr	_ADEN
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:112: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:116: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:120: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:129: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:134: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:138: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:140: ADEN=1; // Enable ADC
	setb	_ADEN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:144: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:149: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:151: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:152: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:154: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:155: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L004004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L004007?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:157: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L004001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L004001?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:158: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:155: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L004004?
L004007?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:160: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:163: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:167: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L005005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L005009?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:168: for (k=0; k<4; k++) Timer3us(250);
	mov	r6,#0x00
L005001?:
	cjne	r6,#0x04,L005018?
L005018?:
	jnc	L005007?
	mov	dpl,#0xFA
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_Timer3us
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r6
	sjmp	L005001?
L005007?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:167: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L005005?
	inc	r5
	sjmp	L005005?
L005009?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_pulse'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:171: void LCD_pulse (void)
;	-----------------------------------------
;	 function LCD_pulse
;	-----------------------------------------
_LCD_pulse:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:173: LCD_E=1;
	setb	_P2_0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:174: Timer3us(40);
	mov	dpl,#0x28
	lcall	_Timer3us
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:175: LCD_E=0;
	clr	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_byte'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:178: void LCD_byte (unsigned char x)
;	-----------------------------------------
;	 function LCD_byte
;	-----------------------------------------
_LCD_byte:
	mov	r2,dpl
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:181: ACC=x; //Send high nible
	mov	_ACC,r2
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:182: LCD_D7=ACC_7;
	mov	c,_ACC_7
	mov	_P1_0,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:183: LCD_D6=ACC_6;
	mov	c,_ACC_6
	mov	_P1_1,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:184: LCD_D5=ACC_5;
	mov	c,_ACC_5
	mov	_P1_2,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:185: LCD_D4=ACC_4;
	mov	c,_ACC_4
	mov	_P1_3,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:186: LCD_pulse();
	push	ar2
	lcall	_LCD_pulse
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:187: Timer3us(40);
	mov	dpl,#0x28
	lcall	_Timer3us
	pop	ar2
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:188: ACC=x; //Send low nible
	mov	_ACC,r2
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:189: LCD_D7=ACC_3;
	mov	c,_ACC_3
	mov	_P1_0,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:190: LCD_D6=ACC_2;
	mov	c,_ACC_2
	mov	_P1_1,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:191: LCD_D5=ACC_1;
	mov	c,_ACC_1
	mov	_P1_2,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:192: LCD_D4=ACC_0;
	mov	c,_ACC_0
	mov	_P1_3,c
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:193: LCD_pulse();
	ljmp	_LCD_pulse
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteData'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:196: void WriteData (unsigned char x)
;	-----------------------------------------
;	 function WriteData
;	-----------------------------------------
_WriteData:
	mov	r2,dpl
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:198: LCD_RS=1;
	setb	_P1_7
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:199: LCD_byte(x);
	mov	dpl,r2
	lcall	_LCD_byte
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:200: waitms(2);
	mov	dptr,#0x0002
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteCommand'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:203: void WriteCommand (unsigned char x)
;	-----------------------------------------
;	 function WriteCommand
;	-----------------------------------------
_WriteCommand:
	mov	r2,dpl
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:205: LCD_RS=0;
	clr	_P1_7
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:206: LCD_byte(x);
	mov	dpl,r2
	lcall	_LCD_byte
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:207: waitms(5);
	mov	dptr,#0x0005
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_4BIT'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:210: void LCD_4BIT (void)
;	-----------------------------------------
;	 function LCD_4BIT
;	-----------------------------------------
_LCD_4BIT:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:212: LCD_E=0; // Resting state of LCD's enable is zero
	clr	_P2_0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:214: waitms(20);
	mov	dptr,#0x0014
	lcall	_waitms
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:216: WriteCommand(0x33);
	mov	dpl,#0x33
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:217: WriteCommand(0x33);
	mov	dpl,#0x33
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:218: WriteCommand(0x32); // Change to 4-bit mode
	mov	dpl,#0x32
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:221: WriteCommand(0x28);
	mov	dpl,#0x28
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:222: WriteCommand(0x0c);
	mov	dpl,#0x0C
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:223: WriteCommand(0x01); // Clear screen command (takes some time)
	mov	dpl,#0x01
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:224: waitms(20); // Wait for clear screen command to finsih.
	mov	dptr,#0x0014
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDprint'
;------------------------------------------------------------
;line                      Allocated with name '_LCDprint_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:227: void LCDprint(char * string, unsigned char line, bit clear)
;	-----------------------------------------
;	 function LCDprint
;	-----------------------------------------
_LCDprint:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:231: WriteCommand(line==2?0xc0:0x80);
	mov	a,#0x02
	cjne	a,_LCDprint_PARM_2,L011013?
	mov	r5,#0xC0
	sjmp	L011014?
L011013?:
	mov	r5,#0x80
L011014?:
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:232: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:233: for(j=0; string[j]!=0; j++)	WriteData(string[j]);// Write the message
	mov	r5,#0x00
	mov	r6,#0x00
L011003?:
	mov	a,r5
	add	a,r2
	mov	r7,a
	mov	a,r6
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	jz	L011006?
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_WriteData
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r5
	cjne	r5,#0x00,L011003?
	inc	r6
	sjmp	L011003?
L011006?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:234: if(clear) for(; j<CHARS_PER_LINE; j++) WriteData(' '); // Clear the rest of the line
	jnb	_LCDprint_PARM_3,L011011?
	mov	ar2,r5
	mov	ar3,r6
L011007?:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L011011?
	mov	dpl,#0x20
	push	ar2
	push	ar3
	lcall	_WriteData
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,L011007?
	inc	r3
	sjmp	L011007?
L011011?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDprint2'
;------------------------------------------------------------
;line                      Allocated with name '_LCDprint2_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:237: void LCDprint2(char * string, unsigned char line, bit clear)
;	-----------------------------------------
;	 function LCDprint2
;	-----------------------------------------
_LCDprint2:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:241: WriteCommand(line==2?0xc0:0x80);
	mov	a,#0x02
	cjne	a,_LCDprint2_PARM_2,L012013?
	mov	r5,#0xC0
	sjmp	L012014?
L012013?:
	mov	r5,#0x80
L012014?:
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_WriteCommand
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:242: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:243: for(j=0; string[j]!=0; j++)	WriteData(string[j]);// Write the message
	mov	r5,#0x00
	mov	r6,#0x00
L012003?:
	mov	a,r5
	add	a,r2
	mov	r7,a
	mov	a,r6
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	jz	L012006?
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_WriteData
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r5
	cjne	r5,#0x00,L012003?
	inc	r6
	sjmp	L012003?
L012006?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:244: if(clear) for(; j<CHARS_PER_LINE; j++) WriteData(' '); // Clear the rest of the line
	jnb	_LCDprint2_PARM_3,L012011?
	mov	ar2,r5
	mov	ar3,r6
L012007?:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L012011?
	mov	dpl,#0x20
	push	ar2
	push	ar3
	lcall	_WriteData
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,L012007?
	inc	r3
	sjmp	L012007?
L012011?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getsn'
;------------------------------------------------------------
;len                       Allocated with name '_getsn_PARM_2'
;buff                      Allocated with name '_getsn_buff_1_88'
;j                         Allocated with name '_getsn_sloc0_1_0'
;c                         Allocated to registers r3 
;sloc0                     Allocated with name '_getsn_sloc0_1_0'
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:247: int getsn (char * buff, int len)
;	-----------------------------------------
;	 function getsn
;	-----------------------------------------
_getsn:
	mov	_getsn_buff_1_88,dpl
	mov	(_getsn_buff_1_88 + 1),dph
	mov	(_getsn_buff_1_88 + 2),b
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:252: for(j=0; j<(len-1); j++)
	clr	a
	mov	_getsn_sloc0_1_0,a
	mov	(_getsn_sloc0_1_0 + 1),a
	mov	a,_getsn_PARM_2
	add	a,#0xff
	mov	r7,a
	mov	a,(_getsn_PARM_2 + 1)
	addc	a,#0xff
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
L013005?:
	clr	c
	mov	a,r1
	subb	a,r7
	mov	a,r2
	xrl	a,#0x80
	mov	b,r0
	xrl	b,#0x80
	subb	a,b
	jnc	L013008?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:254: c=getchar();
	push	ar2
	push	ar7
	push	ar0
	push	ar1
	lcall	_getchar
	mov	r3,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar2
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:255: if ( (c=='\n') || (c=='\r') )
	cjne	r3,#0x0A,L013015?
	sjmp	L013001?
L013015?:
	cjne	r3,#0x0D,L013002?
L013001?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:257: buff[j]=0;
	mov	a,_getsn_sloc0_1_0
	add	a,_getsn_buff_1_88
	mov	r4,a
	mov	a,(_getsn_sloc0_1_0 + 1)
	addc	a,(_getsn_buff_1_88 + 1)
	mov	r5,a
	mov	r6,(_getsn_buff_1_88 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:258: return j;
	mov	dpl,_getsn_sloc0_1_0
	mov	dph,(_getsn_sloc0_1_0 + 1)
	ret
L013002?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:262: buff[j]=c;
	mov	a,r1
	add	a,_getsn_buff_1_88
	mov	r4,a
	mov	a,r2
	addc	a,(_getsn_buff_1_88 + 1)
	mov	r5,a
	mov	r6,(_getsn_buff_1_88 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:252: for(j=0; j<(len-1); j++)
	inc	r1
	cjne	r1,#0x00,L013018?
	inc	r2
L013018?:
	mov	_getsn_sloc0_1_0,r1
	mov	(_getsn_sloc0_1_0 + 1),r2
	sjmp	L013005?
L013008?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:265: buff[j]=0;
	mov	a,_getsn_sloc0_1_0
	add	a,_getsn_buff_1_88
	mov	r2,a
	mov	a,(_getsn_sloc0_1_0 + 1)
	addc	a,(_getsn_buff_1_88 + 1)
	mov	r3,a
	mov	r4,(_getsn_buff_1_88 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:266: return len;
	mov	dpl,_getsn_PARM_2
	mov	dph,(_getsn_PARM_2 + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pinno                     Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:270: void InitPinADC (unsigned char portno, unsigned char pinno) {
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:273: mask=1<<pinno;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L014013?
L014011?:
	add	a,acc
L014013?:
	djnz	b,L014011?
	mov	r3,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:275: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:276: switch (portno)
	cjne	r2,#0x00,L014014?
	sjmp	L014001?
L014014?:
	cjne	r2,#0x01,L014015?
	sjmp	L014002?
L014015?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:278: case 0:
	cjne	r2,#0x02,L014005?
	sjmp	L014003?
L014001?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:279: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P0MDIN,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:280: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:281: break;
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:282: case 1:
	sjmp	L014005?
L014002?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:283: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P1MDIN,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:284: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:285: break;
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:286: case 2:
	sjmp	L014005?
L014003?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:287: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P2MDIN,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:288: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:292: }
L014005?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:293: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:296: unsigned int ADC_at_Pin(unsigned char pin) {
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_ADC0MX,dpl
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:298: ADINT = 0;
	clr	_ADINT
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:299: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:300: while (!ADINT); // Wait for conversion to complete
L015001?:
	jnb	_ADINT,L015001?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:301: return (ADC0);
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Volts_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:304: float Volts_at_Pin(unsigned char pin) {
;	-----------------------------------------
;	 function Volts_at_Pin
;	-----------------------------------------
_Volts_at_Pin:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:305: return ((ADC_at_Pin(pin)*VDD)/0b_0011_1111_1111_1111);
	lcall	_ADC_at_Pin
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x6C8B
	mov	b,#0x53
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	mov	a,#0xFC
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GET_ADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:309: unsigned int GET_ADC (void) {
;	-----------------------------------------
;	 function GET_ADC
;	-----------------------------------------
_GET_ADC:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:310: ADINT = 0;
	clr	_ADINT
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:311: ADBUSY = 1;
	setb	_ADBUSY
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:312: while (!ADINT); // Wait for conversion to complete
L017001?:
	jnb	_ADINT,L017001?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:313: return (ADC0);
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:316: void TIMER0_Init(void)
;	-----------------------------------------
;	 function TIMER0_Init
;	-----------------------------------------
_TIMER0_Init:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:318: TMOD&=0b_1111_0000; // Set the bits of Timer/Counter 0 to zero
	anl	_TMOD,#0xF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:319: TMOD|=0b_0000_0001; // Timer/Counter 0 used as a 16-bit timer
	orl	_TMOD,#0x01
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:320: TR0=0; // Stop Timer/Counter 0
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;period                    Allocated with name '_main_period_1_105'
;signal_period             Allocated with name '_main_signal_period_1_105'
;noise_filter              Allocated with name '_main_noise_filter_1_105'
;max_distance              Allocated with name '_main_max_distance_1_105'
;signal_max_distance       Allocated with name '_main_signal_max_distance_1_105'
;signal_peak_value         Allocated with name '_main_signal_peak_value_1_105'
;print_signal_peak         Allocated with name '_main_print_signal_peak_1_105'
;peak_value                Allocated with name '_main_peak_value_1_105'
;period_ref                Allocated to registers 
;signal_period_ref         Allocated to registers 
;halfperiod_ref            Allocated to registers 
;quarter_period            Allocated to registers 
;time_diff                 Allocated to registers r2 r3 r4 r5 
;phase_diff                Allocated to registers r2 r3 r4 r5 
;print_phase               Allocated with name '_main_print_phase_1_105'
;temp_volts                Allocated to registers r2 r3 r4 r5 
;print_measured_frequency  Allocated with name '_main_print_measured_frequency_1_105'
;print_ref_amplitude       Allocated with name '_main_print_ref_amplitude_1_105'
;print_ref_frequency       Allocated with name '_main_print_ref_frequency_1_105'
;i                         Allocated with name '_main_i_1_105'
;buffer1                   Allocated with name '_main_buffer1_1_105'
;------------------------------------------------------------
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:323: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:328: float noise_filter = 0;
	mov	_main_noise_filter_1_105,#0x00
	mov	(_main_noise_filter_1_105 + 1),#0x00
	mov	(_main_noise_filter_1_105 + 2),#0x00
	mov	(_main_noise_filter_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:329: float max_distance = 0;
	mov	_main_max_distance_1_105,#0x00
	mov	(_main_max_distance_1_105 + 1),#0x00
	mov	(_main_max_distance_1_105 + 2),#0x00
	mov	(_main_max_distance_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:330: float signal_max_distance = 0;
	mov	_main_signal_max_distance_1_105,#0x00
	mov	(_main_signal_max_distance_1_105 + 1),#0x00
	mov	(_main_signal_max_distance_1_105 + 2),#0x00
	mov	(_main_signal_max_distance_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:331: float signal_peak_value = 0;
	mov	_main_signal_peak_value_1_105,#0x00
	mov	(_main_signal_peak_value_1_105 + 1),#0x00
	mov	(_main_signal_peak_value_1_105 + 2),#0x00
	mov	(_main_signal_peak_value_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:332: float print_signal_peak = 0;
	mov	_main_print_signal_peak_1_105,#0x00
	mov	(_main_print_signal_peak_1_105 + 1),#0x00
	mov	(_main_print_signal_peak_1_105 + 2),#0x00
	mov	(_main_print_signal_peak_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:335: float peak_value = 0;
	mov	_main_peak_value_1_105,#0x00
	mov	(_main_peak_value_1_105 + 1),#0x00
	mov	(_main_peak_value_1_105 + 2),#0x00
	mov	(_main_peak_value_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:344: float print_measured_frequency = 0;
	mov	_main_print_measured_frequency_1_105,#0x00
	mov	(_main_print_measured_frequency_1_105 + 1),#0x00
	mov	(_main_print_measured_frequency_1_105 + 2),#0x00
	mov	(_main_print_measured_frequency_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:345: float print_ref_amplitude = 0;
	mov	_main_print_ref_amplitude_1_105,#0x00
	mov	(_main_print_ref_amplitude_1_105 + 1),#0x00
	mov	(_main_print_ref_amplitude_1_105 + 2),#0x00
	mov	(_main_print_ref_amplitude_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:346: float print_ref_frequency = 0;
	mov	_main_print_ref_frequency_1_105,#0x00
	mov	(_main_print_ref_frequency_1_105 + 1),#0x00
	mov	(_main_print_ref_frequency_1_105 + 2),#0x00
	mov	(_main_print_ref_frequency_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:353: waitms(500); // Give PuTTy a chance to start before sending
	mov	dptr,#0x01F4
	lcall	_waitms
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:354: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:359: __FILE__, __DATE__, __TIME__);
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:358: "Compiled: %s, %s\n\n",
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:362: InitPinADC(2, 2); // Configure P2.2 as analog i
	mov	_InitPinADC_PARM_2,#0x02
	mov	dpl,#0x02
	lcall	_InitPinADC
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:364: InitPinADC(2, 6); // Configure P2.4 as analog input
	mov	_InitPinADC_PARM_2,#0x06
	mov	dpl,#0x02
	lcall	_InitPinADC
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:365: InitADC();
	lcall	_InitADC
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:366: TIMER0_Init();
	lcall	_TIMER0_Init
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:367: LCD_4BIT();
	lcall	_LCD_4BIT
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:371: for (i = 0; i < 2; i++) {
L019139?:
	clr	a
	mov	_main_i_1_105,a
	mov	(_main_i_1_105 + 1),a
L019115?:
	clr	c
	mov	a,_main_i_1_105
	subb	a,#0x02
	mov	a,(_main_i_1_105 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L019188?
	ljmp	L019118?
L019188?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:372: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:373: TH0=0; TL0=0; // Reset the timer
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:374: TF0 = 0; overflow_count = 0;
	clr	_TF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:375: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:376: while (P2_1 == 1); // Wait for the signal to be zero
L019001?:
	jb	_P2_1,L019001?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:377: while (P2_1 == 0); // Wait for the signal to be one
L019004?:
	jnb	_P2_1,L019004?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:378: TR0=1; // Start timing
	setb	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:379: Timer3us(100);
	mov	dpl,#0x64
	lcall	_Timer3us
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:380: while (P2_1 == 1) {
L019009?:
	jnb	_P2_1,L019011?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:381: if(TF0 == 1) {
	jnb	_TF0,L019009?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:382: overflow_count++;
	inc	_overflow_count
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:383: TF0 = 0;
	clr	_TF0
	sjmp	L019009?
L019011?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:386: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:388: period=((overflow_count * 65536.0 + TH0 * 256.0 + TL0)* (12.0 / SYSCLK));
	mov	dpl,_overflow_count
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	_main_period_1_105,dpl
	mov	(_main_period_1_105 + 1),dph
	mov	(_main_period_1_105 + 2),b
	mov	(_main_period_1_105 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:390: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:391: TH0=0; TL0=0; // Reset the timer
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:392: TF0 = 0; overflow_count = 0;
	clr	_TF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:393: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:394: while (P2_1 == 1); // Wait for the signal to be zero
L019012?:
	jb	_P2_1,L019012?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:395: while (P2_1 == 0); // Wait for the signal to be one
L019015?:
	jnb	_P2_1,L019015?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:396: TR0=1; // Start timing
	setb	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:397: Timer3us(10);
	mov	dpl,#0x0A
	lcall	_Timer3us
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:398: while (P2_1 == 1){
L019020?:
	jnb	_P2_1,L019022?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:399: if(TF0 == 1){
	jnb	_TF0,L019020?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:400: overflow_count++;
	inc	_overflow_count
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:401: TF0 = 0;
	clr	_TF0
	sjmp	L019020?
L019022?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:405: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:409: noise_filter=((overflow_count * 65536.0 + TH0 * 256.0 + TL0)* (12.0 / SYSCLK));
	mov	dpl,_overflow_count
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	_main_noise_filter_1_105,dpl
	mov	(_main_noise_filter_1_105 + 1),dph
	mov	(_main_noise_filter_1_105 + 2),b
	mov	(_main_noise_filter_1_105 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:411: if(fabsf( (1.0/(2.0*noise_filter)) - (1.0/(2.0*period))) > max_distance){
	push	_main_noise_filter_1_105
	push	(_main_noise_filter_1_105 + 1)
	push	(_main_noise_filter_1_105 + 2)
	push	(_main_noise_filter_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	_main_period_1_105
	push	(_main_period_1_105 + 1)
	push	(_main_period_1_105 + 2)
	push	(_main_period_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	_main_max_distance_1_105
	push	(_main_max_distance_1_105 + 1)
	push	(_main_max_distance_1_105 + 2)
	push	(_main_max_distance_1_105 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,r2
	jz	L019117?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:412: max_distance = fabsf( (1.0/(2.0*noise_filter)) - (1.0/(2.0*period)));
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	_main_noise_filter_1_105
	push	(_main_noise_filter_1_105 + 1)
	push	(_main_noise_filter_1_105 + 2)
	push	(_main_noise_filter_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_fabsf
	mov	_main_max_distance_1_105,dpl
	mov	(_main_max_distance_1_105 + 1),dph
	mov	(_main_max_distance_1_105 + 2),b
	mov	(_main_max_distance_1_105 + 3),a
L019117?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:371: for (i = 0; i < 2; i++) {
	inc	_main_i_1_105
	clr	a
	cjne	a,_main_i_1_105,L019198?
	inc	(_main_i_1_105 + 1)
L019198?:
	ljmp	L019115?
L019118?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:420: if(max_distance < 8000){
	clr	a
	push	acc
	push	acc
	mov	a,#0xFA
	push	acc
	mov	a,#0x45
	push	acc
	mov	dpl,_main_max_distance_1_105
	mov	dph,(_main_max_distance_1_105 + 1)
	mov	b,(_main_max_distance_1_105 + 2)
	mov	a,(_main_max_distance_1_105 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L019026?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:424: waitms(400);
	mov	dptr,#0x0190
	lcall	_waitms
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:425: print_ref_frequency = 1.0/(2.0*noise_filter);
	push	_main_noise_filter_1_105
	push	(_main_noise_filter_1_105 + 1)
	push	(_main_noise_filter_1_105 + 2)
	push	(_main_noise_filter_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	_main_print_ref_frequency_1_105,dpl
	mov	(_main_print_ref_frequency_1_105 + 1),dph
	mov	(_main_print_ref_frequency_1_105 + 2),b
	mov	(_main_print_ref_frequency_1_105 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:426: printf("\nReference Frequency:%.5f", print_ref_frequency);
	push	_main_print_ref_frequency_1_105
	push	(_main_print_ref_frequency_1_105 + 1)
	push	(_main_print_ref_frequency_1_105 + 2)
	push	(_main_print_ref_frequency_1_105 + 3)
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	L019027?
L019026?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:428: printf("\nReference Frequency:%.5f", print_ref_frequency);
	push	_main_print_ref_frequency_1_105
	push	(_main_print_ref_frequency_1_105 + 1)
	push	(_main_print_ref_frequency_1_105 + 2)
	push	(_main_print_ref_frequency_1_105 + 3)
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
L019027?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:432: max_distance = 0;
	mov	_main_max_distance_1_105,#0x00
	mov	(_main_max_distance_1_105 + 1),#0x00
	mov	(_main_max_distance_1_105 + 2),#0x00
	mov	(_main_max_distance_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:438: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:439: TH0=0; TL0=0; // Reset the timer
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:440: TF0 = 0; overflow_count = 0;
	clr	_TF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:441: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:442: while (P2_1 == 1); // Wait for the signal to be zero
L019028?:
	jb	_P2_1,L019028?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:443: while (P2_1 == 0); // Wait for the signal to be one
L019031?:
	jnb	_P2_1,L019031?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:444: TR0=1; // Start timing
	setb	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:445: Timer3us(10);
	mov	dpl,#0x0A
	lcall	_Timer3us
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:446: while (P2_1 == 1){
L019038?:
	jnb	_P2_1,L019040?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:447: if(TF0 == 1){
	jnb	_TF0,L019035?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:448: overflow_count++;
	inc	_overflow_count
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:449: TF0 = 0;
	clr	_TF0
L019035?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:451: if(Volts_at_Pin(QFP32_MUX_P2_2) > peak_value) {
	mov	dpl,#0x0F
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	_main_peak_value_1_105
	push	(_main_peak_value_1_105 + 1)
	push	(_main_peak_value_1_105 + 2)
	push	(_main_peak_value_1_105 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L019038?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:452: peak_value = Volts_at_Pin(QFP32_MUX_P2_2);
	mov	dpl,#0x0F
	lcall	_Volts_at_Pin
	mov	_main_peak_value_1_105,dpl
	mov	(_main_peak_value_1_105 + 1),dph
	mov	(_main_peak_value_1_105 + 2),b
	mov	(_main_peak_value_1_105 + 3),a
	sjmp	L019038?
L019040?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:455: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:458: if(peak_value < 0.001){
	mov	a,#0x6F
	push	acc
	mov	a,#0x12
	push	acc
	mov	a,#0x83
	push	acc
	mov	a,#0x3A
	push	acc
	mov	dpl,_main_peak_value_1_105
	mov	dph,(_main_peak_value_1_105 + 1)
	mov	b,(_main_peak_value_1_105 + 2)
	mov	a,(_main_peak_value_1_105 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L019042?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:459: printf("\nReference Amplitude:%.5f", print_ref_amplitude);
	push	_main_print_ref_amplitude_1_105
	push	(_main_print_ref_amplitude_1_105 + 1)
	push	(_main_print_ref_amplitude_1_105 + 2)
	push	(_main_print_ref_amplitude_1_105 + 3)
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	L019043?
L019042?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:461: print_ref_amplitude = peak_value;
	mov	_main_print_ref_amplitude_1_105,_main_peak_value_1_105
	mov	(_main_print_ref_amplitude_1_105 + 1),(_main_peak_value_1_105 + 1)
	mov	(_main_print_ref_amplitude_1_105 + 2),(_main_peak_value_1_105 + 2)
	mov	(_main_print_ref_amplitude_1_105 + 3),(_main_peak_value_1_105 + 3)
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:462: printf("\nReference Amplitude:%.5f", print_ref_amplitude);
	push	_main_peak_value_1_105
	push	(_main_peak_value_1_105 + 1)
	push	(_main_peak_value_1_105 + 2)
	push	(_main_peak_value_1_105 + 3)
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
L019043?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:464: peak_value = 0;
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:473: for (i = 0; i < 2; i++) {
	clr	a
	mov	_main_peak_value_1_105,a
	mov	(_main_peak_value_1_105 + 1),a
	mov	(_main_peak_value_1_105 + 2),a
	mov	(_main_peak_value_1_105 + 3),a
	mov	_main_i_1_105,a
	mov	(_main_i_1_105 + 1),a
L019119?:
	clr	c
	mov	a,_main_i_1_105
	subb	a,#0x02
	mov	a,(_main_i_1_105 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L019206?
	ljmp	L019122?
L019206?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:474: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:475: TH0=0; TL0=0; // Reset the timer
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:476: TF0 = 0; overflow_count = 0;
	clr	_TF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:477: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:478: while (P2_3 == 1); // Wait for the signal to be zero
L019044?:
	jb	_P2_3,L019044?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:479: while (P2_3 == 0); // Wait for the signal to be one
L019047?:
	jnb	_P2_3,L019047?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:480: TR0=1; // Start timing
	setb	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:481: Timer3us(100);
	mov	dpl,#0x64
	lcall	_Timer3us
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:482: while (P2_3 == 1) {
L019052?:
	jnb	_P2_3,L019054?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:483: if(TF0 == 1) {
	jnb	_TF0,L019052?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:484: overflow_count++;
	inc	_overflow_count
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:485: TF0 = 0;
	clr	_TF0
	sjmp	L019052?
L019054?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:488: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:490: signal_period=((overflow_count * 65536.0 + TH0 * 256.0 + TL0)* (12.0 / SYSCLK));
	mov	dpl,_overflow_count
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___uchar2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	_main_signal_period_1_105,dpl
	mov	(_main_signal_period_1_105 + 1),dph
	mov	(_main_signal_period_1_105 + 2),b
	mov	(_main_signal_period_1_105 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:492: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:493: TH0=0; TL0=0; // Reset the timer
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:494: TF0 = 0; overflow_count = 0;
	clr	_TF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:495: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:496: while (P2_3 == 1); // Wait for the signal to be zero
L019055?:
	jb	_P2_3,L019055?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:497: while (P2_3 == 0); // Wait for the signal to be one
L019058?:
	jnb	_P2_3,L019058?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:498: TR0=1; // Start timing
	setb	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:499: Timer3us(10);
	mov	dpl,#0x0A
	lcall	_Timer3us
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:500: while (P2_3 == 1){
L019063?:
	jnb	_P2_3,L019065?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:501: if(TF0 == 1){
	jnb	_TF0,L019063?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:502: overflow_count++;
	inc	_overflow_count
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:503: TF0 = 0;
	clr	_TF0
	sjmp	L019063?
L019065?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:510: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:514: noise_filter=((overflow_count * 65536.0 + TH0 * 256.0 + TL0)* (12.0 / SYSCLK));
	mov	dpl,_overflow_count
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	_main_noise_filter_1_105,dpl
	mov	(_main_noise_filter_1_105 + 1),dph
	mov	(_main_noise_filter_1_105 + 2),b
	mov	(_main_noise_filter_1_105 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:516: if(fabsf( (1.0/(2.0*noise_filter)) - (1.0/(2.0*signal_period))) > signal_max_distance){
	push	_main_noise_filter_1_105
	push	(_main_noise_filter_1_105 + 1)
	push	(_main_noise_filter_1_105 + 2)
	push	(_main_noise_filter_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	_main_signal_period_1_105
	push	(_main_signal_period_1_105 + 1)
	push	(_main_signal_period_1_105 + 2)
	push	(_main_signal_period_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	_main_signal_max_distance_1_105
	push	(_main_signal_max_distance_1_105 + 1)
	push	(_main_signal_max_distance_1_105 + 2)
	push	(_main_signal_max_distance_1_105 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,r2
	jz	L019121?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:517: signal_max_distance = fabsf( (1.0/(2.0*noise_filter)) - (1.0/(2.0*signal_period)));
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	_main_noise_filter_1_105
	push	(_main_noise_filter_1_105 + 1)
	push	(_main_noise_filter_1_105 + 2)
	push	(_main_noise_filter_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_fabsf
	mov	_main_signal_max_distance_1_105,dpl
	mov	(_main_signal_max_distance_1_105 + 1),dph
	mov	(_main_signal_max_distance_1_105 + 2),b
	mov	(_main_signal_max_distance_1_105 + 3),a
L019121?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:473: for (i = 0; i < 2; i++) {
	inc	_main_i_1_105
	clr	a
	cjne	a,_main_i_1_105,L019216?
	inc	(_main_i_1_105 + 1)
L019216?:
	ljmp	L019119?
L019122?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:524: if(signal_max_distance < 8000){
	clr	a
	push	acc
	push	acc
	mov	a,#0xFA
	push	acc
	mov	a,#0x45
	push	acc
	mov	dpl,_main_signal_max_distance_1_105
	mov	dph,(_main_signal_max_distance_1_105 + 1)
	mov	b,(_main_signal_max_distance_1_105 + 2)
	mov	a,(_main_signal_max_distance_1_105 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L019069?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:528: waitms(400);
	mov	dptr,#0x0190
	lcall	_waitms
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:529: print_measured_frequency = 1.0/(2.0*noise_filter);
	push	_main_noise_filter_1_105
	push	(_main_noise_filter_1_105 + 1)
	push	(_main_noise_filter_1_105 + 2)
	push	(_main_noise_filter_1_105 + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x40
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	_main_print_measured_frequency_1_105,dpl
	mov	(_main_print_measured_frequency_1_105 + 1),dph
	mov	(_main_print_measured_frequency_1_105 + 2),b
	mov	(_main_print_measured_frequency_1_105 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:530: printf("\nMeasured Frequency:%.5f", print_measured_frequency);
	push	_main_print_measured_frequency_1_105
	push	(_main_print_measured_frequency_1_105 + 1)
	push	(_main_print_measured_frequency_1_105 + 2)
	push	(_main_print_measured_frequency_1_105 + 3)
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	L019070?
L019069?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:532: printf("\nMeasured Frequency:%.5f", print_measured_frequency);
	push	_main_print_measured_frequency_1_105
	push	(_main_print_measured_frequency_1_105 + 1)
	push	(_main_print_measured_frequency_1_105 + 2)
	push	(_main_print_measured_frequency_1_105 + 3)
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
L019070?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:536: signal_max_distance = 0;
	mov	_main_signal_max_distance_1_105,#0x00
	mov	(_main_signal_max_distance_1_105 + 1),#0x00
	mov	(_main_signal_max_distance_1_105 + 2),#0x00
	mov	(_main_signal_max_distance_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:542: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:543: TH0=0; TL0=0; // Reset the timer
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:544: TF0 = 0; overflow_count = 0;
	clr	_TF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:545: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:546: while (P2_3 == 1); // Wait for the signal to be zero
L019071?:
	jb	_P2_3,L019071?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:547: while (P2_3 == 0); // Wait for the signal to be one
L019074?:
	jnb	_P2_3,L019074?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:548: TR0=1; // Start timing
	setb	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:549: Timer3us(10);
	mov	dpl,#0x0A
	lcall	_Timer3us
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:550: while (P2_3 == 1){
L019081?:
	jnb	_P2_3,L019083?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:551: if(TF0 == 1){
	jnb	_TF0,L019078?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:552: overflow_count++;
	inc	_overflow_count
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:553: TF0 = 0;
	clr	_TF0
L019078?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:555: temp_volts = Volts_at_Pin(QFP32_MUX_P2_6);
	mov	dpl,#0x13
	lcall	_Volts_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:556: if(temp_volts > signal_peak_value) {
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	_main_signal_peak_value_1_105
	push	(_main_signal_peak_value_1_105 + 1)
	push	(_main_signal_peak_value_1_105 + 2)
	push	(_main_signal_peak_value_1_105 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jz	L019081?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:557: signal_peak_value = temp_volts;
	mov	_main_signal_peak_value_1_105,r2
	mov	(_main_signal_peak_value_1_105 + 1),r3
	mov	(_main_signal_peak_value_1_105 + 2),r4
	mov	(_main_signal_peak_value_1_105 + 3),r5
	sjmp	L019081?
L019083?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:560: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:562: if(signal_peak_value < 0.001){
	mov	a,#0x6F
	push	acc
	mov	a,#0x12
	push	acc
	mov	a,#0x83
	push	acc
	mov	a,#0x3A
	push	acc
	mov	dpl,_main_signal_peak_value_1_105
	mov	dph,(_main_signal_peak_value_1_105 + 1)
	mov	b,(_main_signal_peak_value_1_105 + 2)
	mov	a,(_main_signal_peak_value_1_105 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L019085?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:563: printf("\nMeasured Amplitude:%.5f", print_signal_peak);
	push	_main_print_signal_peak_1_105
	push	(_main_print_signal_peak_1_105 + 1)
	push	(_main_print_signal_peak_1_105 + 2)
	push	(_main_print_signal_peak_1_105 + 3)
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	sjmp	L019086?
L019085?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:565: print_signal_peak = signal_peak_value;
	mov	_main_print_signal_peak_1_105,_main_signal_peak_value_1_105
	mov	(_main_print_signal_peak_1_105 + 1),(_main_signal_peak_value_1_105 + 1)
	mov	(_main_print_signal_peak_1_105 + 2),(_main_signal_peak_value_1_105 + 2)
	mov	(_main_print_signal_peak_1_105 + 3),(_main_signal_peak_value_1_105 + 3)
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:566: printf("\nMeasured Amplitude:%.5f", print_signal_peak);
	push	_main_signal_peak_value_1_105
	push	(_main_signal_peak_value_1_105 + 1)
	push	(_main_signal_peak_value_1_105 + 2)
	push	(_main_signal_peak_value_1_105 + 3)
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
L019086?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:568: signal_peak_value = 0;
	mov	_main_signal_peak_value_1_105,#0x00
	mov	(_main_signal_peak_value_1_105 + 1),#0x00
	mov	(_main_signal_peak_value_1_105 + 2),#0x00
	mov	(_main_signal_peak_value_1_105 + 3),#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:575: TR0=0; // Stop timer 0
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:576: TH0=0; TL0=0; // Reset the timer
	mov	_TH0,#0x00
	mov	_TL0,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:577: TF0 = 0; overflow_count = 0;
	clr	_TF0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:578: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:579: while (P2_1 == 1); // Wait for the reference to be zero
L019087?:
	jb	_P2_1,L019087?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:580: while (P2_1 == 0); // Wait for the reference to be one
L019090?:
	jnb	_P2_1,L019090?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:581: TR0 = 1;		   // Start Timer when reference phasor crosses 0
	setb	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:582: while (P2_3 != 0){
L019095?:
	jnb	_P2_3,L019100?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:583: if(TF0 == 1){
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:584: TF0 = 0;
	jbc	_TF0,L019227?
	sjmp	L019095?
L019227?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:585: overflow_count++;
	inc	_overflow_count
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:588: while(P2_3 == 0){
	sjmp	L019095?
L019100?:
	jb	_P2_3,L019102?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:589: if(TF0 == 1){
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:590: TF0 = 0;
	jbc	_TF0,L019229?
	sjmp	L019100?
L019229?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:591: overflow_count++;
	inc	_overflow_count
	sjmp	L019100?
L019102?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:596: TR0 = 0;
	clr	_TR0
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:597: time_diff = (overflow_count * 65536.0+TH0 * 256.0 + TL0)* (12.0 / SYSCLK);
	mov	dpl,_overflow_count
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:599: phase_diff = (((time_diff*360.0)/(1/print_ref_frequency))); // 
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0xB4
	mov	a,#0x43
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	_main_print_ref_frequency_1_105
	push	(_main_print_ref_frequency_1_105 + 1)
	push	(_main_print_ref_frequency_1_105 + 2)
	push	(_main_print_ref_frequency_1_105 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:602: print_phase = phase_diff;
	mov	_main_print_phase_1_105,r2
	mov	(_main_print_phase_1_105 + 1),r3
	mov	(_main_print_phase_1_105 + 2),r4
	mov	(_main_print_phase_1_105 + 3),r5
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:604: if(phase_diff < 0){
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jz	L019104?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:605: print_phase = -1*print_phase;
	mov	_main_print_phase_1_105,r2
	mov	(_main_print_phase_1_105 + 1),r3
	mov	(_main_print_phase_1_105 + 2),r4
	mov	a,r5
	cpl	acc.7
	mov	(_main_print_phase_1_105 + 3),a
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:606: printf("\nRelative Phase:%.5f\n", print_phase);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	_main_print_phase_1_105
	push	(_main_print_phase_1_105 + 1)
	push	(_main_print_phase_1_105 + 2)
	push	(_main_print_phase_1_105 + 3)
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	L019105?
L019104?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:609: printf("\nRelative Phase:%.5f\n", 180-print_phase);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x34
	mov	a,#0x43
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
L019105?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:617: if(P3_7 == 1){
	jnb	_P3_7,L019107?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:618: sprintf(buffer1, "RMS=%1.1fV,f:%4.0f", print_signal_peak/1.41421356237,print_ref_frequency );
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0xF3
	push	acc
	mov	a,#0x04
	push	acc
	mov	a,#0xB5
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_main_print_signal_peak_1_105
	mov	dph,(_main_print_signal_peak_1_105 + 1)
	mov	b,(_main_print_signal_peak_1_105 + 2)
	mov	a,(_main_print_signal_peak_1_105 + 3)
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_main_print_ref_frequency_1_105
	push	(_main_print_ref_frequency_1_105 + 1)
	push	(_main_print_ref_frequency_1_105 + 2)
	push	(_main_print_ref_frequency_1_105 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buffer1_1_105
	push	acc
	mov	a,#(_main_buffer1_1_105 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	L019108?
L019107?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:620: sprintf(buffer1, "Pk=%1.1fV,f:%4.0f", print_signal_peak,print_ref_frequency );
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	_main_print_ref_frequency_1_105
	push	(_main_print_ref_frequency_1_105 + 1)
	push	(_main_print_ref_frequency_1_105 + 2)
	push	(_main_print_ref_frequency_1_105 + 3)
	push	_main_print_signal_peak_1_105
	push	(_main_print_signal_peak_1_105 + 1)
	push	(_main_print_signal_peak_1_105 + 2)
	push	(_main_print_signal_peak_1_105 + 3)
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buffer1_1_105
	push	acc
	mov	a,#(_main_buffer1_1_105 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
L019108?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:623: LCDprint(buffer1, 1, 1);
	mov	_LCDprint_PARM_2,#0x01
	setb	_LCDprint_PARM_3
	mov	dptr,#_main_buffer1_1_105
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_LCDprint
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:625: if(phase_diff < 0) {
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	L019110?
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:626: sprintf(buffer1, "P=%.1f LAGGING", print_phase);
	push	_main_print_phase_1_105
	push	(_main_print_phase_1_105 + 1)
	push	(_main_print_phase_1_105 + 2)
	push	(_main_print_phase_1_105 + 3)
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buffer1_1_105
	push	acc
	mov	a,#(_main_buffer1_1_105 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	sjmp	L019111?
L019110?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:629: sprintf(buffer1, "P=%.1f LEADING", -1*print_phase);
	mov	r2,_main_print_phase_1_105
	mov	r3,(_main_print_phase_1_105 + 1)
	mov	r4,(_main_print_phase_1_105 + 2)
	mov	a,(_main_print_phase_1_105 + 3)
	cpl	acc.7
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_main_buffer1_1_105
	push	acc
	mov	a,#(_main_buffer1_1_105 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
L019111?:
;	C:\Year2\ELEC291\Lab5\ELEC291-lab5\lab5.c:632: LCDprint2(buffer1, 2, 1);
	mov	_LCDprint2_PARM_2,#0x02
	setb	_LCDprint2_PARM_3
	mov	dptr,#_main_buffer1_1_105
	mov	b,#0x00
	lcall	_LCDprint2
	ljmp	L019139?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 0x1B
	db '[2J'
	db 0x00
__str_1:
	db 'ADC test program'
	db 0x0A
	db 'File: %s'
	db 0x0A
	db 'Compiled: %s, %s'
	db 0x0A
	db 0x0A
	db 0x00
__str_2:
	db 'C:'
	db 0x5C
	db 'Year2'
	db 0x5C
	db 'ELEC291'
	db 0x5C
	db 'Lab5'
	db 0x5C
	db 'ELEC291-lab5'
	db 0x5C
	db 'lab5.c'
	db 0x00
__str_3:
	db 'Mar  7 2024'
	db 0x00
__str_4:
	db '15:29:38'
	db 0x00
__str_5:
	db 0x0A
	db 'Reference Frequency:%.5f'
	db 0x00
__str_6:
	db 0x0A
	db 'Reference Amplitude:%.5f'
	db 0x00
__str_7:
	db 0x0A
	db 'Measured Frequency:%.5f'
	db 0x00
__str_8:
	db 0x0A
	db 'Measured Amplitude:%.5f'
	db 0x00
__str_9:
	db 0x0A
	db 'Relative Phase:%.5f'
	db 0x0A
	db 0x00
__str_10:
	db 'RMS=%1.1fV,f:%4.0f'
	db 0x00
__str_11:
	db 'Pk=%1.1fV,f:%4.0f'
	db 0x00
__str_12:
	db 'P=%.1f LAGGING'
	db 0x00
__str_13:
	db 'P=%.1f LEADING'
	db 0x00

	CSEG

end
