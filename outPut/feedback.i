
#line 1 "bsp\feedback.c" /0
  
#line 1 "BSP\FEEDBACK.H" /0
 
 
 
  
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
 
 
 
 
 
 
 
 
#line 4 "BSP\FEEDBACK.H" /0
 
 
 
 
 
 
 extern unsigned char code portTypeArray[4];
 extern unsigned char xdata edidBuff[128];
 
 void uartReturn(unsigned char);
 
 
 void sendPortType(unsigned char childBoardAddr,unsigned char *ptr);
 uchar checkPortType(uchar port);
 uchar checkConnection(uchar port);
 bit edidRead1(void);
 bit edidRead2();
 
 void feedBackEdid(unsigned char CMD,unsigned char childBoardAddr,unsigned char excuteResult,unsigned char *edidBuff);
 
 
 
#line 1 "bsp\feedback.c" /0
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 2 "bsp\feedback.c" /0
#line 2 "bsp\feedback.c" /0
 
  
#line 1 "BSP\EEPROM.H" /0
 
 
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 4 "BSP\EEPROM.H" /0
#line 4 "BSP\EEPROM.H" /0
 
  
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
 
 
#line 3 "bsp\feedback.c" /0
 
  
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
 
 
#line 4 "bsp\feedback.c" /0
 
  
#line 1 "D:\KEIL\C51\INC\STRING.H" /0






 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
 
 
 
 
 #pragma SAVE
 #pragma REGPARMS
 extern char *strcat (char *s1, char *s2);
 extern char *strncat (char *s1, char *s2, int n);
 
 extern char strcmp (char *s1, char *s2);
 extern char strncmp (char *s1, char *s2, int n);
 
 extern char *strcpy (char *s1, char *s2);
 extern char *strncpy (char *s1, char *s2, int n);
 
 extern int strlen (char *);
 
 extern char *strchr (const char *s, char c);
 extern int strpos (const char *s, char c);
 extern char *strrchr (const char *s, char c);
 extern int strrpos (const char *s, char c);
 
 extern int strspn (char *s, char *set);
 extern int strcspn (char *s, char *set);
 extern char *strpbrk (char *s, char *set);
 extern char *strrpbrk (char *s, char *set);
 extern char *strstr  (char *s, char *sub);
 extern char *strtok  (char *str, const char *set);
 
 extern char memcmp (void *s1, void *s2, int n);
 extern void *memcpy (void *s1, void *s2, int n);
 extern void *memchr (void *s, char val, int n);
 extern void *memccpy (void *s1, void *s2, char val, int n);
 extern void *memmove (void *s1, void *s2, int n);
 extern void *memset  (void *s, char val, int n);
 #pragma RESTORE
 
 
#line 5 "bsp\feedback.c" /0
 
  
#line 1 "BSP\EP9132.H" /0
 
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 3 "BSP\EP9132.H" /0
#line 3 "BSP\EP9132.H" /0
 
  
#line 1 "D:\KEIL\C51\INC\REG52.H" /0






 
 
 
#line 10 "D:\KEIL\C51\INC\REG52.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 4 "BSP\EP9132.H" /0
#line 4 "BSP\EP9132.H" /0
 
 
 
 sbit ep9132_SCL = P1^3;
 sbit ep9132_SDA = P1^4;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void  EP9132_SomeNOP(uchar n);
 
 void  EP9132_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data);
 unsigned char EP9132_I2CRead(uchar DeviceAdd,uchar PtrAdd);
 bit ep9132_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n);
 void  EP9132_I2CWritep(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n); 
 
 
#line 6 "bsp\feedback.c" /0
 
 
 
 
 unsigned char xdata edidBuff[128]={0};
 
 unsigned char code portTypeArray[4] = { 0x01,0x38,0x0,0xc0  };  
 
 
 
 extern uchar childBoardAddr;





 
 uchar checkPortType(uchar port)
 {
 port = port;
 
 if( (portTypeArray[1]&0x08) == 0x08 )  
 return 1;
 else
 return 0;		 
 }





 
 uchar checkConnection(uchar port)
 {
 uchar temp = 0;
 eeprom_I2CWrite_PCF8574(0x48,0xff);  
 temp = eeprom_I2CRead_PCF8574T();
 switch(port)
 {
 case 0x01:
 if( temp == 0xfe) 
 return 1;
 else 
 return 0;
 case 0x02:
 if( temp == 0xfd) 
 return 1;
 else 
 return 0;
 case 0x03:
 if( temp == 0xfb) 
 return 1;
 else 
 return 0;
 case 0x04:
 if( temp == 0xf7) 
 return 1;
 else 
 return 0;		
 default:
 break;				
 }
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void uartReturn(unsigned char childBoardAddr)
 {	
 uchar temp = 0;   
 
 temp += 0xAB;
 temp += childBoardAddr;
 temp += 0x30;
 temp += 0x01;
 temp += childBoardAddr;
 
 setRS485( 0 );   
 
 sendByte(0xAB);
 sendByte(childBoardAddr);
 sendByte(0x30);
 sendByte(0x01);
 sendByte(childBoardAddr);
 sendByte(temp);
 
 setRS485( 1 );   
 }
 
 
 
 
 
 
 void sendPortType(unsigned char childBoardAddr,unsigned char *ptr)
 {
 unsigned char tmpChar = 0,k = 0, dat = 0;
 
 
 
 
 tmpChar += 0xAB;
 tmpChar += childBoardAddr ;
 tmpChar += 0x31;
 tmpChar += 0x04;
 for(k=0;k<4;k++)   
 {
 dat = *(ptr+k);
 tmpChar += dat;
 }
 
 
 setRS485( 0 );   
 sendByte(0xAB);
 sendByte(childBoardAddr);
 sendByte(0x31);
 sendByte(0x04);
 for(k=0;k<4;k++)   
 {
 sendByte( *(ptr+k) );
 } 
 sendByte(tmpChar);
 
 setRS485( 1 );   
 }
 
 
 
 
 
 
 
 bit edidRead1(void)
 {
 unsigned char k = 0;
 bit tmp;
 memset(edidBuff,0,128);  
 for(k=0;k<16;k++)
 tmp =  ep9132_I2CReadp(0xA0,8*k,&edidBuff[k*8],8);
 
 return tmp;
 }
 
 
 
 
 
 
 
 bit edidRead2()
 {
 unsigned char k = 0;
 bit tmp;
 memset(edidBuff,0,128);  
 for(k=16;k<32;k++)
 tmp =  ep9132_I2CReadp(0xA0,8*k,&edidBuff[(k-16)*8],8);
 
 return tmp;
 }
 
 
 
 
 
 
 
 void feedBackEdid(unsigned char CMD,unsigned char childBoardAddr,unsigned char excuteResult,unsigned char *edidBuff)
 {
 unsigned char k = 0,tmpChar = 0;
 
 
 
 
 
 tmpChar += 0xAB;
 tmpChar += childBoardAddr ;
 tmpChar += CMD;
 tmpChar += 0x81;
 tmpChar += excuteResult;
 for(k=0;k<128;k++)
 {
 tmpChar += edidBuff[k];
 }	
 
 setRS485( 0 );   
 
 sendByte( 0xAB );
 sendByte( childBoardAddr );
 sendByte( CMD );
 sendByte( 0x81 );
 sendByte( excuteResult );
 for(k=0;k<128;k++)
 {
 sendByte( edidBuff[k] );  
 }		 
 sendByte( tmpChar );  
 
 setRS485( 1 );   
 }
 
 
 
 
 
 
 
 
 
 
 
