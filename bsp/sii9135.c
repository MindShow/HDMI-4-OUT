
 #include "intrins.h"
 #include "reg52.h"
#include "intrins.h"
#include "typedef.h"
#include "CommonLibrary.h"

/*si9135 I2C Interface*/
  sbit sii9135_SCL = P1^4;
  sbit sii9135_SDA = P1^3;


/**--------------------------------------------------------------------------------
�����÷�ʽ��SomeNOP(uchar n)����2010/07/15
������˵����IIC��ʱ������I2Cר��
��---------------------------------------------------------------------------------*/
void sii9135_SomeNOP(uchar n)
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
void sii9135_I2CStart(void)	
{
	//EA=0;
	sii9135_SDA=1;	
	sii9135_SomeNOP(5);
	sii9135_SCL=1;
	sii9135_SomeNOP(5);
	sii9135_SDA=0;
	sii9135_SomeNOP(5);
	sii9135_SCL=0; 
}
/**--------------------------------------------------------------------------------
�����÷�ʽ��void��I2CStop(void)����2010/07/15
������˵����IICֹͣ������I2Cר��
��---------------------------------------------------------------------------------*/
void sii9135_I2CStop(void)
{
	sii9135_SDA=0;	
	sii9135_SomeNOP(5);
	sii9135_SCL=1;
	sii9135_SomeNOP(5);
	sii9135_SDA=1;
	sii9135_SomeNOP(5);
	sii9135_SCL=1;
	sii9135_SomeNOP(5);
	//EA=1;
	sii9135_SomeNOP(5);
	Delay_ms(5);
}

/**--------------------------------------------------------------------------------
�����÷�ʽ��bit��I2CAck(void)����2010/07/15
������˵����IIC��Ӧ������I2Cר�ã��ȴ����������շ���Ӧ��
��---------------------------------------------------------------------------------*/
bit sii9135_WaitAck(void)
{
	data uchar errtime = 255;//����Ͻ��շ���ACK,��ʱֵΪ255
	sii9135_SDA=1;
	sii9135_SomeNOP(5);
	sii9135_SCL=0;
	sii9135_SomeNOP(5);
	while(sii9135_SDA)
	{	errtime--;
		if(!errtime)
		{
		 sii9135_I2CStop();
		 //SBUF=SystemError=0x11;
		 return 0;
		}
	}
	sii9135_SCL=1;
    sii9135_SomeNOP(5);
	//SystemError=0;
	sii9135_SCL=0;
	return 1;  
}

/**--------------------------------------------------------------------------------
�����÷�ʽ��void��SendAck(void)����2010/07/15
������˵����������Ӧ����������I2Cר�ã�������Ϊ���շ���������Ϊ���ͷ�ʱ��Ӧ���źš�
��---------------------------------------------------------------------------------*/
void sii9135_SendAck(void)
{
	sii9135_SCL=0;
	sii9135_SomeNOP(4);
	sii9135_SDA=0;
	sii9135_SomeNOP(4);
	sii9135_SCL=1;
	sii9135_SomeNOP(4);
	sii9135_SCL=0;
	sii9135_SomeNOP(4);
}  

/**--------------------------------------------------------------------------------
�����÷�ʽ��void��SendNotAck(void)����2010/07/15
������˵������������Ӧ������I2Cר�ã�������Ϊ���շ���������Ϊ���ͷ�ʱ����Ӧ���źš�
--------------------------------------------------------------------------------*/
void sii9135_SendNotAck(void)
{
	sii9135_SCL=0;
	sii9135_SomeNOP(4);
	sii9135_SDA=1;
	sii9135_SomeNOP(4);
	sii9135_SCL=1;
	sii9135_SomeNOP(4);
	sii9135_SCL=0;
	sii9135_SomeNOP(4);
}
/**--------------------------------------------------------------------------------
�����÷�ʽ��void��I2CSend(uchar��ch)����2010/07/15
������˵����IIC�����ֽں�����I2Cר��
---------------------------------------------------------------------------------*/
void sii9135_I2CSendByte(uchar Data)
{
	uchar i=8;
	while(i--)
	{	
	    sii9135_SCL=0;
	    sii9135_SomeNOP(1);
		sii9135_SDA=(bit)(Data&0x80);
		Data<<=1;
		sii9135_SomeNOP(5);
		sii9135_SCL=1;
		sii9135_SomeNOP(5);
    }
	    sii9135_SCL=0;
}

/**--------------------------------------------------------------------------------
�����÷�ʽ��uchar��I2CReceive(void)����2010/07/15
������˵����IIC�����ֽں�����I2Cר��
---------------------------------------------------------------------------------*/
uchar sii9135_I2CReceiveByte(void)
{
	uchar i=8;
	uchar Data=0;
	sii9135_SDA=1;
	while(i--)
	{
		Data<<=1;
		sii9135_SCL=0;
		sii9135_SomeNOP(5);
		sii9135_SCL=1;
		sii9135_SomeNOP(5);
		Data|=sii9135_SDA;
	}
	sii9135_SCL=0;
	return Data;
}
/**--------------------------------------------------------------------------------
�����÷�ʽ��uchar��I2CWrite1(void)����2010/07/15
������˵����IICд����������I2Cר��
---------------------------------------------------------------------------------*/
void sii9135_I2CWritep(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n)
{
	unsigned int i=0;
	sii9135_I2CStart();
	sii9135_I2CSendByte(DeviceAdd);
    sii9135_WaitAck();
	sii9135_I2CSendByte(PtrAdd);
	sii9135_WaitAck();
	for(i=0;i<n;i++)
		{
			sii9135_I2CSendByte(*Data++);
		    sii9135_WaitAck();
		}
	sii9135_I2CStop();
}
/**--------------------------------------------------------------------------------
�����÷�ʽ��uchar��I2CWrite(void)����2010/07/15
������˵����IICд����������I2Cר��
---------------------------------------------------------------------------------*/

