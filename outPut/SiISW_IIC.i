
#line 1 "sii9135\SiISW_IIC.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiISW_IIC.h" /0
 
 
 
 
 
 
 
 
 
  
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
 
 
 
 
 
 
 
 
 
 
 
#line 10 "sii9135\SiISW_IIC.h" /0
 
  
#line 1 "sii9135\SiIIICDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiISW_IIC.h" /0
 
 
 BYTE GetI2CState( void );
 
 BYTE GetI2CStatus( void );
 BYTE DDC_GetI2CStatus( void );
 
 BYTE I2CSendByte( BYTE );
 void I2CSendStop( void );
 BYTE I2CSendAddr ( BYTE, BYTE );
 
 BYTE _I2CGetByte( BYTE );
 
 BYTE DDC_GetI2CState( void );
 BYTE DDC_I2CSendByte( BYTE );
 BYTE DDC_I2CSendAddr( BYTE , BYTE );
 void DDC_I2CSendStop( void );
 BYTE DDC__I2CGetByte( BYTE );
 void ResetEEPROM( void );
 void MakeSCLPulses( BYTE );
 void DDC_MakeSCLPulses( BYTE);
 
 
#line 14 "sii9135\SiISW_IIC.c" /0
 
  
#line 1 "sii9135\SiIHAL.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiIHAL.h" /0
 
 
 
  
#line 1 "sii9135\UMCUDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\reg89f.h" /0






 
 
 
 sfr P0    = 0x80;
 sfr P1    = 0x90;
 sfr P2    = 0xA0;
 sfr P3    = 0xB0;
 sfr PSW   = 0xD0;
 sfr ACC   = 0xE0;
 sfr B     = 0xF0;
 sfr SP    = 0x81;
 sfr DPL   = 0x82;
 sfr DPH   = 0x83;
 sfr PCON  = 0x87;
 sfr TCON  = 0x88;
 sfr TMOD  = 0x89;
 sfr TL0   = 0x8A;
 sfr TL1   = 0x8B;
 sfr TH0   = 0x8C;
 sfr TH1   = 0x8D;
 sfr IE    = 0xA8;
 sfr IP    = 0xB8;
 sfr SCON  = 0x98;
 sfr SBUF  = 0x99;
 
 
 sfr SFCF = 0xF7;   
 sfr SFDT = 0xF8;   
 sfr SFAL = 0xF9;   
 sfr SFAH = 0xFA;   
 sfr SFCM = 0xFB;   
 sfr WDTC = 0xC0;   
 sfr WDTD = 0x86;   
 
 
 
 sbit WDRE = 0xC3;
 sbit WDTS = 0xC2;
 sbit WDT = 0xC1;
 sbit SWDT = 0xC0;
 
 
 
 sfr T2CON = 0xC8;
 sfr RCAP2L = 0xCA;
 sfr RCAP2H = 0xCB;
 sfr TL2   = 0xCC;
 sfr TH2   = 0xCD;
 
 
 
 
 sbit CY    = 0xD7;
 sbit AC    = 0xD6;
 sbit F0    = 0xD5;
 sbit RS1   = 0xD4;
 sbit RS0   = 0xD3;
 sbit OV    = 0xD2;
 sbit P     = 0xD0;
 
 
 sbit TF1   = 0x8F;
 sbit TR1   = 0x8E;
 sbit TF0   = 0x8D;
 sbit TR0   = 0x8C;
 sbit IE1   = 0x8B;
 sbit IT1   = 0x8A;
 sbit IE0   = 0x89;
 sbit IT0   = 0x88;
 
 
 sbit EA    = 0xAF;
 sbit ES    = 0xAC;
 sbit ET1   = 0xAB;
 sbit EX1   = 0xAA;
 sbit ET0   = 0xA9;
 sbit EX0   = 0xA8;
 
 
 sbit PS    = 0xBC;
 sbit PT1   = 0xBB;
 sbit PX1   = 0xBA;
 sbit PT0   = 0xB9;
 sbit PX0   = 0xB8;
 
 
 sbit RD    = 0xB7;
 sbit WR    = 0xB6;
 sbit T1    = 0xB5;
 sbit T0    = 0xB4;
 sbit INT1  = 0xB3;
 sbit INT0  = 0xB2;
 sbit TXD   = 0xB1;
 sbit RXD   = 0xB0;
 
 
 sbit SM0   = 0x9F;
 sbit SM1   = 0x9E;
 sbit SM2   = 0x9D;
 sbit REN   = 0x9C;
 sbit TB8   = 0x9B;
 sbit RB8   = 0x9A;
 sbit TI    = 0x99;
 sbit RI    = 0x98;
 
 
 
 sbit ET2   = 0xAD;
 
 
 sbit PT2   = 0xBD;
 
 
 sbit T2EX  = 0x91;
 sbit T2    = 0x90;
 
 
 sbit TF2   = 0xCF;
 sbit EXF2  = 0xCE;
 sbit RCLK  = 0xCD;
 sbit TCLK  = 0xCC;
 sbit EXEN2 = 0xCB;
 sbit TR2   = 0xCA;
 sbit C_T2  = 0xC9;
 sbit CP_RL2= 0xC8;
 
 
