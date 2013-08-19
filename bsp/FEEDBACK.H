#ifndef feedback_h
#define feedback_h 1

#include "typedef.h"

#define edidRomAddrRead   0xA1
#define edidRomAddrWrit   0xA0


extern unsigned char code portTypeArray[4];
extern unsigned char xdata edidBuff[128];

void uartReturn(unsigned char);
//void uartReturn(unsigned char cmd,unsigned char dataLen,unsigned char childBoardAddr);
//void sendPortType(unsigned char cmd,unsigned char dataLen,unsigned char childBoardAddr,unsigned char *ptr);
void sendPortType(unsigned char childBoardAddr,unsigned char *ptr);
uchar checkPortType(uchar port);
uchar checkConnection(uchar port);
bit edidRead1(void);
bit edidRead2();
//void feedBackEdid(unsigned char cmd,unsigned char childBoardAddr,unsigned char excuteResult,unsigned char *edidBuff);
void feedBackEdid(unsigned char CMD,unsigned char childBoardAddr,unsigned char excuteResult,unsigned char *edidBuff);


#endif