#include "feedback.h"
#include "typedef.h"
#include "eeprom.h"
#include "uart.h"
#include "string.h"	 
#include "ep9132.h"


//EDID BUFFER 
unsigned char xdata edidBuff[128]={0};

unsigned char code portTypeArray[4] = { 0x01,0x38,0x0,0xc0  }; //HDMI板卡，ep9132，AC Couple
                                                   //不支持音频输入输出
                                                   //支持HDCP,EDID COPY,CEC

extern uchar childBoardAddr;
/**********************************************
// Description: 查询端口类型是否支持EDID功能
// Argument   : 端口号
// Return     ：0: Not support EDID  1: support EDID 
// Note       : none
**********************************************/
uchar checkPortType(uchar port)
{
	 port = port;
	 //sendByte(portTypeArray[1]);
   if( (portTypeArray[1]&0x08) == 0x08 ) //support edid copy 
     return 1;
   else
     return 0;		 
}
/*****************************************************************************
// Description: 查询EDID或者DVI接口是否连接显示终端
// Argument   : 端口号
// Return     ：0: Not connected monitor  1: connected monitor
// Note       : 这个函数是对PCF8574T进行读操作;首先上电初始化端口应设为输出1
*****************************************************************************/
uchar checkConnection(uchar port)
{
	  uchar temp = 0;
	  eeprom_I2CWrite_PCF8574(PCF8574_ADDR_W,0xff); //output 0xff	
	  temp = eeprom_I2CRead_PCF8574T();
	  switch(port)
	  {
			 case 0x01:
				    if( temp == 0xfe)//port 1 is connected monitor
						 return 1;
						else 
						 return 0;
			 case 0x02:
            if( temp == 0xfd)//port 2 is connected monitor
						 return 1;
						else 
						 return 0;
       case 0x03:
            if( temp == 0xfb)//port 3 is connected monitor
						 return 1;
						else 
						 return 0;
       case 0x04:
            if( temp == 0xf7)//port 4 is connected monitor
						 return 1;
						else 
						 return 0;		
	  default:
	    break;				
    }
}
//***************************************************************************************
// Description : 设置卡板地址返回命令
// Argument    : cmd:指令  dataLen:数据长度  childBoardAddr  
// Return      : none
// Note        :
//***************************************************************************************
// void uartReturn(unsigned char cmd,unsigned char dataLen,unsigned char childBoardAddr)
// {
// 	 unsigned char tmpChar;
// 	 while( 0 == Com0Putch( 0xAB ) );             //feedback cmd head
// 	 while( 0 == Com0Putch( childBoardAddr ) );   //addr
// 	 while( 0 == Com0Putch( cmd ) );              //command
// 	 while( 0 == Com0Putch( dataLen ) );          //data length
// 	 while( 0 == Com0Putch( childBoardAddr ) );
// 	 
// 	 tmpChar ^= 0xAB;
// 	 tmpChar ^= childBoardAddr ;
// 	 tmpChar ^= cmd;
// 	 tmpChar ^= dataLen;
// 	 tmpChar ^= childBoardAddr ;
// 	 
// 	 while( 0 == Com0Putch( tmpChar ) );          //异或校验
//  }

 void uartReturn(unsigned char childBoardAddr)
{	
	uchar temp = 0;  //must have
		
	temp += 0xAB;
 	temp += childBoardAddr;
 	temp += 0x30;
 	temp += 0x01;
 	temp += childBoardAddr;
	
	setRS485( TX_EN );  //enable rs485 tx 
	
	sendByte(0xAB);
	sendByte(childBoardAddr);
	sendByte(0x30);
	sendByte(0x01);
	sendByte(childBoardAddr);
	sendByte(temp);
	
	setRS485( RX_EN );  //enable rs485 rx 
}
//***************************************************************************************
// Description :查询端口类型指令返回函数
// Argument    : childBoardAddr  ptr:数据内容第一个元素地址 
// Return      :none
// Note        :none
//***************************************************************************************	
 void sendPortType(unsigned char childBoardAddr,unsigned char *ptr)
{
   	unsigned char tmpChar = 0,k = 0, dat = 0;
// 	  while( 0 == Com0Putch( 0xAB ) ); //feedback cmd head
// 	  while( 0 == Com0Putch( childBoardAddr ) );
// 	  while( 0 == Com0Putch( cmd ) );
// 	  while( 0 == Com0Putch( dataLen ) );
	 tmpChar += 0xAB;
	 tmpChar += childBoardAddr ;
	 tmpChar += 0x31;
	 tmpChar += 0x04;
   for(k=0;k<4;k++)  //caulatue指令数据内容校验和
	 {
		  dat = *(ptr+k);
		  tmpChar += dat;
   }
   		
  
	  setRS485( TX_EN );  //enable rs485 tx  	
    sendByte(0xAB);
	  sendByte(childBoardAddr);
	  sendByte(0x31);
	  sendByte(0x04);
	  for(k=0;k<4;k++)  //caulatue指令数据内容校验和
	  {
		  sendByte( *(ptr+k) );
    } 
	 sendByte(tmpChar);
	 
	 setRS485( RX_EN );  //enable rs485 rx 
}

