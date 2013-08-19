#include "EP9132.h"
#include "eeprom.h"
#include "typedef.h"
#include "uart.h"
#include "CommonLibrary.h"
#include "io.h"




/********************************************
*
*  Init IC on Board and MCU IO Ports
*
********************************************/
void BoardInit(void)
{
	//LED Control
	LED1 = 0;
	LED2 = 0;
	
	//EP6132 reset pin control
	tx1_rst = 1;
	tx2_rst = 1;
	tx3_rst = 1;
	tx4_rst = 1;
	
	//
	cardIn_Init = 1;
	cardInCS    = 1;
	
	//DDC CEC pin
	P1_CEC = 1;
	P2_CEC = 1;
	P3_CEC = 1;
	P4_CEC = 1;
	
	//DDC channel select
	HC4052enable = 1;    /*no channel selected*/
	s0 = 1;
	s1 = 1;
	
	SDA  = 1; SCL  = 1;
	SDA1 = 1; SCL1 = 1;
	
	IORED_INT = 1;  //PCF8574
	eeprom_I2CWrite_PCF8574(PCF8574_ADDR_W,0xff); //4 port HDP全部拉高,没有显示器插入时,EP9132不输出信号
 	RS485TxEN = 1; //enable receive
// 	RS485_TX_EN = 0; //enable transimite
}

//*************************************************
// Description : DDC Channel select
// Arguement   : channel no (1,2,3,4)
// Return      : none
// Note        : 第一port编号为： 1
//*************************************************
void ddcChannelSel(unsigned char ch)
{
	 HC4052enable = 0;  //firstly, enable 74HC4052
	 if(ch == 1)
	   {s1 = 0; s0 = 0;}  //port 1
   else if(ch == 2)
	   {s1 = 0; s0 = 1;}
	 else if(ch == 3)
	   {s1 = 1; s0 = 0;}
	 else if(ch == 4)
	   {s1 = 1; s0 = 1;}
}
//************************************************************
// Description : control hotplug pin of 4 output ports
// Arguement   : channel no(1,2,3,4)
// Return      : no 
// Note        : 第一port编号为： 1
//               在monitor插入情况下,EP9132 HP会拉高;函数失效
//************************************************************
void  hotplugCtrl(unsigned char ch)
{  
	 if(ch == 1)
	 {
		    eeprom_I2CWrite_PCF8574(PCF8574_ADDR_W,0x0);  //9132 hotplug=1  9132输出
		   //eeprom_I2CWrite_PCF8574(PCF8574_ADDR_W,0xff); //9132 hotplug=0  9132不输出
   }
	 else
	 {;}

}
//******************************************************
// Description : control reset pin of 4 pcs ep9132
// Arguement   : channel no(1,2,3,4)
// Return      : no 
// Note        : 第一port编号为： 1
//******************************************************
void resetEp9132(unsigned char ch)
{
	 if(ch == 1)  //port 1
	 { 
	   tx1_rst = 0;
	   Delay_ms(100);
		 tx1_rst = 1;
	 }
	 else if(ch == 2)
	 { 
	   tx2_rst = 0;
	   Delay_ms(100);
		 tx2_rst = 1;
	 } 
	 else if(ch == 3)
	 {
		 tx3_rst = 0;
	   Delay_ms(100);
		 tx3_rst = 1;
   }
	 else if(ch == 4)
	 {
		 tx4_rst = 0;
	   Delay_ms(100);
		 tx4_rst = 1;
   } 
}

