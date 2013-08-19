/************************************
* Platform: STC12LE5620AD(STC12C5620AD) flash:28k sram:768B=512B(aux)+256B(内部) 
*           Voltage:3.6v~2.2v 
* KEIL: V4.7
* Frequency: 11.05892MHz
* Board: HDMI-4-out
************************************/

#include "reg52.h"
#include "uart.h"
#include "typedef.h"
#include "io.h"
#include "ep9132.h"
#include "CommonLibrary.h"
#include "intrins.h"
#include "string.h"	  //memeset@
#include "feedback.h"

static void cmdProcess(void);  //命令处理

#define MAX_CMD_LEN 150




unsigned char childBoardAddr = 0;

unsigned char timeOutFlag = 0;

static struct cmdStrType{ //解析背板命令
	unsigned char cmdPos;
	unsigned char cmdLen;
	unsigned char cmdStep;
	unsigned char cmd;
	unsigned char addr;
	unsigned char cmdXor;
	//unsigned char isBoardCast; 
	unsigned char cmdBuf[MAX_CMD_LEN];
}cmdStr;
/*
***********************************************************
* 解析背板命令结构体清0
***********************************************************
*/
static void comCmdInit(void)
{
    memset( &cmdStr,0,sizeof(struct cmdStrType) );
}

static struct uartStr{   //feed back to back plane
  unsigned char cmdHead;
  unsigned char addr;
  unsigned char cmd;
  unsigned char dataLen;
  unsigned char *dataBuff;	
};

//**********************************************
// Description :定时器0初始化,70ms定时
// Argument    :none
// Return      :none
// Note        :注意是1T时钟周期 11.0592MHz
//**********************************************
void Init_T0(void)
{
	AUXR &= 0x7f;	//定时器时钟12T模式
	
	TMOD &= 0xF0; //清定时器0模式,不改变timer1设置
  TMOD |= 0x01;  //set timer0 as mode1(16-bit)
  TH0  = 0x04;
  TL0  = 0x00; //70ms
//  	TL0 = 0xF7;		
//  	TH0 = 0xFF;	 //10uS
	TF0  = 0;	//clear TF0 Flag
	
  EA   = 1;  //open global interrupt switch
  ET0  = 1;  //enable timer0 interrupt
  //TR0  = 1;  //T0 start
}


//**********************************************
// Description :定时器0 ISR
// Argument    :none
// Return      :none
// Note        :注意中断向量号为 1
//**********************************************
//void Time0_ISR(void)  interrupt 1   
//{ 
//	TR0= 0;
//  LED1 = 1;	
//  TH0 = 0x04; //reload value
//  TL0 = 0x0;  
//// 	TL0 = 0xF7;		
////  	TH0 = 0xFF;	 //10uS
//	timeOutFlag = 1;
//}

//**********************************************
// Description :解析背板命令
// Argument    :none
// Return      :none
// Note        :
//**********************************************
static void cmdCheckProc(void)
{	 
	 unsigned tmpChar;
	
	 while(1)
	 {
// 		  if(com0CheckRx() == 0)
// 			{
// 				if( timeOutFlag == 1 )
// 				{
// 					comCmdInit();
// 					TR0= 0;
// 					//sendByte(0xff);
// 					timeOutFlag = 5;
// 				}
// 				else if( timeOutFlag == 0 ) {
// 					TH0  = 0x04;   //re-load 
// 					TL0  = 0x00;
// 					TR0  = 1;      //T0 start
// 					timeOutFlag = 2;
// 				}
// 				return;
// 			} 
// 			else
// 			{
// 				TR0 = 0;
// 				TH0  = 0x04;   //re-load 
// 				TL0  = 0x00;
// 				timeOutFlag=0;
// 			}
			
  		if( com0CheckRx() == 0) break;
		  tmpChar = com0GetChar();
		 	
		  switch(cmdStr.cmdStep)
		  {
				case 0:				   //包头
					 if( tmpChar != CMD_HEAD ) break;
				     cmdStr.cmdStep++;
				     //cmdStr.cmdXor = 0;
				     cmdStr.cmdXor += tmpChar; //
				     cmdStr.cmdPos = 0;
				     //sendByte(0x31);
				     continue;
				case 1:				 //地址
					   //if( tmpChar == 0xFF ) //broadcast
					   //isBoardCast = 1;
             cmdStr.addr = tmpChar;
			       cmdStr.cmdXor += tmpChar; //
             cmdStr.cmdStep++;
						 //sendByte(0x32);
             break;				 
        case 2:           //指令
             cmdStr.cmd = tmpChar; //cmd type
			       cmdStr.cmdXor += tmpChar; //
             cmdStr.cmdStep++;
				     //sendByte(0x33);
             break;
        case 3:					  //数据长度
             if( (tmpChar > MAX_CMD_LEN) | (tmpChar == 0) )
                { comCmdInit(); break;}	
             cmdStr.cmdLen = tmpChar;
			       cmdStr.cmdXor += tmpChar; //
             cmdStr.cmdStep++;
						 //sendByte(0x34);
             break;						
				case 4:				//数据内容
             if( cmdStr.cmdPos < cmdStr.cmdLen )
             {
                cmdStr.cmdBuf[cmdStr.cmdPos] = tmpChar;
                cmdStr.cmdXor += tmpChar; //
                cmdStr.cmdPos++;
                if( cmdStr.cmdPos >= cmdStr.cmdLen )//cmd content receiving is complete
				          cmdStr.cmdStep++;  
                //sendByte(0x35);								
                break;								
             }
             else
             { comCmdInit(); break; }	
        case 5:
             if( cmdStr.cmdXor != tmpChar ) //异或校验出错
             { sendByte(0x36); 
							 memoryInit();
               comCmdInit();break; }	
             else
			       { //sendByte(0x37);
               cmdProcess(); comCmdInit();//break;
             }
						 
        default:
             cmdStr.cmdXor = 0;
             cmdStr.cmdPos = 0;	
				
             cmdStr.cmdStep = 0;	
             break;			 
      }break;
   }
}