//*************************************************************************************************
// Description : 读取相应端口的EDID front 128 bytes and fullfill 
// Argument    : none
// Return      : 0：读取失败   1：读取成功
// Note        : none
//*************************************************************************************************		 
 bit edidRead1(void)
 {
    unsigned char k = 0;
	  bit tmp;
	  memset(edidBuff,0,128); //清0 edid buffer
	  for(k=0;k<16;k++)
	   tmp =  ep9132_I2CReadp(edidRomAddrWrit,8*k,&edidBuff[k*8],8);
	   //sendByte('a');
	 return tmp;
 }

//***************************************************************************************
// Description : 读取相应端口的EDID  后128字节
// Argument    : none
// Return      : 0：读取失败   1：读取成功
// Note        :
//***************************************************************************************	
 bit edidRead2()
 {
  unsigned char k = 0;
	  bit tmp;
	  memset(edidBuff,0,128); //清0 edid buffer
	  for(k=16;k<32;k++)
	   tmp =  ep9132_I2CReadp(edidRomAddrWrit,8*k,&edidBuff[(k-16)*8],8);
	   //sendByte('a');
	 return tmp;
 }
 
//***************************************************************************************
// Description : 相应背板读取某个端口EDID命令的函数
// Argument    : none
// Return      : none
// Note        : none
//***************************************************************************************		 
void feedBackEdid(unsigned char CMD,unsigned char childBoardAddr,unsigned char excuteResult,unsigned char *edidBuff)
{
	  unsigned char k = 0,tmpChar = 0;
// 	  while( 0 == Com0Putch( 0xAB ) ); //feedback cmd head
// 	  while( 0 == Com0Putch( childBoardAddr ) );
// 	  while( 0 == Com0Putch( cmd ) );
// 	  while( 0 == Com0Putch( 0x81 ) );  //data length
//     while( 0 == Com0Putch( excuteResult ) ); 	
    tmpChar += 0xAB;
	  tmpChar += childBoardAddr ;
	  tmpChar += CMD;
	  tmpChar += 0x81;
		tmpChar += excuteResult;
    for(k=0;k<128;k++)
    {
			 tmpChar += edidBuff[k];
    }	
  
    setRS485( TX_EN );  //enable rs485 tx 
	 
	  sendByte( 0xAB );
	  sendByte( childBoardAddr );
	  sendByte( CMD );
	  sendByte( 0x81 );
	  sendByte( excuteResult );
    for(k=0;k<128;k++)
    {
			 sendByte( edidBuff[k] ); //128 Bytes EDID Data
    }		 
	  sendByte( tmpChar );  
	  
	  setRS485( RX_EN );  //enable rs485 rx 
}
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 