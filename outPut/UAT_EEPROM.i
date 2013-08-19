
#line 1 "sii9135\UAT_EEPROM.c" /0
  
#line 1 "sii9135\UAT_EEPROM.h" /0
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 31 "sii9135\SiICmplDefs.h" /1
  
 
#line 33 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 48 "sii9135\SiICmplDefs.h" /1
 
 
  
 
  
 
 
 
#line 56 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
 
 
  
#line 1 ".\bsp\typedef.h" /0
 
 
 
 
 
 
 
 
 typedef	code	unsigned char	cBYTE;
 
 
 typedef char CHAR, *PCHAR ;
 typedef unsigned char uchar, *puchar ;
 typedef unsigned char UCHAR, *PUCHAR ;
 typedef unsigned char byte, *pbyte ;
 typedef unsigned char BYTE, *PBYTE ;
 
 typedef short SHORT, *PSHORT ;
 typedef unsigned short ushort, *pushort ;
 typedef unsigned short USHORT, *PUSHORT ;
 typedef unsigned short word, *pword ;
 typedef unsigned short WORD, *PWORD ;
 
 typedef long LONG, *PLONG ;
 typedef unsigned long ulong, *pulong ;
 typedef unsigned long ULONG, *PULONG ;
 typedef unsigned long dword, *pdword ;
 typedef unsigned long DWORD, *PDWORD ;
 
 typedef struct _REGPAIR 
 {
 BYTE ucAddr ;
 BYTE ucValue ;
 }REGPAIR;
 
 
 typedef signed char         INT08S;
 typedef unsigned char       INT08U;
 typedef signed short        INT16S;
 typedef unsigned short      INT16U;
 typedef signed long         INT32S;
 typedef unsigned long       INT32U;
 
 
 
 
 
 
 
 
#line 14 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 typedef unsigned char  U8BIT;
 
 typedef unsigned short int U16BIT;
 typedef unsigned long U32BIT;
 
 
 
 
 
 
 
 
 
 
