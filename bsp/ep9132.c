//#include "ep9132_i2c.h"
//#include "intrins.h"
//#include "delay.h"
#include "reg52.h"
#include "intrins.h"
#include "typedef.h"
#include "ep9132.h"
#include "CommonLibrary.h"

// /*ep9132 I2C Interface*/
// sbit ep9132_SCL = P1^3;
// sbit ep9132_SDA = P1^4;


/**--------------------------------------------------------------------------------
　调用方式：SomeNOP(uchar n)　﹫2010/07/15
　函数说明：IIC延时函数，I2C专用
　---------------------------------------------------------------------------------*/
void ep9132_SomeNOP(uchar n)
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
void ep9132_I2CStart(void)	
{
	//EA=0;
	ep9132_SDA=1;	
	ep9132_SomeNOP(5);
	ep9132_SCL=1;
	ep9132_SomeNOP(5);
	ep9132_SDA=0;
	ep9132_SomeNOP(5);
	ep9132_SCL=0; 
}
/**--------------------------------------------------------------------------------
　调用方式：void　I2CStop(void)　﹫2010/07/15
　函数说明：IIC停止函数，I2C专用
　---------------------------------------------------------------------------------*/
void ep9132_I2CStop(void)
{
	ep9132_SDA=0;	
	ep9132_SomeNOP(5);
	ep9132_SCL=1;
	ep9132_SomeNOP(5);
	ep9132_SDA=1;
	ep9132_SomeNOP(5);
	ep9132_SCL=1;
	ep9132_SomeNOP(5);
	//EA=1;
	ep9132_SomeNOP(5);
	Delay_ms(5);
}

/**--------------------------------------------------------------------------------
　调用方式：bit　I2CAck(void)　﹫2010/07/15
　函数说明：IIC响应函数，I2C专用，等待从器件接收方的应答
　---------------------------------------------------------------------------------*/
bit ep9132_WaitAck(void)
{
	data uchar errtime = 255;//因故障接收方无ACK,超时值为255
	ep9132_SDA=1;
	ep9132_SomeNOP(5);
	ep9132_SCL=0;
	ep9132_SomeNOP(5);
	while(ep9132_SDA)
	{	errtime--;
		if(!errtime)
		{
		 ep9132_I2CStop();
		 //SBUF=SystemError=0x11;
		 return 0;
		}
	}
	ep9132_SCL=1;
    ep9132_SomeNOP(5);
	//SystemError=0;
	ep9132_SCL=0;
	return 1;  
}

/**--------------------------------------------------------------------------------
　调用方式：void　SendAck(void)　﹫2010/07/15
　函数说明：发送响应函数函数，I2C专用，主器件为接收方，从器件为发送方时，应答信号。
　---------------------------------------------------------------------------------*/

void ep9132_SendAck(void)
{
	ep9132_SCL=0;
	ep9132_SomeNOP(4);
	ep9132_SDA=0;
	ep9132_SomeNOP(4);
	ep9132_SCL=1;
	ep9132_SomeNOP(4);
	ep9132_SCL=0;
	ep9132_SomeNOP(4);
}  

/**--------------------------------------------------------------------------------
　调用方式：void　SendNotAck(void)　﹫2010/07/15
　函数说明：发送无响应函数，I2C专用，主器件为接收方，从器件为发送方时，非应答信号。
--------------------------------------------------------------------------------*/
void ep9132_SendNotAck(void)
{
	ep9132_SCL=0;
	ep9132_SomeNOP(4);
	ep9132_SDA=1;
	ep9132_SomeNOP(4);
	ep9132_SCL=1;
	ep9132_SomeNOP(4);
	ep9132_SCL=0;
	ep9132_SomeNOP(4);
}
/**--------------------------------------------------------------------------------
　调用方式：void　I2CSend(uchar　ch)　﹫2010/07/15
　函数说明：IIC发送字节函数，I2C专用
---------------------------------------------------------------------------------*/
void ep9132_I2CSendByte(uchar Data)
{
	uchar i=8;
	while(i--)
	{	
	ep9132_SCL=0;
		ep9132_SomeNOP(1);
		ep9132_SDA=(bit)(Data&0x80);
		Data<<=1;
		ep9132_SomeNOP(5);
		ep9132_SCL=1;
		ep9132_SomeNOP(5);
    }
	    ep9132_SCL=0;
}

