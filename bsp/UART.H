#ifndef _USART_H
#define _USART_H
#include "typedef.h"

/*��ַ��*/
#define CMD_HEAD           0xAA  //�����ͷ
#define CMD_BROADCAST_ADDR 0xFF  //�㲥��ַ

#define TX_EN       0
#define RX_EN       1

/*ָ�*/
#define CMD_SET_ADDR              0x30  //���ÿ����ַ
#define CMD_CHECK_PORT_TYPE       0x31  //��ѯ����˿�����
#define CMD_WRITE_EDID_FRONT128   0x32  //д��EDIDǰ128�ֽ�
#define CMD_WRITE_EDID_REAR128    0x33  //д��EDID��128�ֽ�
#define CMD_GET_EDID_FRONT128     0x34  //��ȡEDIDǰ128�ֽ�
#define CMD_GET_EDID_REAR128      0x35  //��ȡEDID��128�ֽ�


// #ifndef COM_RXBUFF_LEN  
// #define COM_RXBUFF_LEN    140      //���ջ��峤��
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