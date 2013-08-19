
#line 1 "sii9135\SiIHLVIIC.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiIHLVIIC.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 31 "sii9135\SiICmplDefs.h" /1
  
 
#line 33 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 48 "sii9135\SiICmplDefs.h" /1
 
 
  
 
  
 
 
 
#line 56 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
 
 
  
#line 1 ".\bsp\typedef.h" /0
 
 
 
 
 
 
 
 
 typedef	code	unsigned char	cBYTE;
 
 
 typedef char CHAR, *PCHAR ;
 typedef unsigned char uchar, *puchar ;
 typedef unsigned char UCHAR, *PUCHAR ;
 typedef unsigned char byte, *pbyte ;
 typedef unsigned char BYTE, *PBYTE ;
 
 typedef short SHORT, *PSHORT ;
 typedef unsigned short ushort, *pushort ;
 typedef unsigned short USHORT, *PUSHORT ;
 typedef unsigned short word, *pword ;
 typedef unsigned short WORD, *PWORD ;
 
 typedef long LONG, *PLONG ;
 typedef unsigned long ulong, *pulong ;
 typedef unsigned long ULONG, *PULONG ;
 typedef unsigned long dword, *pdword ;
 typedef unsigned long DWORD, *PDWORD ;
 
 typedef struct _REGPAIR 
 {
 BYTE ucAddr ;
 BYTE ucValue ;
 }REGPAIR;
 
 
 typedef signed char         INT08S;
 typedef unsigned char       INT08U;
 typedef signed short        INT16S;
 typedef unsigned short      INT16U;
 typedef signed long         INT32S;
 typedef unsigned long       INT32U;
 
 
 
 
 
 
 
 
#line 14 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 typedef unsigned char  U8BIT;
 
 typedef unsigned short int U16BIT;
 typedef unsigned long U32BIT;
 
 
 
 
 
 
 
 
 
 
#line 32 "sii9135\SiITypeDefs.h" /1
 
 
  
  
 
 
#line 38 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
#line 10 "sii9135\SiIHLVIIC.h" /0
 
  
#line 1 "sii9135\UCom.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\UCom.h" /0
 
 
 
 
 
 typedef struct {
 BYTE Dummy;
 BYTE NBytes;
 BYTE Flags;
 BYTE Ctrl;
 BYTE SlaveAddr;
 BYTE RegAddrL;
 BYTE RegAddrH;
 BYTE Data[16];
 } I2CCommandType;
 
 
 typedef struct {
 BYTE Cmd;
 BYTE NumberBytes;
 BYTE Flags;
 BYTE Ctrl;
 BYTE SlaveAddr;
 BYTE DestAddrL;
 BYTE DestAddrH;
 BYTE Data[16];
 }DemoCPCmdType;
 
 typedef struct {
 BYTE Cmd;
 BYTE notused1;
 BYTE notused2;
 BYTE Ctrl;
 BYTE notused4;
 BYTE notused5;
 } ResetControlType;
 
 typedef struct {
 BYTE Cmd;
 BYTE notused1;
 BYTE notused2;
 BYTE notused3;
 BYTE notused4;
 BYTE notused5;
 BYTE Data[1];
 
 } MiscControlType;
 
 typedef struct {
 BYTE Dummy;
 BYTE NBytes;
 BYTE Flags;
 BYTE Ctrl;
 BYTE SlaveAddr;
 BYTE RegAddrL;
 BYTE RegAddrH;
 BYTE Data[16];
 } FuncCommandType;
 
 
 typedef union  CmdUnion {
 
 BYTE cmdbuf[24];
 
 I2CCommandType I2CCommand;
 FuncCommandType FuncCommand;
 ResetControlType ResetControl;
 MiscControlType MiscControl;
 
 } CmdType;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef enum {
 
 IIC8BARead,
 IIC10BARead,
 IIC16BARead,
 SystemState,
 VersionInfo,
 IIC8BAWrite = 0x80,
 IIC10BAWrite,
 IIC16BAWrite,
 Resets,
 SetPassiveMode,
 ResetPassiveMode,
 Syncronyze,
 GetErr,
 ResetRX,
 RXAPI_GetNCTS = 0xDB,
 RXAPI_GetABKSV = 0xDC,
 RXAPI_GetIPacket = 0xDD,
 RXAPI_GetVideoInputResolution = 0xDE,
 API_GetLastAPI_ExeTime = 0xDF,
 RXAPI_InitializeSystem = 0xE0,
 RXAPI_GetVersionInfo =  0xE1,
 RXAPI_SetVideoFormat =  0xE2,
 RXAPI_GetVideoFormat =  0xE3,
 RXAPI_GetInfo =         0xE4,
 RXAPI_SetGlobalPower =     0xE5,
 RXAPI_SetAudioVideoMute =  0xE6,
 RXAPI_GetAPIInfo =      0xE7,
 RXAPI_GetSystemInformation = 0xE8,
 RXAPI_GetTasksSchedule =    0xE9,
 RXAPI_SetMasterClock =      0xEA,
 RXAPI_GetAudioInputStatus = 0xEB,
 RXAPI_GetAudioOutputFormat = 0xEC,
 RXAPI_SetAudioOutputFormat = 0xED,
 RXAPI_SetVideoInput = 0xEE,
 API_GetWarningData = 0xEF,
 API_GetErrorData = 0xF0,
 
 CmdGetGPIO = 0xF1,
 CmdSendGPIO = 0xF2,
 TestSyncSWRst = 0xF3,
 TestPLLId = 0xF4,
 TX_AudioPath = 0xF5,
 AVIInfo = 0xF7,
 TX_VideoPath = 0xF8,
 TX_DE_656_AudioPresetCfg = 0xF9,
 TXVideoAudioCfg = 0xFA,
 MakeRecoveryClock = 0xFB,
 GetAudioStatData = 0xFC,
 GoAudioStatTest = 0xFD,
 OutVCfg = 0xFE,
 GetTimingPrms = 0xFF
 } CommandId;
 
 
 
 void siiCommunicationHandler( void );
 
 
 