//**********************************************
// Description :命令处理
// Argument    :none
// Return      :none
// Note        :
//**********************************************
static void cmdProcess(void)  //暂时不判断从机地址
{
	 unsigned char CardCS = (P2&0x08); //read cs pin  0:active
	 if( 0x08 == CardCS )                 //no cs
	 {;}
		 
	 else
	 {
		  //sendByte('a');
 		 
		  switch(cmdStr.cmd)
		  {
				 case CMD_SET_ADDR:          //设置卡板地址
					    childBoardAddr = cmdStr.cmdBuf[0];
					    uartReturn(childBoardAddr);  
				      break;
				 case CMD_CHECK_PORT_TYPE:   //查询卡板类型
					    sendPortType(cmdStr.addr,portTypeArray);
				      //sendByte('b');
				      break;
				 case CMD_GET_EDID_FRONT128:           //读取EDID前128字节
					    //checkPortType(cmdStr.cmdBuf[0]); //检查端口类型是否支持EDID功能
				      if(checkPortType(cmdStr.cmdBuf[0]))            //若端口支持EDID功能
					  {
							 // sendByte('C');
			         //checkConnection(cmdStr.cmdBuf[0]);       //检查端口是否连接
							 if( checkConnection(cmdStr.cmdBuf[0]) )
							 {
								 //sendByte(checkConnection(cmdStr.cmdBuf[0])+0x30);
				         ddcChannelSel( cmdStr.cmdBuf[0] );       //选择相应port的DDC Channel
				         //edidRead1();									          //read前128字节
								 if( 1 == edidRead1() )                   //读取成功
								 
			             feedBackEdid(cmdStr.cmd,cmdStr.addr,0x0,edidBuff);
								 else {
									  memset(edidBuff,0,128);
									 
									  feedBackEdid(cmdStr.cmd,cmdStr.addr,0x03,edidBuff); //读取失败		
								  }										 
							 }
							 
							 else{
								 memset(edidBuff,0,128);
								
								 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x01,edidBuff);        //端口没有连接
							 }
								 
					  }
							else{                        //端口不支持EDID功能
								//sendByte('C');
							 memset(edidBuff,0,128);
							
							 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x02,edidBuff);
							}
							break;
				 case CMD_GET_EDID_REAR128:  //读取EDID后128字节
					     
              if(checkPortType(cmdStr.cmdBuf[0]))            //若端口支持EDID功能
							{
								 // sendByte('C');
				         //checkConnection(cmdStr.cmdBuf[0]);       //检查端口是否连接
								 if( checkConnection(cmdStr.cmdBuf[0]) )
								 {
									 //sendByte(checkConnection(cmdStr.cmdBuf[0])+0x30);
					         ddcChannelSel( cmdStr.cmdBuf[0] );       //选择相应port的DDC Channel
					         //edidRead2();									          //read后128字节
									 if( 1 == edidRead2() )                   //读取成功
				             feedBackEdid(cmdStr.cmd,cmdStr.addr,0x0,edidBuff);
									 else {
										  memset(edidBuff,0,128);
										  
										  feedBackEdid(cmdStr.cmd,cmdStr.addr,0x03,edidBuff); //读取失败		
									  }										 
								 }
								 else{
									 memset(edidBuff,0,128);
									
									 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x01,edidBuff);        //端口没有连接
								 }
									 
						  }
							else{                        //端口不支持EDID功能
								//sendByte('C');
							 memset(edidBuff,0,128);	
							 feedBackEdid(cmdStr.cmd,cmdStr.addr,0x02,edidBuff);
							}         
				    
				      break;
         default: break;				 
      }
   }
	 
}
/**************just for test*******************/
void cmdProcess1(void)
{
	 sendByte('a');
}

void main(void)
{
	setRS485( RX_EN );  //enable rs485 rx
	urInit();	   //串口初始化
	//SendString("HDMI8X8\n");
	
  BoardInit(); //相关IC及MCU端口初始化
	//Init_T0();
  comCmdInit();//串口命令解析控制结构体清0  
  //WDT_CONTR = 0x35;  //2.2755S
// 	Delay_ms(1000);
// 	LED2 = 1;
// 	Delay_ms(3000);
  while(1)
  {
// 		  setRS485( RX_EN );  //enable rs485 rx
      cmdCheckProc();
		//  WDT_CONTR = 0x35;  //2.2755S
	}
  

}	 