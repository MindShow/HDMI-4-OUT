#ifndef EP9132_H
#define EP9132_H 1
#include "typedef.h"
#include "reg52.h"

/*ep9132 I2C Interface*/
sbit ep9132_SCL = P1^3;
sbit ep9132_SDA = P1^4;

#define u2_addr_w    0x70
#define u2_addr_r    0x71

#define u6_addr_w    0x72
#define u6_addr_r    0x73

#define u10_addr_w   0x74
#define u10_addr_r   0x75

#define u14_addr_w   0x76
#define u14_addr_r   0x77

/*********************ep9132 part**************************/
#define TMDS_CTR0  0X05   //default:0x05  0x3f(support tmds clock up to 225mhz)
#define TMDS_CTR1  0X06   //default:0x0   重点看
#define CTRL0      0X07   //default:0x02  0x00: receiver port is power down, port 0 is selected!
#define CTRL1      0x08   //reset:0x01    0x00: selected port is power down!
#define CTRL2      0x09   //reset:NN      没啥配
#define CTRL3      0x0a   //reset:0x80
#define CTRL4      0x0E   //reset:0x01 tx is hdmi mode!
#define CTRL5      0x0f   //reset:nn    没啥配

// unsigned char  TMDS_CTRL0_set[4][3]={
// 0x70,0x05,0x3F,
// 0x72,0x05,0x3f,
// 0x74,0x05,0x3f,
// 0x76,0x05,0x3f,
// };

// unsigned char  TMDS_CTRL1_set[4][3]={ //暂时不知道怎么配置 default:0x0
// 0x70,0x06,0x0,
// 0x72,0x06,0x0,
// 0x74,0x06,0x0,
// 0x76,0x06,0x0,
// };

// unsigned char  CTRL0_set[4][3]={  //Just for experiment to see i2c func is work or not!!!
// 0x70,0x07,0x84,
// 0x72,0x07,0x80,
// 0x74,0x07,0x08,
// 0x76,0x07,0x0,
// };

// unsigned char  CTRL4_set[4][3]={
// 0x70,0x0e,0x0,  //dvi mode 
// 0x72,0x0e,0x0,
// 0x74,0x0e,0x0,
// 0x76,0x0e,0x0,
// };

/*****************************************************/
void  EP9132_SomeNOP(uchar n);
//void i2cSelect(uchar i2cOption);
void  EP9132_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data);
unsigned char EP9132_I2CRead(uchar DeviceAdd,uchar PtrAdd);
bit ep9132_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n);
void  EP9132_I2CWritep(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n);//带指针的IIC写函数

#endif
