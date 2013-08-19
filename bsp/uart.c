#include "uart.h"
#include "reg52.h"
#include "string.h"
#include "IO.h"


#ifndef COM_TXBUFF_LEN
#define COM_TXBUFF_LEN    14			 //���ͻ��峤��
#endif

#ifndef COM_RXBUFF_LEN  
#define COM_RXBUFF_LEN    140      //���ջ��峤��
#endif

/*���崮�ڽ��պͷ�������ָ��ṹ��*/
 struct comBuffCtrl{
	 unsigned char rxHead;  //headָ����Զ���λ��;pop����, Head+1
	 unsigned char rxTail;  //tailָ�����д��λ��;Push����,Tail+1
	 
   unsigned char txHead;
   unsigned char txTail;	 
};

struct comBuffCtrl  uart0Ctl;

unsigned char uart0TxBusy = 0;

 unsigned char uart0RxBuff[COM_RXBUFF_LEN];         //ͨѶ���ڽ��ջ�����
 unsigned char uart0TxBuff[COM_TXBUFF_LEN];         //ͨѶ���ڷ��ͻ�����


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
*  �����жϴ���
***************************************************/
usart(void) interrupt 4  
{
  //unsigned char tmpChar;
	unsigned char tmpId;
	unsigned char tmpRec;
	if(RI)  //���������ж�  ���ݽ�����
		{
			
			RI=0;
			//tmpChar = SBUF; //featch data
			tmpId   = uart0Ctl.rxTail;
			tmpRec  = (tmpId+1)%COM_RXBUFF_LEN; //tailָ��+1,���ڻ�β���ָ��0
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
*                             UART0���ͳ���
*
* Descriptoion :UART0�ַ����ͺ���,��SBUFΪ��ʱ,��һ���ַ�
                ������Ӧ�ó�����÷���,֮�����ж�ISR�Զ�����
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
   //�����г���
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
                                      ͨѶ���ڽ������ݼ��
*
* Description: �˺���������������ݣ������ȡ��com0GetChar����ִ��
*
* Arguments  : none
*
* Returns    0:������ 1:������
*
**********************************************************************************************************/
unsigned char com0CheckRx(void)
{
    if( uart0Ctl.rxHead != uart0Ctl.rxTail ) return 1; 

    return 0;
}
/**********************************************************************************************************
                                      ��uart0�ж�ȡһ������
*
* Description: ֻ�е�������������ʱ�ſɵ��ñ�����
*
* Arguments  : none
*
* Returns    : ��ȡ������
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
  
  PCON &= 0x7F;     //�����ʲ����� PCON.7[SMOD]=0
	SCON =  0x50;	    //8λ����,�ɱ䲨����
	AUXR |= 0x40;	    //��ʱ��1ʱ��ΪFosc,��1T
	AUXR &= 0xFE;	    //����1ѡ��ʱ��1Ϊ�����ʷ�����
	TMOD &= 0x0F;	    //�����ʱ��1ģʽλ ���ı�timer0������
	
	TMOD |= 0x20;	    //�趨��ʱ��1Ϊ8λ�Զ���װ��ʽ
	TL1 =   0xee;		  //�趨��ʱ��ֵ
	TH1 =   0xee;		  //�趨��ʱ����װֵ
	ET1 =   0;		    //��ֹ��ʱ��1�ж�
	TR1 =   1;		    //������ʱ��1

	ES = 1;			      //������1�ж�
	EA = 1;
	memoryInit();
	
// 	RS0 = 0;
// 	RS1 = 0;          //@PSW ѡ�����Ĵ�����0
}