/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CReceive(void)　﹫2010/07/15
　函数说明：IIC接收字节函数，I2C专用
---------------------------------------------------------------------------------*/
uchar ep9132_I2CReceiveByte(void)
{
	uchar i=8;
	uchar Data=0;
	ep9132_SDA=1;
	while(i--)
	{
		Data<<=1;
		ep9132_SCL=0;
		ep9132_SomeNOP(5);
		ep9132_SCL=1;
		ep9132_SomeNOP(5);
		Data|=ep9132_SDA;
	}
	ep9132_SCL=0;
	return Data;
}
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CWrite1(void)　﹫2010/07/15
　函数说明：IIC写操作函数，I2C专用
---------------------------------------------------------------------------------*/
/*
void ep9132_I2CWritep(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n)
{
	unsigned int i=0;
	ep9132_I2CStart();
	ep9132_I2CSendByte(DeviceAdd);
  ep9132_WaitAck();
	ep9132_I2CSendByte(PtrAdd);
	ep9132_WaitAck();
	for(i=0;i<n;i++)
		{
			ep9132_I2CSendByte(*Data++);
		    ep9132_WaitAck();
		}
	ep9132_I2CStop();
}
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CWrite(void)　﹫2010/07/15
　函数说明：IIC写操作函数，I2C专用
---------------------------------------------------------------------------------*/

// void ep9132_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data)
// {
// 	ep9132_I2CStart();
// 	ep9132_I2CSendByte(DeviceAdd);
// 	ep9132_WaitAck();
// 	ep9132_I2CSendByte(PtrAdd);
// 	ep9132_WaitAck();
// 	ep9132_I2CSendByte(Data);
// 	ep9132_WaitAck();
// 	ep9132_I2CStop();
// }
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CReceive(void)　﹫2010/07/15
　函数说明：IIC读操作函数，I2C专用
---------------------------------------------------------------------------------*/

bit ep9132_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n)
{
	unsigned int i=0;
	bit tmp;
	ep9132_I2CStart();
	ep9132_I2CSendByte(DeviceAdd);
	tmp = ep9132_WaitAck();
	ep9132_I2CSendByte(PtrAdd);
	tmp = ep9132_WaitAck();
	ep9132_I2CStart();
	ep9132_I2CSendByte(DeviceAdd+1);
	tmp = ep9132_WaitAck();
	for(i=0;i<n;i++)
		{
			*Data++=ep9132_I2CReceiveByte();
			ep9132_SendAck();
		}
	*Data++=ep9132_I2CReceiveByte();
	ep9132_SendNotAck();
	ep9132_I2CStop();
	return tmp;
}
/**--------------------------------------------------------------------------------
　调用方式：uchar　I2CReceive(void)　﹫2010/07/15
　函数说明：IIC读操作函数，I2C专用
---------------------------------------------------------------------------------*/

// unsigned char ep9132_I2CRead(uchar DeviceAdd,uchar PtrAdd)
// {
// 	uchar Data;
// 	ep9132_I2CStart();
// 	ep9132_I2CSendByte(DeviceAdd);
// 	ep9132_WaitAck();
// 	ep9132_I2CSendByte(PtrAdd);
//     ep9132_WaitAck();
// 	ep9132_I2CStart();
// 	ep9132_I2CSendByte(DeviceAdd+1);
// 	ep9132_WaitAck();
// 	Data=ep9132_I2CReceiveByte();
// 	ep9132_SendNotAck();
// 	ep9132_I2CStop();
// 	return Data;
// }


