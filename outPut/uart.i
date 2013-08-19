
#line 1 "bsp\uart.c" /0
  
#line 1 "BSP\UART.H" /0
 
 
  
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
 
 
#line 1 "bsp\uart.c" /0
 
  
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
 
 
#line 2 "bsp\uart.c" /0
 
  
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
 
 
#line 3 "bsp\uart.c" /0
 
  
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
 
 
#line 4 "bsp\uart.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 struct comBuffCtrl{
 unsigned char rxHead;   
 unsigned char rxTail;   
 
 unsigned char txHead;
 unsigned char txTail;	 
 };
 
 struct comBuffCtrl  uart0Ctl;
 
 unsigned char uart0TxBusy = 0;
 
 unsigned char uart0RxBuff[140];          
 unsigned char uart0TxBuff[14];          
 
 
 void setRS485( uchar k )
 {
 RS485TxEN = k;
 }
 
 
 void memoryInit(void)
 {   
 memset( uart0RxBuff,0,sizeof(uart0RxBuff) );
 }
 
 
 void sendByte(uchar sendData)
 {
 
 
 SBUF = sendData;
 while(TI == 0);
 TI = 0;  
 
 
 }
 
 
 void SendString(uchar *s)
 {
 while(*s)
 {
 sendByte(*s++);
 
 }
 }
 


 
 usart(void) interrupt 4  
 {
 
 unsigned char tmpId;
 unsigned char tmpRec;
 if(RI)   
 {
 
 RI=0;
 
 tmpId   = uart0Ctl.rxTail;
 tmpRec  = (tmpId+1)%140;  
 if(uart0Ctl.rxHead != tmpRec)        
 {
 uart0RxBuff[tmpId] = SBUF;        
 uart0Ctl.rxTail    = tmpRec;      
 
 
 
 
 }
 
 
 }
 
 
 
 
 
 }











 
 void uart0BegainSend(void)
 {
 unsigned char tmpId;
 tmpId = uart0Ctl.txHead;
 if(uart0Ctl.txTail == tmpId) 
 {
 uart0TxBusy = 0;          
 }
 else
 {
 uart0Ctl.txHead = (tmpId+1) % 14;     
 SBUF = uart0TxBuff[tmpId];                         
 while(TI == 0);
 
 if(uart0Ctl.txHead == uart0Ctl.txTail)             
 return;
 else uart0TxBusy = 1;                              
 }	 
 }











 
 unsigned char Com0Putch(unsigned char txChar)
 { 
 unsigned char tmpTail;    
 
 tmpTail = (uart0Ctl.txTail+1)%14;
 if(tmpTail == uart0Ctl.txHead)               
 return 0;                                  
 uart0TxBuff[uart0Ctl.txTail] = txChar;     
 uart0Ctl.txTail = tmpTail;                 
 
 return 1;
 if(uart0TxBusy == 0)
 uart0BegainSend();
 
 }








 
 
 
 
 
 
 
 
 
 
 
 









 
 unsigned char com0CheckRx(void)
 {
 if( uart0Ctl.rxHead != uart0Ctl.rxTail ) return 1; 
 
 return 0;
 }









 
 unsigned char com0GetChar(void)
 {
 unsigned char rtnChar;
 
 rtnChar = uart0RxBuff[ uart0Ctl.rxHead ];
 uart0Ctl.rxHead = (uart0Ctl.rxHead + 1) % 140;
 return rtnChar;
 }
 
 
 void urInit(void)    
 {
 
 PCON &= 0x7F;      
 SCON =  0x50;	     
 AUXR |= 0x40;	     
 AUXR &= 0xFE;	     
 TMOD &= 0x0F;	     
 
 TMOD |= 0x20;	     
 TL1 =   0xee;		   
 TH1 =   0xee;		   
 ET1 =   0;		     
 TR1 =   1;		     
 
 ES = 1;			       
 EA = 1;
 memoryInit();
 
 
 
 }
