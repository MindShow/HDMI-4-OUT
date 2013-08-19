
#line 1 "app\main.c" /0






 
 
  
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
 
 
#line 9 "app\main.c" /0
 
  
#line 1 ".\BSP\UART.H" /0
 
 
  
#line 1 "\USERS\LG\DESKTOP\1616HDOUTPUT_CODE\BSP\TYPEDEF.H" /0
 
 
 
 
 
 
 
 
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
 
 
 
 
 
 
 
 
#line 3 ".\BSP\UART.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
#line 10 "app\main.c" /0
 
  
#line 1 ".\BSP\TYPEDEF.H" /0
 
#line 2 ".\BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 11 "app\main.c" /0
#line 11 "app\main.c" /0
 
  
#line 1 ".\BSP\IO.H" /0
 
 
 
  
#line 1 "D:\KEIL\C51\INC\REG52.H" /0






 
 
 
#line 10 "D:\KEIL\C51\INC\REG52.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 4 ".\BSP\IO.H" /0
#line 4 ".\BSP\IO.H" /0
 
 
 
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
 
 
#line 12 "app\main.c" /0
 
  
#line 1 ".\BSP\EP9132.H" /0
 
 
  
#line 1 "\USERS\LG\DESKTOP\1616HDOUTPUT_CODE\BSP\TYPEDEF.H" /0
 
#line 2 "\USERS\LG\DESKTOP\1616HDOUTPUT_CODE\BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 3 ".\BSP\EP9132.H" /0
#line 3 ".\BSP\EP9132.H" /0
 
  
#line 1 "D:\KEIL\C51\INC\REG52.H" /0






 
 
 
#line 10 "D:\KEIL\C51\INC\REG52.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 4 ".\BSP\EP9132.H" /0
#line 4 ".\BSP\EP9132.H" /0
 
 
 
 sbit ep9132_SCL = P1^3;
 sbit ep9132_SDA = P1^4;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void  EP9132_SomeNOP(uchar n);
 
 void  EP9132_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data);
 unsigned char EP9132_I2CRead(uchar DeviceAdd,uchar PtrAdd);
 bit ep9132_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n);
 void  EP9132_I2CWritep(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n); 
 
 
#line 13 "app\main.c" /0
 
  
#line 1 "APP\COMMONLIBRARY.H" /0
 
 
 
  
#line 1 ".\BSP\TYPEDEF.H" /0
 
#line 2 ".\BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 4 "APP\COMMONLIBRARY.H" /0
#line 4 "APP\COMMONLIBRARY.H" /0
 
 
 void Delay_ms(ushort i);
 
 
 
 
 
#line 14 "app\main.c" /0
 
  
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
 
 
 
#line 15 "app\main.c" /0
 
  
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
 
 
#line 16 "app\main.c" /0
 
  
#line 1 ".\BSP\FEEDBACK.H" /0
 
 
 
  
#line 1 "\USERS\LG\DESKTOP\1616HDOUTPUT_CODE\BSP\TYPEDEF.H" /0
 
#line 2 "\USERS\LG\DESKTOP\1616HDOUTPUT_CODE\BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 4 ".\BSP\FEEDBACK.H" /0
#line 4 ".\BSP\FEEDBACK.H" /0
 
 
 
 
 
 
 extern unsigned char code portTypeArray[4];
 extern unsigned char xdata edidBuff[128];
 
 void uartReturn(unsigned char);
 
 
 void sendPortType(unsigned char childBoardAddr,unsigned char *ptr);
 uchar checkPortType(uchar port);
 uchar checkConnection(uchar port);
 bit edidRead1(void);
 bit edidRead2();
 
 void feedBackEdid(unsigned char CMD,unsigned char childBoardAddr,unsigned char excuteResult,unsigned char *edidBuff);
 
 
 
