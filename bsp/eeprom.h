#ifndef EEPROM_H
#define EEPROM_H 1

#include "typedef.h"
#include "reg52.h"
/*eeprom I2C Interface*/
//sbit SCL1 = P1^1;
//sbit SDA1 = P1^2;

//24c02
#define AT24C02_addr_w   0xa0
#define AT24C02_addr_r   0xa1

// //PCF8574A
// #define PCF8574_ADDR_W   0x78
// #define PCF8574_ADDR_R   0x79

//PCF8574T
#define PCF8574_ADDR_W   0x48
#define PCF8574_ADDR_R   0x49

/****************Functions**********************/
void  eeprom_SomeNOP(uchar n);
void  eeprom_I2CStart(void)	;
void  eeprom_I2CStop(void);
bit   eeprom_WaitAck(void);
void  eeprom_SendNotAck(void);
void  eeprom_I2CSendByte(unsigned char Data);
uchar eeprom_I2CReceiveByte(void);
void  eeprom_I2CWrite(uchar DeviceAdd,uchar PtrAdd,uchar Data);
void  eeprom_I2CWrite_PCF8574(uchar DeviceAdd,uchar Data);
uchar eeprom_I2CRead(uchar DeviceAdd,uchar PtrAdd);
uchar eeprom_I2CRead_PCF8574T(void);
bit   eeprom_I2CReadp(uchar DeviceAdd,uchar PtrAdd,uchar *Data,unsigned int n);

#endif