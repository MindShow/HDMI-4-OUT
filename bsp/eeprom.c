
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
�����÷�ʽ��SomeNOP(uchar n)����2010/07/15
������˵����IIC��ʱ������I2Cר��
��---------------------------------------------------------------------------------*/
void eeprom_SomeNOP(uchar n)
{
	 data uchar i;
	 for(i=0;i<n;i++)
	 {
	   _nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();_nop_();
	 }
} 

/**--------------------------------------------------------------------------------
�����÷�ʽ��void��I2CStart(void)����2010/07/15
������˵����IIC����������I2Cר��
��---------------------------------------------------------------------------------*/
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
�����÷�ʽ��void��I2CStop(void)����2010/07/15
������˵����IICֹͣ������I2Cר��
��---------------------------------------------------------------------------------*/
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
�����÷�ʽ��bit��I2CAck(void)����2010/07/15
������˵����IIC��Ӧ������I2Cר�ã��ȴ����������շ���Ӧ��
��---------------------------------------------------------------------------------*/
bit eeprom_WaitAck(void)
{
	data uchar errtime = 255;//����Ͻ��շ���ACK,��ʱֵΪ255
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
�����÷�ʽ��void��SendAck(void)����2010/07/15
������˵����������Ӧ����������I2Cר�ã�������Ϊ���շ���������Ϊ���ͷ�ʱ��Ӧ���źš�
��---------------------------------------------------------------------------------*/

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
�����÷�ʽ��void��SendNotAck(void)����2010/07/15
������˵������������Ӧ������I2Cר�ã�������Ϊ���շ���������Ϊ���ͷ�ʱ����Ӧ���źš�
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
�����÷�ʽ��void��I2CSend(uchar��ch)����2010/07/15
������˵����IIC�����ֽں�����I2Cר��
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
�����÷�ʽ��uchar��I2CReceive(void)����2010/07/15
������˵����IIC�����ֽں�����I2Cר��
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
�����÷�ʽ��uchar��I2CWrite1(void)����2010/07/15
������˵����IICд����������I2Cר��
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
�����÷�ʽ��uchar��I2CWrite(void)����2010/07/15
������˵����IICд����������I2Cר��
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
�����÷�ʽ��uchar��I2CWrite(void)����2013/07/16
������˵����IICд����������I2Cר��
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
�����÷�ʽ��uchar��I2CReceive(void)����2010/07/15
������˵����IIC������������I2Cר��
  ����˵����Dataָ��--��Ŷ�ȡ�����ݣ�n---��ȡ���ֽ���
  ���ز�����0--��ȡʧ�ܣ�1--��ȡ�ɹ�
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
�����÷�ʽ��uchar��I2CReceive(void)����2010/07/15
������˵����IIC������������I2Cר��
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
// Description: ��ȡPCF8574T
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