#line 17 "app\main.c" /0
 
 
 static void cmdProcess(void);   
 
 
 
 
 
 
 unsigned char childBoardAddr = 0;
 
 unsigned char timeOutFlag = 0;
 
 static struct cmdStrType{  
 unsigned char cmdPos;
 unsigned char cmdLen;
 unsigned char cmdStep;
 unsigned char cmd;
 unsigned char addr;
 unsigned char cmdXor;
 
 unsigned char cmdBuf[150];
 }cmdStr;




 
 static void comCmdInit(void)
 {
 memset( &cmdStr,0,sizeof(struct cmdStrType) );
 }
 
 static struct uartStr{    
 unsigned char cmdHead;
 unsigned char addr;
 unsigned char cmd;
 unsigned char dataLen;
 unsigned char *dataBuff;	
 };
 
 
 
 
 
 
 
 void Init_T0(void)
 {
 AUXR &= 0x7f;	 
 
 TMOD &= 0xF0;  
 TMOD |= 0x01;   
 TH0  = 0x04;
 TL0  = 0x00;  
 
 
 TF0  = 0;	 
 
 EA   = 1;   
 ET0  = 1;   
 
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 static void cmdCheckProc(void)
 {	 
 unsigned tmpChar;
 
 while(1)
 {
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if( com0CheckRx() == 0) break;
 tmpChar = com0GetChar();
 
 switch(cmdStr.cmdStep)
 {
 case 0:				    
 if( tmpChar != 0xAA ) break;
 cmdStr.cmdStep++;
 
 cmdStr.cmdXor += tmpChar;  
 cmdStr.cmdPos = 0;
 
 continue;
 case 1:				  
 
 
 cmdStr.addr = tmpChar;
 cmdStr.cmdXor += tmpChar;  
 cmdStr.cmdStep++;
 
 break;				 
 case 2:            
 cmdStr.cmd = tmpChar;  
 cmdStr.cmdXor += tmpChar;  
 cmdStr.cmdStep++;
 
 break;
 case 3:					   
 if( (tmpChar > 150) | (tmpChar == 0) )
 { comCmdInit(); break;}	
 cmdStr.cmdLen = tmpChar;
 cmdStr.cmdXor += tmpChar;  
 cmdStr.cmdStep++;
 
 break;						
 case 4:				 
 if( cmdStr.cmdPos < cmdStr.cmdLen )
 {
 cmdStr.cmdBuf[cmdStr.cmdPos] = tmpChar;
 cmdStr.cmdXor += tmpChar;  
 cmdStr.cmdPos++;
 if( cmdStr.cmdPos >= cmdStr.cmdLen ) 
 cmdStr.cmdStep++;  
 
 break;								
 }
 else
 { comCmdInit(); break; }	
 case 5:
 if( cmdStr.cmdXor != tmpChar )  
 { sendByte(0x36); 
 memoryInit();
 comCmdInit();break; }	
 else
 {  
 cmdProcess(); comCmdInit(); 
 }
 
 default:
 cmdStr.cmdXor = 0;
 cmdStr.cmdPos = 0;	
 
 cmdStr.cmdStep = 0;	
 break;			 
 }break;
 }
 }
 
 
 
 
 
 
 
 static void cmdProcess(void)   
 {
 unsigned char CardCS = (P2&0x08);  
 if( 0x08 == CardCS )                  
 {;}
 
 else
 {
 
 
 switch(cmdStr.cmd)
 {
 case 0x30:           
 childBoardAddr = cmdStr.cmdBuf[0];
 uartReturn(childBoardAddr);  
 break;
 case 0x31:    
 sendPortType(cmdStr.addr,portTypeArray);
 
 break;
 case 0x34:            
 
 if(checkPortType(cmdStr.cmdBuf[0]))             
 {
 
 
 if( checkConnection(cmdStr.cmdBuf[0]) )
 {
 
 ddcChannelSel( cmdStr.cmdBuf[0] );        
 
 if( 1 == edidRead1() )                    
 
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x0,edidBuff);
 else {
 memset(edidBuff,0,128);
 
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x03,edidBuff);  
 }										 
 }
 
 else{
 memset(edidBuff,0,128);
 
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x01,edidBuff);         
 }
 
 }
 else{                         
 
 memset(edidBuff,0,128);
 
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x02,edidBuff);
 }
 break;
 case 0x35:   
 
 if(checkPortType(cmdStr.cmdBuf[0]))             
 {
 
 
 if( checkConnection(cmdStr.cmdBuf[0]) )
 {
 
 ddcChannelSel( cmdStr.cmdBuf[0] );        
 
 if( 1 == edidRead2() )                    
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x0,edidBuff);
 else {
 memset(edidBuff,0,128);
 
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x03,edidBuff);  
 }										 
 }
 else{
 memset(edidBuff,0,128);
 
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x01,edidBuff);         
 }
 
 }
 else{                         
 
 memset(edidBuff,0,128);	
 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x02,edidBuff);
 }         
 
 break;
 default: break;				 
 }
 }
 
 }
 
 void cmdProcess1(void)
 {
 sendByte('a');
 }
 
 void main(void)
 {
 setRS485( 1 );   
 urInit();	    
 
 
 BoardInit();  
 
 comCmdInit(); 
 
 
 
 
 while(1)
 {
 
 cmdCheckProc();
 
 }
 
 
 }	 
