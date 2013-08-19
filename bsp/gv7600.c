#include"gv7600.h"
#include"sii9135.h"
#include"IO.H"
#include<reg52.h>
#include "intrins.h"
#include "CommonLibrary.h"

//static unsigned int  GV7600_Read_Buff[10] = {0};


/*************************************************
*    gv7600 ctrl pin inition
**************************************************/
void gv7600_init(void)
{
  // gv7600_Rate_Sel0 = low;
  // gv7600_Rate_Sel1 = high;
   gv7600_861EN = high;
   ASI = low;

   gv7600_RESET_3 = 0;
   Delay_ms(10);
   gv7600_RESET_3 = 1;
   Delay_ms(10);
   //PRO_EN = high;
   //DETECT_TRS = low;
   //ANC_BLANK = low;
}
/*************GV7600 Rate Selection*****************/
void GV7600_RateSet(void)
{
   unsigned pclk_flag = PCLK_Detection();
   if(pclk_flag==1)
   {
     gv7600_Rate_Sel0 = low;
	   gv7600_Rate_Sel1 = high; 
   }
   else if(pclk_flag==2)
   {
     gv7600_Rate_Sel0 = low;
	   gv7600_Rate_Sel1 = low; 
   } 
}
//Write: command word bit15:R/W bit set LOW; 寄存器地址不变
//read:  地址+0x8000

/*************************************************
*  		spi read-back data from gv7600
*       推荐采用自动增加模式,一次至少读取2个寄存器
**************************************************/
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
/*************************************************
*  			 spi send word data to  gv7600
**************************************************/
void gv7600_spi_send(unsigned int Data)
{
   unsigned char i = 0;
   for(i=0;i<16;i++)
   {
	  if(Data&0x8000)//判断高位是否为1，先发送MSB
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
/************************************************
*  把读取到的寄存器放到数组里面，经串口发送出来
*************************************************/
void gv7600_spi_read(unsigned int Addr)
{
       CS = 1;
	   SCLK = 0;
	   
	   Delay_ms(1);
	   CS = 0;  	   

	   gv7600_spi_send(Addr|0x8000);	//auto-increment
	   Delay_ms(2);
	   GV7600_Read_Buff[Addr]=gv7600_spi_receive();
	   Delay_ms(1);
	
	   CS = 1;
	   SCLK = 0;
}

/*************************************************
*  功能： addr寄存器写入data
*  call： gv7600_spi_send(INT16U Data)			 
**************************************************/
void gv7600_spi_write(unsigned int addr,unsigned int Data)
{
    CS = 0;

	_nop_();
	gv7600_spi_send(addr);
    gv7600_spi_send(Data);
	_nop_();

	CS = 1;
}
