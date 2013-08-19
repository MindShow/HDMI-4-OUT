
#line 1 "bsp\ep9142.c" /0
 
 
 
  
#line 1 "D:\KEIL\C51\INC\REG52.H" /0






 
 
 
 
 
 
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
 sfr AUXR  = 0x8E;	  
 
 
 sfr T2CON  = 0xC8;
 sfr RCAP2L = 0xCA;
 sfr RCAP2H = 0xCB;
 sfr TL2    = 0xCC;
 sfr TH2    = 0xCD;
 
 
 
 
 sbit CY    = PSW^7;
 sbit AC    = PSW^6;
 sbit F0    = PSW^5;
 sbit RS1   = PSW^4;
 sbit RS0   = PSW^3;
 sbit OV    = PSW^2;
 sbit P     = PSW^0;  
 
 
 sbit TF1   = TCON^7;
 sbit TR1   = TCON^6;
 sbit TF0   = TCON^5;
 sbit TR0   = TCON^4;
 sbit IE1   = TCON^3;
 sbit IT1   = TCON^2;
 sbit IE0   = TCON^1;
 sbit IT0   = TCON^0;
 
 
 sbit EA    = IE^7;
 sbit ET2   = IE^5;  
 sbit ES    = IE^4;
 sbit ET1   = IE^3;
 sbit EX1   = IE^2;
 sbit ET0   = IE^1;
 sbit EX0   = IE^0;
 
 
 sbit PT2   = IP^5;
 sbit PS    = IP^4;
 sbit PT1   = IP^3;
 sbit PX1   = IP^2;
 sbit PT0   = IP^1;
 sbit PX0   = IP^0;
 
 
 sbit RD    = P3^7;
 sbit WR    = P3^6;
 sbit T1    = P3^5;
 sbit T0    = P3^4;
 sbit INT1  = P3^3;
 sbit INT0  = P3^2;
 sbit TXD   = P3^1;
 sbit RXD   = P3^0;
 
 
 sbit SM0   = SCON^7;
 sbit SM1   = SCON^6;
 sbit SM2   = SCON^5;
 sbit REN   = SCON^4;
 sbit TB8   = SCON^3;
 sbit RB8   = SCON^2;
 sbit TI    = SCON^1;
 sbit RI    = SCON^0;
 
 
 sbit T2EX  = P1^1;  
 sbit T2    = P1^0;  
 
 
 sbit TF2    = T2CON^7;
 sbit EXF2   = T2CON^6;
 sbit RCLK   = T2CON^5;
 sbit TCLK   = T2CON^4;
 sbit EXEN2  = T2CON^3;
 sbit TR2    = T2CON^2;
 sbit C_T2   = T2CON^1;
 sbit CP_RL2 = T2CON^0;
 
 
#line 4 "bsp\ep9142.c" /0
 
  
#line 1 "D:\KEIL\C51\INC\INTRINS.H" /0






 
 
 
 
 
 extern void          _nop_     (void);
 extern bit           _testbit_ (bit);
 extern unsigned char _cror_    (unsigned char, unsigned char);
 extern unsigned int  _iror_    (unsigned int,  unsigned char);
 extern unsigned long _lror_    (unsigned long, unsigned char);
 extern unsigned char _crol_    (unsigned char, unsigned char);
 extern unsigned int  _irol_    (unsigned int,  unsigned char);
 extern unsigned long _lrol_    (unsigned long, unsigned char);
 extern unsigned char _chkfloat_(float);
 extern void          _push_    (unsigned char _sfr);
 extern void          _pop_     (unsigned char _sfr);
 
 
 
#line 5 "bsp\ep9142.c" /0
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
 
 
 
 
 
 
 
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
 
 
 
 
 
 
 
 
#line 6 "bsp\ep9142.c" /0
 
 
#error *** WARNING C318 IN LINE 7 OF bsp\ep9142.c: can't open file 'ep9132.h'
  
