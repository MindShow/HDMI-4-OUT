
#line 1 "bsp\gv7600.c" /0
  
#line 1 "BSP\GV7600.H" /0
 
 
 
 
 
 
 






















 
 
 extern  unsigned int  GV7600_Read_Buff[10];
 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 extern void          gv7600_init(void);
 extern unsigned int  gv7600_spi_receive(void);
 extern void          gv7600_spi_send(unsigned int Data);
 extern void    		 gv7600_spi_read(unsigned int Addr) ;
 extern void    		 gv7600_spi_write(unsigned int addr,unsigned int Data);
 extern void          GV7600_RateSet(void);
#line 1 "bsp\gv7600.c" /0
 
  
#line 1 "BSP\SII9135.H" /0

















 
 
 
 
  
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
 
 
 
 
 
 
 
 
#line 22 "BSP\SII9135.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 




 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 
 
 


 
 
 



 
 
 



 
 
 



 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 void  sii9135_SomeNOP(uchar n);
 void  sii9135_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data);
 uchar sii9135_I2CRead(uchar DeviceAdd,uchar PtrAdd);
 void  sii9135_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n);	 
 void  sii9135_I2CWritep(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n); 
 unsigned char Video_Filed_Frequency_In9135(void);
 unsigned char PCLK_Detection(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 2 "bsp\gv7600.c" /0
 
  
#line 1 "BSP\IO.H" /0
 
 
 
  
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
 
 
#line 4 "BSP\IO.H" /0
 
 
 sbit LED_SWITCH = P0^0;
 sbit Hotplug = P0^3;
 sbit EP9142_Reset = P2^1;
 
 sbit SII9135_RESET = P1^6;
 
 
 sbit gv7600_Rate_Sel0 = P3^2;
 sbit gv7600_Rate_Sel1 = P0^1;
 
 
 
 
 sbit SDOUT  = P3^3;
 sbit SCLK   = P3^4;
 sbit CS    = P3^5;
 sbit SDIN   = P2^4;
 
 
 sbit gv7600_861EN =	 P1^1;	    
 sbit ASI		  =	 P3^7;	    
 sbit PRO_EN       =	 P2^6;	    
 sbit DETECT_TRS   =	 P1^2;	    
 sbit ANC_BLANK   =	 P1^0;	    
 
 sbit gv7600_RESET_3     =	 P2^5;	    
 sbit AUDIO_INT           =	 P2^7;	    
 
 
 
 
#line 3 "bsp\gv7600.c" /0
 
  
#line 1 "D:\KEIL\C51\INC\REG52.H" /0






 
 
 
#line 10 "D:\KEIL\C51\INC\REG52.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 4 "bsp\gv7600.c" /0
#line 4 "bsp\gv7600.c" /0
 
  
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
 
 
 
#line 5 "bsp\gv7600.c" /0
 
  
#line 1 ".\APP\COMMONLIBRARY.H" /0
 
 
 
  
#line 1 "BSP\TYPEDEF.H" /0
 
#line 2 "BSP\TYPEDEF.H" /1
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
#line 4 ".\APP\COMMONLIBRARY.H" /0
#line 4 ".\APP\COMMONLIBRARY.H" /0
 
 
 void Delay_ms(ushort i);
 
 
 
 
 
#line 6 "bsp\gv7600.c" /0
 
 
 
 
 


 
 void gv7600_init(void)
 {
 
 
 gv7600_861EN = 1;
 ASI = 0;
 
 gv7600_RESET_3 = 0;
 Delay_ms(10);
 gv7600_RESET_3 = 1;
 Delay_ms(10);
 
 
 
 }
 
 void GV7600_RateSet(void)
 {
 unsigned pclk_flag = PCLK_Detection();
 if(pclk_flag==1)
 {
 gv7600_Rate_Sel0 = 0;
 gv7600_Rate_Sel1 = 1; 
 }
 else if(pclk_flag==2)
 {
 gv7600_Rate_Sel0 = 0;
 gv7600_Rate_Sel1 = 0; 
 } 
 }
 
 
 



 
 unsigned int gv7600_spi_receive(void)
 {
 unsigned char i = 0;
 unsigned int tempData = 0;
 for(i=0;i<16;i++)
 {
 tempData <<= 1;
 tempData |= SDOUT;
 
 SCLK = 1;
 Delay_ms(1);
 SCLK = 0;
 Delay_ms(1);
 }
 return tempData;
 }


 
 void gv7600_spi_send(unsigned int Data)
 {
 unsigned char i = 0;
 for(i=0;i<16;i++)
 {
 if(Data&0x8000) 
 SDIN = 1;
 else
 SDIN = 0;
 Delay_ms(1);
 
 SCLK = 1;
 Delay_ms(1);
 SCLK = 0;
 
 Data <<= 1;
 }
 }


 
 void gv7600_spi_read(unsigned int Addr)
 {
 CS = 1;
 SCLK = 0;
 
 Delay_ms(1);
 CS = 0;  	   
 
 gv7600_spi_send(Addr|0x8000);	 
 Delay_ms(2);
 GV7600_Read_Buff[Addr]=gv7600_spi_receive();
 Delay_ms(1);
 
 CS = 1;
 SCLK = 0;
 }
 



 
 void gv7600_spi_write(unsigned int addr,unsigned int Data)
 {
 CS = 0;
 
 _nop_();
 gv7600_spi_send(addr);
 gv7600_spi_send(Data);
 _nop_();
 
 CS = 1;
 }
#error *** WARNING C316 IN LINE 122 OF bsp\gv7600.c: unterminated conditionals