#line 11 "sii9135\SiIHLVIIC.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct {
 
 BYTE SlaveAddr;
 BYTE Flags;
 BYTE NBytes;
 BYTE RegAddrL;
 BYTE RegAddrH;
 
 } I2CShortCommandType;
 
 
 BYTE hlBlockRead_8BAS ( I2CShortCommandType * , BYTE * );
 BYTE hlBlockWrite_8BAS ( I2CShortCommandType * , BYTE * );
 BYTE hlReadByte_8BA ( BYTE, BYTE);
 WORD hlReadWord_8BA ( BYTE , BYTE);
 void hlWriteWord_8BA ( BYTE , BYTE, WORD );
 void hlWriteByte_8BA ( BYTE , BYTE, BYTE );
  bit hlWaitForAck ( BYTE , WORD );
 BYTE hlWriteAddr_8BA ( BYTE , BYTE);
 
 
 
 
 
 
#line 13 "sii9135\SiIHLVIIC.c" /0
 
  
#line 1 "sii9135\SiISW_IIC.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiISW_IIC.h" /0
 
  
#line 1 "sii9135\SiIIICDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiISW_IIC.h" /0
 
 
 BYTE GetI2CState( void );
 
 BYTE GetI2CStatus( void );
 BYTE DDC_GetI2CStatus( void );
 
 BYTE I2CSendByte( BYTE );
 void I2CSendStop( void );
 BYTE I2CSendAddr ( BYTE, BYTE );
 
 BYTE _I2CGetByte( BYTE );
 
 BYTE DDC_GetI2CState( void );
 BYTE DDC_I2CSendByte( BYTE );
 BYTE DDC_I2CSendAddr( BYTE , BYTE );
 void DDC_I2CSendStop( void );
 BYTE DDC__I2CGetByte( BYTE );
 void ResetEEPROM( void );
 void MakeSCLPulses( BYTE );
 void DDC_MakeSCLPulses( BYTE);
 
 
#line 14 "sii9135\SiIHLVIIC.c" /0
 
  
#line 1 "sii9135\SiIIICDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiIIICDefs.h" /1
  
 
 
  
  
  
  
  
 
 
  
  
  
  
 
 
 
#line 28 "sii9135\SiIIICDefs.h" /0
 