void sii9135_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data)
{
	sii9135_I2CStart();
	sii9135_I2CSendByte(DeviceAdd);
	sii9135_WaitAck();
	sii9135_I2CSendByte(PtrAdd);
	sii9135_WaitAck();
	sii9135_I2CSendByte(Data);
	sii9135_WaitAck();
	sii9135_I2CStop();
}
/**--------------------------------------------------------------------------------
�����÷�ʽ��uchar��I2CReceive(void)����2010/07/15
������˵����IIC������������I2Cר��
---------------------------------------------------------------------------------*/
void sii9135_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n)
{
	unsigned int i=0;
    sii9135_I2CStart();
	sii9135_I2CSendByte(DeviceAdd);
	sii9135_WaitAck();
	sii9135_I2CSendByte(PtrAdd);
	sii9135_WaitAck();
	sii9135_I2CStart();
	sii9135_I2CSendByte(DeviceAdd+1);
	sii9135_WaitAck();
	for(i=0;i<n;i++)
		{
			*Data++=sii9135_I2CReceiveByte();
			sii9135_SendAck();
		}
	*Data++=sii9135_I2CReceiveByte();
	sii9135_SendNotAck();
	sii9135_I2CStop();
}
/**--------------------------------------------------------------------------------
�����÷�ʽ��uchar��I2CReceive(void)����2010/07/15
������˵����IIC������������I2Cר��
---------------------------------------------------------------------------------*/

uchar sii9135_I2CRead(uchar DeviceAdd,uchar PtrAdd)
{
	uchar Data;
	sii9135_I2CStart();
	sii9135_I2CSendByte(DeviceAdd);
	sii9135_WaitAck();
	sii9135_I2CSendByte(PtrAdd);
    sii9135_WaitAck();
	sii9135_I2CStart();
	sii9135_I2CSendByte(DeviceAdd+1);
	sii9135_WaitAck();
	Data=sii9135_I2CReceiveByte();
	sii9135_SendNotAck();
	sii9135_I2CStop();
	return Data;
}
/**************************************************************
*  ���ܣ�����HDMIԴ��֡��
*  Caculate the Frenqucy of filed of video input to sii9135
*  return value: 24,25,30,50,60HZ
**************************************************************/
unsigned char Video_Filed_Frequency_In9135(void)
 {
    unsigned long T_line = 0;
	unsigned long T_filed = 0;
	unsigned char F = 0;
	//unsigned char H_RESH = sii9135_I2CRead(0x60,0x3B);
	//unsigned char H_RESL = sii9135_I2CRead(0x60,0x3A);
	unsigned int H_RES =  (((sii9135_I2CRead(0x60,0x3B)&0x1F)<<8)|sii9135_I2CRead(0x60,0x3A));
	//unsigned char V_RESH = sii9135_I2CRead(0x60,0x3D);
	//unsigned char V_RESL = sii9135_I2CRead(0x60,0x3C);
	unsigned int V_RES =  (((sii9135_I2CRead(0x60,0x3D)&0x07)<<8)|sii9135_I2CRead(0x60,0x3C));
	unsigned int XCLK_IN_PCLK= (((sii9135_I2CRead(0x60,0x6F)&0x0F)<<8)|sii9135_I2CRead(0x60,0x6E));
	//T_line = (((H_RES/28322000)*XCLK_IN_PCLK)>>2^11);
	//T_filed = T_line*V_RES;
	F = (unsigned char)(((28322000/H_RES/V_RES)<<11)/XCLK_IN_PCLK+3.5);//3.5Ϊ����ֵ
	return F;
 }

/***********************************************************************
*
*  Caculate the pclk of video input to sii9135
*  ����3������: 148.5MHZ(148.5/1.001MHZ)--74.25MHZ(/74.25MHZ)--13.5MHZ
            -----------------------------------------------------------
                 PCLK    >74.25mhz    <=74.25MHZ   
				 Zone	    HD			 SD
  rate0_rate1	    01			 00	
* 
***********************************************************************/
unsigned char PCLK_Detection(void)
{
   unsigned pclk_flag = 0;
   unsigned long PCLK = 0;
   unsigned int XCLK_IN_PCLK= (((sii9135_I2CRead(0x60,0x6F)&0x0F)<<8)|sii9135_I2CRead(0x60,0x6E));
   PCLK = ((28322000/XCLK_IN_PCLK)<<11);
   if(PCLK>74363406)	//1280x720/60p
      pclk_flag = 1;
   else if(PCLK<=74363406)
      pclk_flag = 2;
  return pclk_flag;
}




















