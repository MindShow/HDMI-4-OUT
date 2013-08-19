#ifndef IO_H
#define IO_H

#include<reg52.h>

//LED 
sbit LED1 = P0^0;
sbit LED2 = P0^1;

//ep9132 reset
sbit tx1_rst = P3^3;
sbit tx2_rst = P3^2;
sbit tx3_rst = P3^4;
sbit tx4_rst = P3^5;

//∞Âø®≤Â»ÎºÏ≤‚
sbit cardIn_Init = P2^4;
sbit cardInCS    = P2^3; 

//CEC control
sbit P4_CEC = P2^5;
sbit P3_CEC = P2^6;
sbit P2_CEC = P2^7;
sbit P1_CEC = P3^7;

//74HC4052 ctrl
sbit HC4052enable = P1^0;
sbit s0 = P1^6; 
sbit s1 = P1^5;

//I2C BUS
sbit SDA1 =  P1^2; //control 1 eeprom and 4 ports hotplug(pcf8574t)!!!
sbit SCL1 =  P1^1;

sbit SDA = P1^4;  //control 4 pcs 9132 and 4 port DDC channel(74hc4052)!!
sbit SCL = P1^3;

//PCF8574AT
sbit IORED_INT = P2^1;

//RS485
sbit RS485TxEN =  P2^2;  //1: rx enable; 0: tx enable 


void BoardInit(void);
void ddcChannelSel(unsigned char ch);
void  hotplugCtrl(unsigned char ch);
void resetEp9132(unsigned char ch);

#endif