#line 32 "sii9135\SiITypeDefs.h" /1
 
 
  
  
 
 
#line 38 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
#line 4 "sii9135\UAT_EEPROM.h" /0
 
  
#line 1 "sii9135\AT89C51XD2.h" /0





 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  sfr P0 = 0x80;
 
  sbit P0_7 = 0x80^7;
  sbit P0_6 = 0x80^6;
  sbit P0_5 = 0x80^5;
  sbit P0_4 = 0x80^4;
  sbit P0_3 = 0x80^3;
  sbit P0_2 = 0x80^2;
  sbit P0_1 = 0x80^1;
  sbit P0_0 = 0x80^0;
 
  sfr P1 = 0x90;
 
  sbit P1_7 = 0x90^7;
  sbit P1_6 = 0x90^6;
  sbit P1_5 = 0x90^5;
  sbit P1_4 = 0x90^4;
  sbit P1_3 = 0x90^3;
  sbit P1_2 = 0x90^2;
  sbit P1_1 = 0x90^1;
  sbit P1_0 = 0x90^0;
 
 
 
  sfr P2 = 0xA0;
  sbit P2_7 = 0xA0^7;
  sbit P2_6 = 0xA0^6;
  sbit P2_5 = 0xA0^5;
  sbit P2_4 = 0xA0^4;
  sbit P2_3 = 0xA0^3;
  sbit P2_2 = 0xA0^2;
  sbit P2_1 = 0xA0^1;
  sbit P2_0 = 0xA0^0;
 
 
  sfr P3 = 0xB0;
 
  sbit P3_7 = 0xB0^7;
  sbit P3_6 = 0xB0^6;
  sbit P3_5 = 0xB0^5;
  sbit P3_4 = 0xB0^4;
  sbit P3_3 = 0xB0^3;
  sbit P3_2 = 0xB0^2;
  sbit P3_1 = 0xB0^1;
  sbit P3_0 = 0xB0^0;
 
  sbit RD = 0xB0^7;
  sbit WR = 0xB0^6;
  sbit T1 = 0xB0^5;
  sbit T0 = 0xB0^4;
  sbit INT1 = 0xB0^3;
  sbit INT0 = 0xB0^2;
  sbit TXD = 0xB0^1;
  sbit RXD = 0xB0^0;
 
  sfr P4 = 0xC0;
  sbit P4_7 = 0xC0^7;
  sbit P4_6 = 0xC0^6;
  sbit P4_5 = 0xC0^5;
  sbit P4_4 = 0xC0^4;
  sbit P4_3 = 0xC0^3;
  sbit P4_2 = 0xC0^2;
  sbit P4_1 = 0xC0^1;
  sbit P4_0 = 0xC0^0;
 
  sfr P5 = 0xE8;
  sbit P5_7 = 0xE8^7;
  sbit P5_6 = 0xE8^6;
  sbit P5_5 = 0xE8^5;
  sbit P5_4 = 0xE8^4;
  sbit P5_3 = 0xE8^3;
  sbit P5_2 = 0xE8^2;
  sbit P5_1 = 0xE8^1;
  sbit P5_0 = 0xE8^0;
 
 
  sfr PSW = 0xD0;
 
  sbit CY = 0xD0^7;
  sbit AC = 0xD0^6;
  sbit F0 = 0xD0^5;
  sbit RS1 = 0xD0^4;
  sbit RS0 = 0xD0^3;
  sbit OV = 0xD0^2;
  sbit UD = 0xD0^1;
  sbit P = 0xD0^0;
 
  sfr ACC = 0xE0;
  sfr B = 0xF0;
  sfr SP = 0x81;
  sfr DPL = 0x82;
  sfr DPH = 0x83;
 
  sfr PCON = 0x87;
  sfr CKCON0 = 0x8F;
  sfr CKCON1 = 0xAF;
 
 
  sfr TCON = 0x88;
  sbit TF1 = 0x88^7;
  sbit TR1 = 0x88^6;
  sbit TF0 = 0x88^5;
  sbit TR0 = 0x88^4;
  sbit IE1 = 0x88^3;
  sbit IT1 = 0x88^2;
  sbit IE0 = 0x88^1;
  sbit IT0 = 0x88^0;
 
  sfr TMOD = 0x89;
 
  sfr T2CON = 0xC8;
  sbit TF2 = 0xC8^7;
  sbit EXF2 = 0xC8^6;
  sbit RCLK = 0xC8^5;
  sbit TCLK = 0xC8^4;
  sbit EXEN2 = 0xC8^3;
  sbit TR2 = 0xC8^2;
  sbit C_T2 = 0xC8^1;
  sbit CP_RL2 = 0xC8^0;
 
  sfr T2MOD = 0xC9;
  sfr TL0 = 0x8A;
  sfr TL1 = 0x8B;
  sfr TL2 = 0xCC;
  sfr TH0 = 0x8C;
  sfr TH1 = 0x8D;
  sfr TH2 = 0xCD;
  sfr RCAP2L = 0xCA;
  sfr RCAP2H = 0xCB;
  sfr WDTRST = 0xA6;
  sfr WDTPRG = 0xA7;
 
 
 
  sfr SCON = 0x98;
  sbit SM0 = 0x98^7;
  sbit FE = 0x98^7;
  sbit SM1 = 0x98^6;
  sbit SM2 = 0x98^5;
  sbit REN = 0x98^4;
  sbit TB8 = 0x98^3;
  sbit RB8 = 0x98^2;
  sbit TI = 0x98^1;
  sbit RI = 0x98^0;
 
  sfr SBUF = 0x99;
  sfr SADEN = 0xB9;
  sfr SADDR = 0xA9;
 
 
  sfr BRL = 0x9A;
  sfr BDRCON = 0x9B;
 
 
 
 
  sfr IEN0 = 0xA8;
  sfr IEN1 = 0xB1;
  sfr IPH0 = 0xB7;
  sfr IPH1 = 0xB3;
  sfr IPL0 = 0xB8;
  sfr IPL1 = 0xB2;
 
 
 
 
  sbit EA = 0xA8^7;
  sbit EC = 0xA8^6;
  sbit ET2 = 0xA8^5;
  sbit ES = 0xA8^4;
  sbit ET1 = 0xA8^3;
  sbit EX1 = 0xA8^2;
  sbit ET0 = 0xA8^1;
  sbit EX0 = 0xA8^0;
 
 
 
  sfr CCON = 0xD8;
  sfr CMOD = 0xD9;
  sfr CH = 0xF9;
  sfr CL = 0xE9;
  sfr CCAP0H = 0xFA;
  sfr CCAP0L = 0xEA;
  sfr CCAPM0 = 0xDA;
  sfr CCAP1H = 0xFB;
  sfr CCAP1L = 0xEB;
  sfr CCAPM1 = 0xDB;
  sfr CCAP2H = 0xFC;
  sfr CCAP2L = 0xEC;
  sfr CCAPM2 = 0xDC;
  sfr CCAP3H = 0xFD;
  sfr CCAP3L = 0xED;
  sfr CCAPM3 = 0xDD;
  sfr CCAP4H = 0xFE;
  sfr CCAP4L = 0xEE;
  sfr CCAPM4 = 0xDE;
 
  sbit CF = 0xD8^7;
  sbit CR = 0xD8^6;
 
  sbit CCF4 = 0xD8^4;
  sbit CCF3 = 0xD8^3;
  sbit CCF2 = 0xD8^2;
  sbit CCF1 = 0xD8^1;
  sbit CCF0 = 0xD8^0;
 
 
 
  sfr SSCON = 0x93;
  sfr SSCS = 0x94;
  sfr SSDAT = 0x95;
  sfr SSADR = 0x96;
  sfr PI2 = 0xF8;
  sbit PI2_1 = 0xF8^1;
  sbit PI2_0 = 0xF8^0;
 
 
  sfr CKSEL = 0x85;
  sfr OSCCON = 0x86;
  sfr CKRL = 0x97;
 
 
  sfr KBLS = 0x9C;
  sfr KBE = 0x9D;
  sfr KBF = 0x9E;
 
  sfr SPCON = 0xC3;
  sfr SPSTA = 0xC4;
  sfr SPDAT = 0xC5;
 
 
  sfr AUXR = 0x8E;
  sfr AUXR1 = 0xA2;
  sfr FCON = 0xD1;
 
 
 
  sfr EECON = 0xD2;
 
 
 
 
 
 