#line 13 "sii9135\UMCUDefs.h" /0
 
 
 
 
 sbit Reset_HDMIRX	= P0^1;
 
 
 sbit PSEL_Pin		= P0^3;
 
 
 
 
 sbit DDC_SCL       = P1^4;
 sbit DDC_SDA       = P1^5;
 sbit SCL           = P1^6;
 sbit SDA           = P1^7;
 
 
 
 
 sbit AudioSel0 = P2^2;
 sbit AudioSel1 = P2^3;
 
 sbit AudioSelAlt0 = P2^1;
 sbit AudioSelAlt1 = P2^2;
 
 
 sbit VideoFiltSelect_Pin = P2^1;
 
 sbit PDN = P2^6;
 sbit MUTE = P2^0;
 sbit MUTE_AUX = P3^5;
 sbit SOFTMUTE = P3^7;
 
 sbit HPCh1Ctrl_Pin = P2^4;
 sbit HPCh2Ctrl_Pin = P2^5;
 sbit ACRSyncPin = P2^7;
 
 sbit TXInt_Pin  = P3^3;
 sbit RXInt_Pin  = P3^2;
 
 
 sbit SELECT_Pin = P1^3;
 sbit SelectChSw_Pin = P0^5;
 
 
 
 
 
 
#line 13 "sii9135\SiIHAL.h" /0
 
 
 
 
#line 17 "sii9135\SiIHAL.h" /1
 
  
  
  
  
  
  
  
  
 
  
  
  
  
 
  
  
  
  
  
  
  
 
  
  
  
  
  
  
 
  
  
 
 
#line 51 "sii9135\SiIHAL.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void halInitGPIO_Pins( void );
 void halDelayMS ( BYTE );
 WORD siiGetTicksNumber( void );
 
 
 
#line 15 "sii9135\SiISW_IIC.c" /0
 
 
 
 
 BYTE GetI2CStatus( void ){
 BYTE Status;
 
 Status = 0;
 if( SCL )
 Status |= 0x01;
 if( SDA )
 Status |= 0x02;
 return Status;
 }
 
 
 BYTE GetI2CState( void ){
 BYTE i,j;
 
  SCL = 1 ;
 for( i = 0; i < 10; i++ ){
 if( SCL ){
  SDA = 1;
 for( j = 0; j < 10; j++){
 if( SDA )
 return 0;    
 }
 return 1;       
 }
 }
 return 2;           
 }
 
 
 void _I2CSCLHigh( void ) {        
 register int err;
 
  SCL = 1;
 while ( !SCL ){
 err++;
 if ( !err ) {
 
 return;
 }
 }
 }
 
 
 
 BYTE I2CSendByte( BYTE bt ){
 register unsigned char i;
 unsigned char error=0;  
 
 for ( i = 0; i < 8; i++) {
 if (bt & 0x80)
  SDA = 1;       
 else
  SDA = 0;
 _I2CSCLHigh();
  SCL = 0 ;
 bt = bt << 1;
 }
  SDA = 1;                        
 _I2CSCLHigh();
 if ( SDA )
 error=1;
  SCL = 0 ;
 return( error );  
 }
 
 BYTE I2CSendAddr( BYTE addr, BYTE rd ){
 volatile unsigned char x = 0;		 
  SCL = 1 ;
 x++;
  SDA = 0;                
 x++;
  SCL = 0 ;
 x++;
 return I2CSendByte( addr+rd );   
 }
 
 BYTE _I2CGetByte(BYTE lastone) {  
 register unsigned char i, res;
 
 res = 0;
 for ( i = 0; i < 8; i++ ) {           
 
 _I2CSCLHigh();
 res *= 2;
 if ( SDA )
 res++;
  SCL = 0 ;
 
 }
 
 if ( lastone )
  SDA = 1;            
 else
  SDA = 0;
 _I2CSCLHigh();
  SCL = 0;
  SDA = 1;
 return  res;
 }
 
 void I2CSendStop( void ){
 
  SDA = 0;
 _I2CSCLHigh();
  SDA = 1;
 
 }
 
 void MakeSCLPulses(BYTE Count ){
 BYTE i;
 
 if(!Count)
 return;
 for(i = 1; i <=Count; i++){
  SCL = 1;
  SCL = 1;
  SCL = 0;
  SCL = 0;
 }
  SCL = 1;
  SCL = 1;
 }
 
