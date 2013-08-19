
#include "reg52.h"
#include "intrins.h"
#include "typedef.h"
#include "CommonLibrary.h"
#include "io.h"
#include "eeprom.h"
#include "uart.h"

// /*eeprom I2C Interface*/
//  sbit SCL1 = P1^1;
//  sbit SDA1 = P1^2;


/**--------------------------------------------------------------------------------
　调用方式：SomeNOP(uchar n)　﹫2010/07/15
　函数说明：IIC延时函数，I2C专用
　---------------------------------------------------------------------------------*/
void eeprom_SomeNOP(uchar n)
{
	 data uchar i;
	 for(i=0;i<n;i++)
	 {
	   _nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();
	 }
} 

/**--------------------------------------------------------------------------------
　调用方式：void　I2CStart(void)　﹫2010/07/15
　函数说明：IIC启动函数，I2C专用
　---------------------------------------------------------------------------------*/
void eeprom_I2CStart(void)	
{
	//EA=0;
	SDA1=1;	
	eeprom_SomeNOP(5);
	SCL1=1;
	eeprom_SomeNOP(5);
	SDA1=0;
	eeprom_SomeNOP(5);
	SCL1=0; 
}
/**--------------------------------------------------------------------------------
　调用方式：void　I2CStop(void)　﹫2010/07/15
　函数说明：IIC停止函数，I2C专用
　---------------------------------------------------------------------------------*/
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
	//EA=1;
	eeprom_SomeNOP(5);
	Delay_ms(5);
}

/**--------------------------------------------------------------------------------
　调用方式：bit　I2CAck(void)　﹫2010/07/15
　函数说明：IIC响应函数，I2C专用，等待从器件接收方的应答
　---------------------------------------------------------------------------------*/
bit eeprom_WaitAck(void)
{
	data uchar errtime = 255;//因故障接收方无ACK,超时值为255
	SDA1=1;
	eeprom_SomeNOP(5);
	SCL1=0;
	eeprom_SomeNOP(5);
	while(SDA1)      //sda=1,slave is no ack
	{	errtime--;
		if(!errtime)
		{
		 eeprom_I2CStop();
		 //SBUF=0x11;
		 return 0;
		}
	}
	SCL1=1;
    eeprom_SomeNOP(5);
	//SystemError=0;
	SCL1=0;
	return 1;  
}

/**--------------------------------------------------------------------------------
　调用方式：void　SendAck(void)　﹫2010/07/15
　函数说明：发送响应函数函数，I2C专用，主器件为接收方，从器件为发送方时，应答信号。
　---------------------------------------------------------------------------------*/

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

/**--------------------------------------------------------------------------------
　调用方式：void　SendNotAck(void)　﹫2010/07/15
　函数说明：发送无响应函数，I2C专用，主器件为接收方，从器件为发送方时，非应答信号。
--------------------------------------------------------------------------------*/
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
/**--------------------------------------------------------------------------------
　调用方式：void　I2CSend(uchar　ch)　﹫2010/07/15
　函数说明：IIC发送字节函数，I2C专用
---------------------------------------------------------------------------------*/
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

/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CReceive(void)　﹫2010/07/15
　函数说明：IIC接收字节函数，I2C专用
---------------------------------------------------------------------------------*/
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
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CWrite1(void)　﹫2010/07/15
　函数说明：IIC写操作函数，I2C专用
---------------------------------------------------------------------------------*/
/*
void eeprom_I2CWritep(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n)
{
	unsigned int i=0;
	eeprom_I2CStart();
	eeprom_I2CSendByte(DeviceAdd);
    eeprom_WaitAck();
	eeprom_I2CSendByte(PtrAdd);
	eeprom_WaitAck();
	for(i=0;i<n;i++)
		{
			eeprom_I2CSendByte(*Data++);
		    eeprom_WaitAck();
		}
	eeprom_I2CStop();
}
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CWrite(void)　﹫2010/07/15
　函数说明：IIC写操作函数，I2C专用
---------------------------------------------------------------------------------*/

// void eeprom_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data)
// {
// 	eeprom_I2CStart();
// 	eeprom_I2CSendByte(DeviceAdd);
// 	eeprom_WaitAck();
// 	eeprom_I2CSendByte(PtrAdd);
// 	eeprom_WaitAck();
// 	eeprom_I2CSendByte(Data);
// 	eeprom_WaitAck();
// 	eeprom_I2CStop();
// }
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CWrite(void)　﹫2013/07/16
　函数说明：IIC写操作函数，I2C专用
---------------------------------------------------------------------------------*/
void eeprom_I2CWrite_PCF8574(uchar DeviceAdd,uchar Data)
{
	 eeprom_I2CStart();
   eeprom_I2CSendByte(DeviceAdd);
	 eeprom_WaitAck();
	
	 eeprom_I2CSendByte(Data);
	 eeprom_WaitAck();
	 eeprom_I2CStop();
}
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CReceive(void)　﹫2010/07/15
　函数说明：IIC读操作函数，I2C专用
  参数说明：Data指针--存放读取的数据；n---读取的字节数
  返回参数：0--读取失败；1--读取成功
---------------------------------------------------------------------------------*/

bit eeprom_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n)
{
	unsigned int i=0;
	bit tmp;
	eeprom_I2CStart();
	eeprom_I2CSendByte(DeviceAdd);
	tmp = eeprom_WaitAck();  //return 0 or 1
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
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CReceive(void)　﹫2010/07/15
　函数说明：IIC读操作函数，I2C专用
---------------------------------------------------------------------------------*/

// uchar eeprom_I2CRead(uchar DeviceAdd,uchar PtrAdd)
// {
// 	uchar Data;
// 	eeprom_I2CStart();
// 	eeprom_I2CSendByte(DeviceAdd);
// 	eeprom_WaitAck();
// 	eeprom_I2CSendByte(PtrAdd);
//     eeprom_WaitAck();
// 	eeprom_I2CStart();
// 	eeprom_I2CSendByte(DeviceAdd+1);
// 	eeprom_WaitAck();
// 	Data=eeprom_I2CReceiveByte();
// 	eeprom_SendNotAck();
// 	eeprom_I2CStop();
// 	return Data;
// }
/*********************************************************
// Description: 读取PCF8574T
// Argument   : none
// Return     : 8 port status of pcf8574T
// note       : none
*********************************************************/
uchar eeprom_I2CRead_PCF8574T(void)
{
	uchar Data;
	eeprom_I2CStart();  //strat
	eeprom_I2CSendByte(PCF8574_ADDR_R ); //read addr
	eeprom_WaitAck();                    //ack from pcf8574t
	
	Data=eeprom_I2CReceiveByte();      //receive data
	//sendByte(Data);
	eeprom_SendNotAck();               //no ack from master
	eeprom_I2CStop();                  //i2c stop
	return Data;
}