#line 5 "sii9135\UAT_EEPROM.h" /0
 
 
 
 
 
 
 
 
 void siiWriteByteInternEEPROM ( WORD , BYTE );
 void siiReadByteInternEEPROM ( WORD , BYTE * );
 
 
#line 1 "sii9135\UAT_EEPROM.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void siiReadByteInternEEPROM ( WORD wAddr, BYTE * pbData ) {
 BYTE xdata * abEEPROM;
 WORD data wDAddr;
 BYTE bDData;
 
 wDAddr = wAddr;
 
  EA = 0;
  ( EECON |= 0x02 );
 
 abEEPROM = wAddr;
 
 while ( (EECON & 0x01) );
 
 bDData = *abEEPROM;
 
  ( EECON &= 0xFD );
  EA = 1;
 * pbData = bDData;
 
 }
 
 
 
 
 
 
 
 
 
 
 
 
 void siiWriteByteInternEEPROM ( WORD wAddr, BYTE bData ) {
 BYTE xdata * abEEPROM;
 WORD data wDAddr;
 BYTE bDData;
 
 wDAddr = wAddr;
 bDData = bData;
 
  EA = 0;
  ( EECON |= 0x02 );
 
 abEEPROM = wAddr;
 
 while ( (EECON & 0x01) );
 
 *abEEPROM = bDData;
 
  ( EECON &= 0xFD );
  EA = 1;
 
 }
 
