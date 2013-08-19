
#line 1 "bsp\eeprom.c" /0
 
  
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
 sfr WDT_CONTR = 0xE1;
 
 
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
 
 
#line 2 "bsp\eeprom.c" /0
 
  
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
 
 
 
#line 3 "bsp\eeprom.c" /0
 
  
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
 
 
 
 
 
 
 
 
#line 4 "bsp\eeprom.c" /0
 
  
#line 1 ".\APP\COMMONLIBRARY.H" /0
 
 
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 4 ".\APP\COMMONLIBRARY.H" /0
#line 4 ".\APP\COMMONLIBRARY.H" /0
 
 
 void Delay_ms(ushort i);
 
 
 
 
 
#line 5 "bsp\eeprom.c" /0
 
  
#line 1 "BSP\IO.H" /0
 
 
 
  
#line 1 "D:\KEIL\C51\INC\REG52.H" /0






 
 
 
#line 10 "D:\KEIL\C51\INC\REG52.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 4 "BSP\IO.H" /0
#line 4 "BSP\IO.H" /0
 
 
 
 sbit LED1 = P0^0;
 sbit LED2 = P0^1;
 
 
 sbit tx1_rst = P3^3;
 sbit tx2_rst = P3^2;
 sbit tx3_rst = P3^4;
 sbit tx4_rst = P3^5;
 
 
 sbit cardIn_Init = P2^4;
 sbit cardInCS    = P2^3; 
 
 
 sbit P4_CEC = P2^5;
 sbit P3_CEC = P2^6;
 sbit P2_CEC = P2^7;
 sbit P1_CEC = P3^7;
 
 
 sbit HC4052enable = P1^0;
 sbit s0 = P1^6; 
 sbit s1 = P1^5;
 
 
 sbit SDA1 =  P1^2;  
 sbit SCL1 =  P1^1;
 
 sbit SDA = P1^4;   
 sbit SCL = P1^3;
 
 
 sbit IORED_INT = P2^1;
 
 
 sbit RS485TxEN =  P2^2;   
 
 
 void BoardInit(void);
 void ddcChannelSel(unsigned char ch);
 void  hotplugCtrl(unsigned char ch);
 void resetEp9132(unsigned char ch);
 
 
#line 6 "bsp\eeprom.c" /0
 
  
#line 1 "BSP\EEPROM.H" /0
 
 
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 4 "BSP\EEPROM.H" /0
#line 4 "BSP\EEPROM.H" /0
 
  
#line 1 "D:\KEIL\C51\INC\REG52.H" /0






 
 
 
#line 10 "D:\KEIL\C51\INC\REG52.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 5 "BSP\EEPROM.H" /0
#line 5 "BSP\EEPROM.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void  eeprom_SomeNOP(uchar n);
 void  eeprom_I2CStart(void)	;
 void  eeprom_I2CStop(void);
 bit   eeprom_WaitAck(void);
 void  eeprom_SendNotAck(void);
 void  eeprom_I2CSendByte(unsigned char Data);
 uchar eeprom_I2CReceiveByte(void);
 void  eeprom_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data);
 void  eeprom_I2CWrite_PCF8574(uchar DeviceAdd,uchar Data);
 uchar eeprom_I2CRead(uchar DeviceAdd,uchar PtrAdd);
 uchar eeprom_I2CRead_PCF8574T(void);
 bit   eeprom_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n);
 
 
#line 7 "bsp\eeprom.c" /0
 
  
#line 1 "BSP\UART.H" /0
 
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 3 "BSP\UART.H" /0
#line 3 "BSP\UART.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 unsigned char receiveByte(void);
 void     			urInit(void); 
 void 					sendByte(uchar sendData);
 void 					SendString(char *s);
 void 					memoryInit(void);
 void setRS485( uchar k );
 
 static void   cmdProcee(void);
 
 void          uart0BegainSend(void);
 unsigned char Com0Putch(unsigned char txChar);
 void          com0SendStr(unsigned char *pStr);
 unsigned char com0CheckRx(void);
 unsigned char com0GetChar(void);
 void          urInit(void);
 
 