#line 1 ".\APP\COMMONLIBRARY.H" /0
 
 
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 4 ".\APP\COMMONLIBRARY.H" /0
#line 4 ".\APP\COMMONLIBRARY.H" /0
 
 
 void Delay_ms(ushort i);
 
 
 
 
 
#line 8 "bsp\ep9142.c" /0
 
 
 
 sbit ep9132_SCL = P1^3;
 sbit ep9132_SDA = P1^4;
 
 



 
 void ep9132_SomeNOP(uchar n)
 {
 data uchar i;
 for(i=0;i<n;i++)
 {
 _nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();
 }
 } 
 



 
 void ep9132_I2CStart(void)	
 {
 
 ep9132_SDA=1;	
 ep9132_SomeNOP(5);
 ep9132_SCL=1;
 ep9132_SomeNOP(5);
 ep9132_SDA=0;
 ep9132_SomeNOP(5);
 ep9132_SCL=0; 
 }



 
 void ep9132_I2CStop(void)
 {
 ep9132_SDA=0;	
 ep9132_SomeNOP(5);
 ep9132_SCL=1;
 ep9132_SomeNOP(5);
 ep9132_SDA=1;
 ep9132_SomeNOP(5);
 ep9132_SCL=1;
 ep9132_SomeNOP(5);
 
 ep9132_SomeNOP(5);
 Delay_ms(5);
 }
 



 
 bit ep9132_WaitAck(void)
 {
 data uchar errtime = 255; 
 ep9132_SDA=1;
 ep9132_SomeNOP(5);
 ep9132_SCL=0;
 ep9132_SomeNOP(5);
 while(ep9132_SDA)
 {	errtime--;
 if(!errtime)
 {
 ep9132_I2CStop();
 
 return 0;
 }
 }
 ep9132_SCL=1;
 ep9132_SomeNOP(5);
 
 ep9132_SCL=0;
 return 1;  
 }
 



 
















 
 void ep9132_SendNotAck(void)
 {
 ep9132_SCL=0;
 ep9132_SomeNOP(4);
 ep9132_SDA=1;
 ep9132_SomeNOP(4);
 ep9132_SCL=1;
 ep9132_SomeNOP(4);
 ep9132_SCL=0;
 ep9132_SomeNOP(4);
 }



 
 void ep9132_I2CSendByte(uchar Data)
 {
 uchar i=8;
 while(i--)
 {	
 ep9132_SCL=0;
 ep9132_SomeNOP(1);
 ep9132_SDA=(bit)(Data&0x80);
 Data<<=1;
 ep9132_SomeNOP(5);
 ep9132_SCL=1;
 ep9132_SomeNOP(5);
 }
 ep9132_SCL=0;
 }
 



 
 uchar ep9132_I2CReceiveByte(void)
 {
 uchar i=8;
 uchar Data=0;
 ep9132_SDA=1;
 while(i--)
 {
 Data<<=1;
 ep9132_SCL=0;
 ep9132_SomeNOP(5);
 ep9132_SCL=1;
 ep9132_SomeNOP(5);
 Data|=ep9132_SDA;
 }
 ep9132_SCL=0;
 return Data;
 }



 



















 
 
 void ep9132_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data)
 {
 ep9132_I2CStart();
 ep9132_I2CSendByte(DeviceAdd);
 ep9132_WaitAck();
 ep9132_I2CSendByte(PtrAdd);
 ep9132_WaitAck();
 ep9132_I2CSendByte(Data);
 ep9132_WaitAck();
 ep9132_I2CStop();
 }



 
























 
 
 uchar ep9132_I2CRead(uchar DeviceAdd,uchar PtrAdd)
 {
 uchar Data;
 ep9132_I2CStart();
 ep9132_I2CSendByte(DeviceAdd);
 ep9132_WaitAck();
 ep9132_I2CSendByte(PtrAdd);
 ep9132_WaitAck();
 ep9132_I2CStart();
 ep9132_I2CSendByte(DeviceAdd+1);
 ep9132_WaitAck();
 Data=ep9132_I2CReceiveByte();
 ep9132_SendNotAck();
 ep9132_I2CStop();
 return Data;
 }
 
 