#line 15 "sii9135\SiIHLVIIC.c" /0
 
  
#line 1 "sii9135\SiIHAL.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiIHAL.h" /0
 
 
 
  
#line 1 "sii9135\UMCUDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\reg89f.h" /0






 
 
 
 sfr P0    = 0x80;
 sfr P1    = 0x90;
 sfr P2    = 0xA0;
 sfr P3    = 0xB0;
 sfr PSW   = 0xD0;
 sfr ACC   = 0xE0;
 sfr B     = 0xF0;
 sfr SP    = 0x81;
 sfr DPL   = 0x82;
 sfr DPH   = 0x83;
 sfr PCON  = 0x87;
 sfr TCON  = 0x88;
 sfr TMOD  = 0x89;
 sfr TL0   = 0x8A;
 sfr TL1   = 0x8B;
 sfr TH0   = 0x8C;
 sfr TH1   = 0x8D;
 sfr IE    = 0xA8;
 sfr IP    = 0xB8;
 sfr SCON  = 0x98;
 sfr SBUF  = 0x99;
 
 
 sfr SFCF = 0xF7;   
 sfr SFDT = 0xF8;   
 sfr SFAL = 0xF9;   
 sfr SFAH = 0xFA;   
 sfr SFCM = 0xFB;   
 sfr WDTC = 0xC0;   
 sfr WDTD = 0x86;   
 
 
 
 sbit WDRE = 0xC3;
 sbit WDTS = 0xC2;
 sbit WDT = 0xC1;
 sbit SWDT = 0xC0;
 
 
 
 sfr T2CON = 0xC8;
 sfr RCAP2L = 0xCA;
 sfr RCAP2H = 0xCB;
 sfr TL2   = 0xCC;
 sfr TH2   = 0xCD;
 
 
 
 
 sbit CY    = 0xD7;
 sbit AC    = 0xD6;
 sbit F0    = 0xD5;
 sbit RS1   = 0xD4;
 sbit RS0   = 0xD3;
 sbit OV    = 0xD2;
 sbit P     = 0xD0;
 
 
 sbit TF1   = 0x8F;
 sbit TR1   = 0x8E;
 sbit TF0   = 0x8D;
 sbit TR0   = 0x8C;
 sbit IE1   = 0x8B;
 sbit IT1   = 0x8A;
 sbit IE0   = 0x89;
 sbit IT0   = 0x88;
 
 
 sbit EA    = 0xAF;
 sbit ES    = 0xAC;
 sbit ET1   = 0xAB;
 sbit EX1   = 0xAA;
 sbit ET0   = 0xA9;
 sbit EX0   = 0xA8;
 
 
 sbit PS    = 0xBC;
 sbit PT1   = 0xBB;
 sbit PX1   = 0xBA;
 sbit PT0   = 0xB9;
 sbit PX0   = 0xB8;
 
 
 sbit RD    = 0xB7;
 sbit WR    = 0xB6;
 sbit T1    = 0xB5;
 sbit T0    = 0xB4;
 sbit INT1  = 0xB3;
 sbit INT0  = 0xB2;
 sbit TXD   = 0xB1;
 sbit RXD   = 0xB0;
 
 
 sbit SM0   = 0x9F;
 sbit SM1   = 0x9E;
 sbit SM2   = 0x9D;
 sbit REN   = 0x9C;
 sbit TB8   = 0x9B;
 sbit RB8   = 0x9A;
 sbit TI    = 0x99;
 sbit RI    = 0x98;
 
 
 
 sbit ET2   = 0xAD;
 
 
 sbit PT2   = 0xBD;
 
 
 sbit T2EX  = 0x91;
 sbit T2    = 0x90;
 
 
 sbit TF2   = 0xCF;
 sbit EXF2  = 0xCE;
 sbit RCLK  = 0xCD;
 sbit TCLK  = 0xCC;
 sbit EXEN2 = 0xCB;
 sbit TR2   = 0xCA;
 sbit C_T2  = 0xC9;
 sbit CP_RL2= 0xC8;
 
 
#line 13 "sii9135\UMCUDefs.h" /0
 
 
 
 
 sbit Reset_HDMIRX	= P0^1;
 
 
 sbit PSEL_Pin		= P0^3;
 
 
 
 
 sbit DDC_SCL       = P1^4;
 sbit DDC_SDA       = P1^5;
 sbit SCL           = P1^6;
 sbit SDA           = P1^7;
 
 
 
 
 sbit AudioSel0 = P2^2;
 sbit AudioSel1 = P2^3;
 
 sbit AudioSelAlt0 = P2^1;
 sbit AudioSelAlt1 = P2^2;
 
 
 sbit VideoFiltSelect_Pin = P2^1;
 
 sbit PDN = P2^6;
 sbit MUTE = P2^0;
 sbit MUTE_AUX = P3^5;
 sbit SOFTMUTE = P3^7;
 
 sbit HPCh1Ctrl_Pin = P2^4;
 sbit HPCh2Ctrl_Pin = P2^5;
 sbit ACRSyncPin = P2^7;
 
 sbit TXInt_Pin  = P3^3;
 sbit RXInt_Pin  = P3^2;
 
 
 sbit SELECT_Pin = P1^3;
 sbit SelectChSw_Pin = P0^5;
 
 
 
 
 
 