#line 8 "bsp\eeprom.c" /0
 
 
 
 
 
 
 



 
 void eeprom_SomeNOP(uchar n)
 {
 data uchar i;
 for(i=0;i<n;i++)
 {
 _nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();
 }
 } 
 



 
 void eeprom_I2CStart(void)	
 {
 
 SDA1=1;	
 eeprom_SomeNOP(5);
 SCL1=1;
 eeprom_SomeNOP(5);
 SDA1=0;
 eeprom_SomeNOP(5);
 SCL1=0; 
 }



 
 void eeprom_I2CStop(void)
 {
 SDA1=0;	
 eeprom_SomeNOP(5);
 SCL1=1;
 eeprom_SomeNOP(5);
 SDA1=1;
 eeprom_SomeNOP(5);
 SCL1=1;
 eeprom_SomeNOP(5);
 
 eeprom_SomeNOP(5);
 Delay_ms(5);
 }
 



 
 bit eeprom_WaitAck(void)
 {
 data uchar errtime = 255; 
 SDA1=1;
 eeprom_SomeNOP(5);
 SCL1=0;
 eeprom_SomeNOP(5);
 while(SDA1)       
 {	errtime--;
 if(!errtime)
 {
 eeprom_I2CStop();
 
 return 0;
 }
 }
 SCL1=1;
 eeprom_SomeNOP(5);
 
 SCL1=0;
 return 1;  
 }
 



 
 
 void eeprom_SendAck(void)
 {
 SCL1=0;
 eeprom_SomeNOP(4);
 SDA1=0;
 eeprom_SomeNOP(4);
 SCL1=1;
 eeprom_SomeNOP(4);
 SCL1=0;
 eeprom_SomeNOP(4);
 }  
 



 
 void eeprom_SendNotAck(void)
 {
 SCL1=0;
 eeprom_SomeNOP(4);
 SDA1=1;
 eeprom_SomeNOP(4);
 SCL1=1;
 eeprom_SomeNOP(4);
 SCL1=0;
 eeprom_SomeNOP(4);
 }



 
 void eeprom_I2CSendByte(unsigned char Data)
 {
 uchar i=8;
 while(i--)
 {	
 SCL1=0;
 eeprom_SomeNOP(1);
 SDA1=(bit)(Data&0x80);
 Data<<=1;
 eeprom_SomeNOP(5);
 SCL1=1;
 eeprom_SomeNOP(5);
 }
 SCL1=0;
 }
 



 
 uchar eeprom_I2CReceiveByte(void)
 {
 uchar i=8;
 uchar Data=0;
 SDA1=1;
 while(i--)
 {
 Data<<=1;
 SCL1=0;
 eeprom_SomeNOP(5);
 SCL1=1;
 eeprom_SomeNOP(5);
 Data|=SDA1;
 }
 SCL1=0;
 return Data;
 }



 



















 
 
 
 
 
 
 
 
 
 
 
 
 



 
 void eeprom_I2CWrite_PCF8574(uchar DeviceAdd,uchar Data)
 {
 eeprom_I2CStart();
 eeprom_I2CSendByte(DeviceAdd);
 eeprom_WaitAck();
 
 eeprom_I2CSendByte(Data);
 eeprom_WaitAck();
 eeprom_I2CStop();
 }





 
 
 bit eeprom_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n)
 {
 unsigned int i=0;
 bit tmp;
 eeprom_I2CStart();
 eeprom_I2CSendByte(DeviceAdd);
 tmp = eeprom_WaitAck();   
 eeprom_I2CSendByte(PtrAdd);
 tmp = eeprom_WaitAck();
 
 eeprom_I2CStart();
 eeprom_I2CSendByte(DeviceAdd+1);
 tmp = eeprom_WaitAck();
 for(i=0;i<n;i++)
 {
 *Data++=eeprom_I2CReceiveByte();
 eeprom_SendAck();
 }
 *Data++=eeprom_I2CReceiveByte();
 eeprom_SendNotAck();
 eeprom_I2CStop();
 return tmp;
 }



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 





 
 uchar eeprom_I2CRead_PCF8574T(void)
 {
 uchar Data;
 eeprom_I2CStart();   
 eeprom_I2CSendByte(0x49 );  
 eeprom_WaitAck();                     
 
 Data=eeprom_I2CReceiveByte();       
 
 eeprom_SendNotAck();                
 eeprom_I2CStop();                   
 return Data;
 }
 
