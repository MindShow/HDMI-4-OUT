#ifndef _USART_H
#define _USART_H
#include "typedef.h"

/*地址码*/
#define CMD_HEAD           0xAA  //命令包头
#define CMD_BROADCAST_ADDR 0xFF  //广播地址

#define TX_EN       0
#define RX_EN       1

/*指令集*/
#define CMD_SET_ADDR              0x30  //设置卡板地址
#define CMD_CHECK_PORT_TYPE       0x31  //查询卡板端口类型
#define CMD_WRITE_EDID_FRONT128   0x32  //写入EDID前128字节
#define CMD_WRITE_EDID_REAR128    0x33  //写入EDID后128字节
#define CMD_GET_EDID_FRONT128     0x34  //读取EDID前128字节
#define CMD_GET_EDID_REAR128      0x35  //读取EDID后128字节


// #ifndef COM_RXBUFF_LEN  
// #define COM_RXBUFF_LEN    140      //接收缓冲长度
// #endif

// extern unsigned char xdata uart0RxBuff[COM_RXBUFF_LEN];  

unsigned char receiveByte(void);
void     			urInit(void); 
void 					sendByte(uchar sendData);
void 					SendString(char *s);
void 					memoryInit(void);
void setRS485( uchar k );

static void   cmdProcee(void);

void          uart0BegainSend(void);
unsigned char Com0Putch(unsigned char txChar);
void          com0SendStr(unsigned char *pStr);
unsigned char com0CheckRx(void);
unsigned char com0GetChar(void);
void          urInit(void);

#endif
