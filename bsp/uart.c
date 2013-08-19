#include "uart.h"
#include "reg52.h"
#include "string.h"
#include "IO.h"


#ifndef COM_TXBUFF_LEN
#define COM_TXBUFF_LEN    14			 //发送缓冲长度
#endif

#ifndef COM_RXBUFF_LEN  
#define COM_RXBUFF_LEN    140      //接收缓冲长度
#endif

/*定义串口接收和发送数据指针结构体*/
 struct comBuffCtrl{
	 unsigned char rxHead;  //head指向可以读的位置;pop操作, Head+1
	 unsigned char rxTail;  //tail指向可以写的位置;Push操作,Tail+1
	 
   unsigned char txHead;
   unsigned char txTail;	 
};

struct comBuffCtrl  uart0Ctl;

unsigned char uart0TxBusy = 0;

 unsigned char uart0RxBuff[COM_RXBUFF_LEN];         //通讯串口接收缓冲区
 unsigned char uart0TxBuff[COM_TXBUFF_LEN];         //通讯串口发送缓冲区


void setRS485( uchar k )
{
	 RS485TxEN = k;
}

/******Initial the RX Buffer*******/
void memoryInit(void)
{   
	memset( uart0RxBuff,0,sizeof(uart0RxBuff) );
}

/******Send a byte*****/
void sendByte(uchar sendData)
{
//	 setRS485( TX_EN );  //enable rs485 tx 
	
   SBUF = sendData;
   while(TI == 0);
   TI = 0;  
	
//	 setRS485( RX_EN );  //enable rs485 rx 
}

/******Send a string*****/
void SendString(uchar *s)
{
  while(*s)
  {
   sendByte(*s++);
   //s++;
  }
}

/**************************************************
*  串口中断处理
***************************************************/
usart(void) interrupt 4  
{
  //unsigned char tmpChar;
	unsigned char tmpId;
	unsigned char tmpRec;
	if(RI)  //接收数据中断  数据进队列
		{
			
			RI=0;
			//tmpChar = SBUF; //featch data
			tmpId   = uart0Ctl.rxTail;
			tmpRec  = (tmpId+1)%COM_RXBUFF_LEN; //tail指针+1,若在环尾则会指向0
			if(uart0Ctl.rxHead != tmpRec)       //if buffer is not full
			 {
				 uart0RxBuff[tmpId] = SBUF;       //put data in rx buffer
				 uart0Ctl.rxTail    = tmpRec;     //rxTail +1
				// sendByte( SBUF );
//				   SBUF = SBUF;
//				   while(TI == 0);
//				   TI = 0; 
       }
// 			 TL0 = 0xF7;		
// 	     TH0 = 0xFF;	 //10uS			 
		}
//	if(TI)  //complete send one byte
//		{
//			TI=0;  //sw clear
//			//uart0BegainSend(); //go on sending
//		}
}
/*
**********************************************************************
*                             UART0发送程序
*
* Descriptoion :UART0字符发送函数,当SBUF为空时,第一个字符
                发送由应用程序调用发送,之后由中断ISR自动调用
* Arguments    :none
* Return       :none
* Note         :should consider the re-entry of function,please check
                uart0TxBusy,which must be clear in interrupt ISR
**********************************************************************
*/
void uart0BegainSend(void)
{
	 unsigned char tmpId;
	 tmpId = uart0Ctl.txHead;
	 if(uart0Ctl.txTail == tmpId)//buffer is empty!  data in tx buffer is send completly
	 {
		  uart0TxBusy = 0;         //send complete,bus is idle
   }
	 else
	 {
		  uart0Ctl.txHead = (tmpId+1) % COM_TXBUFF_LEN;    //txHead+1
		  SBUF = uart0TxBuff[tmpId];                        //featch data to setialPort data buffer SBUF
		  while(TI == 0);
		 
		  if(uart0Ctl.txHead == uart0Ctl.txTail)            //if buffer empety!
				return;
			else uart0TxBusy = 1;                             //bus busy
   }	 
}
/*
**********************************************************************
*                             put data to RX Buffer
*
* Descriptoion :put data to uart0 buffer,also send data
                
* Arguments    :data to  be send
* Return       :1-->success; 0-->buffer is full
* Note         :should consider the re-entry of function,please check
                uart0TxBusy,which must be clear in interrupt ISR
**********************************************************************
*/
unsigned char Com0Putch(unsigned char txChar)
{ 
	 unsigned char tmpTail;    
   //进队列程序
   tmpTail = (uart0Ctl.txTail+1)%COM_TXBUFF_LEN;
   if(tmpTail == uart0Ctl.txHead)              //Tail+1 = Head, buffer is full
		 return 0;                                  
   uart0TxBuff[uart0Ctl.txTail] = txChar;    //buffer is not full
   uart0Ctl.txTail = tmpTail;                //buffer head +1	
	 
	 return 1;
 	 if(uart0TxBusy == 0)
 		 uart0BegainSend();
 	 //return 1;
}
/*
******************************************************************
*                   send string to tx buffer
* Description: put string to uart0  tx buffer
* Arguement  : the pointer of the string!
* Return     : none
* Note       : none
******************************************************************
*/
// void com0SendStr(unsigned char *pStr)
// {
// 	 unsigned char txChar;
// 	
// 	 while(1)
// 	 {
// 		  txChar = *pStr++;
// 		  if(txChar == 0) break; //quit while(1)
//      	while(0 == Com0Putch(txChar));	  
//    }
// }
/**********************************************************************************************************
                                      通讯串口接收数据检测
*
* Description: 此函数仅检测有无数据，具体读取由com0GetChar函数执行
*
* Arguments  : none
*
* Returns    0:无数据 1:有数据
*
**********************************************************************************************************/
unsigned char com0CheckRx(void)
{
    if( uart0Ctl.rxHead != uart0Ctl.rxTail ) return 1; 

    return 0;
}
/**********************************************************************************************************
                                      从uart0中读取一个数据
*
* Description: 只有当串口中有数据时才可调用本函数
*
* Arguments  : none
*
* Returns    : 读取的数据
*
**********************************************************************************************************/
unsigned char com0GetChar(void)
{
    unsigned char rtnChar;

    rtnChar = uart0RxBuff[ uart0Ctl.rxHead ];
    uart0Ctl.rxHead = (uart0Ctl.rxHead + 1) % COM_RXBUFF_LEN;
    return rtnChar;
}


void urInit(void)   //19200bps@11.0592MHz
{
  
  PCON &= 0x7F;     //波特率不倍速 PCON.7[SMOD]=0
	SCON =  0x50;	    //8位数据,可变波特率
	AUXR |= 0x40;	    //定时器1时钟为Fosc,即1T
	AUXR &= 0xFE;	    //串口1选择定时器1为波特率发生器
	TMOD &= 0x0F;	    //清除定时器1模式位 不改变timer0的设置
	
	TMOD |= 0x20;	    //设定定时器1为8位自动重装方式
	TL1 =   0xee;		  //设定定时初值
	TH1 =   0xee;		  //设定定时器重装值
	ET1 =   0;		    //禁止定时器1中断
	TR1 =   1;		    //启动定时器1

	ES = 1;			      //允许串口1中断
	EA = 1;
	memoryInit();
	
// 	RS0 = 0;
// 	RS1 = 0;          //@PSW 选择工作寄存器组0
}