#line 13 "sii9135\SiIHAL.h" /0
 
 
 
 
#line 17 "sii9135\SiIHAL.h" /1
 
  
  
  
  
  
  
  
  
 
  
  
  
  
 
  
  
  
  
  
  
  
 
  
  
  
  
  
  
 
  
  
 
 
#line 51 "sii9135\SiIHAL.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void halInitGPIO_Pins( void );
 void halDelayMS ( BYTE );
 WORD siiGetTicksNumber( void );
 
 
 
#line 16 "sii9135\SiIHLVIIC.c" /0
 
 
 
 
  bit hlWaitForAck( BYTE bSlvAddr, WORD wTimeOut ){
 BYTE bError;
  bit qResult = 0;
 
 do {
 
 bError = I2CSendAddr( bSlvAddr, 0x0 );
 I2CSendStop();
 
 if ( !bError ){
 qResult = 1;
 break;
 }
 halDelayMS( 1 );
 } while ( wTimeOut-- );
 return qResult;
 }
 
 
 
 BYTE hlBlockRead_8BAS( I2CShortCommandType * IIC, BYTE * Data ) {
 BYTE i, bState;
 
 if(!(IIC->Flags & 0x04)) {
 bState = GetI2CState();
 if(bState){
 return 1;
 }
 bState = I2CSendAddr(IIC->SlaveAddr,0x0);
 if(bState){
 I2CSendStop();
 return 2;
 }
 bState = I2CSendByte(IIC->RegAddrL);
 if(bState) {
 I2CSendStop();
 return 2;
 }
 bState = I2CSendAddr (IIC->SlaveAddr,0x01);
 if(bState) {
 I2CSendStop();
 return 2;
 }
 }
 for (i = 0; i < IIC->NBytes - 1; i++)
 Data[i] = _I2CGetByte(0);
 if(IIC->Flags & 0x02) {
 Data[i] = _I2CGetByte(0);
 }
 else {
 Data[i] = _I2CGetByte(1);
 I2CSendStop();
 }
 return 0;
 
 }
 
 
 
 BYTE hlBlockWrite_8BAS( I2CShortCommandType * IIC, BYTE * Data ){
 BYTE i, bState;
 
 if(!(IIC->Flags & 0x04)) {
 bState = GetI2CState();
 if( bState )
 return 1;
 bState = I2CSendAddr(IIC->SlaveAddr,0x0);
 if( bState ){
 I2CSendStop();
 return 2;
 }
 bState = I2CSendByte(IIC->RegAddrL);
 if(bState){
 I2CSendStop();
 return 2;
 }
 }
 for (i=0; i<IIC->NBytes; i++)
 I2CSendByte(Data[i]);
 if(!(IIC->Flags & 0x02))
 I2CSendStop();
 return 0;
 
 }
 
 BYTE hlReadByte_8BA ( BYTE SlaveAddr, BYTE RegAddr ){
 BYTE Data;
 
 I2CSendAddr(SlaveAddr,0x0);
 I2CSendByte(RegAddr);
 
 I2CSendAddr (SlaveAddr,0x01);
 Data = _I2CGetByte(1);
 I2CSendStop();
 return Data;
 }
 
 
 
 WORD hlReadWord_8BA( BYTE SlaveAddr, BYTE RegAddr ) {
 WORD Data;
 
 I2CSendAddr( SlaveAddr, 0x0 );
 I2CSendByte( RegAddr++);
 
 I2CSendAddr (SlaveAddr, 0x01 );
 Data = _I2CGetByte(0);
 Data |= (_I2CGetByte(1) << 8 );
 I2CSendStop();
 return Data;
 }
 
 
 
 void hlWriteByte_8BA ( BYTE SlaveAddr, BYTE RegAddr, BYTE Data ) {
 
 I2CSendAddr(SlaveAddr,0x0);
 I2CSendByte(RegAddr);
 I2CSendByte(Data);
 I2CSendStop();
 
 }
 
 
 void hlWriteWord_8BA( BYTE SlaveAddr, BYTE RegAddr, WORD Data ){
 
 I2CSendAddr(SlaveAddr,0x0);
 I2CSendByte(RegAddr);
 I2CSendByte(Data & 0xff);
 I2CSendByte(Data >> 8);
 I2CSendStop();
 
 }
 
 
