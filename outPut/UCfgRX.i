
#line 1 "sii9135\UCfgRX.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "d:\Keil\C51\Inc\stdio.h" /0






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
 #pragma SAVE
 #pragma REGPARMS
 extern char _getkey (void);
 extern char getchar (void);
 extern char ungetchar (char);
 extern char putchar (char);
 extern int printf   (const char *, ...);
 extern int sprintf  (char *, const char *, ...);
 extern int vprintf  (const char *, char *);
 extern int vsprintf (char *, const char *, char *);
 extern char *gets (char *, int n);
 extern int scanf (const char *, ...);
 extern int sscanf (char *, const char *, ...);
 extern int puts (const char *);
 
 #pragma RESTORE
 
 
 
#line 14 "sii9135\UCfgRX.c" /0
 
 
  
#line 1 "sii9135\UCfgRX.h" /0
 
 
 
 
 
 
 
 
 
  
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
 
 
 
 
 
 
 
 
 
 
 
#line 10 "sii9135\UCfgRX.h" /0
 
  
#line 1 "sii9135\UGlob.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef enum {
 
 SiI_CP9011,
 SiI_CP9031,
 SiI_CP9041,
 SiI_CP9000,
 SiI_CP9133,
 SiI_FPGA_IP11,
 SiI_CP9135,
 SiI_CP9125
 
 
 }SiIPCBType;
 
 
 
 enum SiI_com {
 
 WaitStartRX = 0,
 ReadyRX = 1,
 START_FRAME_RX ='s'
 };
 
 
 
 
 extern idata BYTE RXBuffer[26];       
 extern BYTE bRxIndex;
 extern BYTE bCommState;
 extern BYTE bCommTO;
 extern bit qBuffInUse;
 extern bit qFuncExe;
 extern bit qDebugModeOnlyF;
 
 
 extern bit qReqTasksProcessing;
 extern WORD wNewTaskTickCounter;
 extern WORD wTickCounter;
 extern BYTE bNewTaskSlot;
 
 
 
 
 
 
 
#line 11 "sii9135\UCfgRX.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 BYTE siiGetPCB_Id( void );
 BYTE siiRXConfig( void );
 
 
#line 16 "sii9135\UCfgRX.c" /0
 
  
#line 1 "sii9135\UEEPROM.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\UEEPROM.h" /0
 
  
#line 1 "sii9135\UDebugHLIIC.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\UDebugHLIIC.h" /0
 
  
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
 
 
 
#line 11 "sii9135\UDebugHLIIC.h" /0
 
  
#line 1 "sii9135\SiIHLVIIC.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
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
 
 
 
#line 13 "sii9135\UCom.h" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
  
  
 
  
  
  
  
  
  
 
 
  
  
  
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
#line 165 "sii9135\UCom.h" /0
 
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
 
 
 
 
 
 
#line 12 "sii9135\UDebugHLIIC.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 BYTE BlockWrite_16BA( I2CCommandType * );
 BYTE BlockRead_16BA( I2CCommandType *);
 BYTE BlockRead_8BA(I2CCommandType *);
 BYTE BlockWrite_8BA( I2CCommandType *);
 BYTE BlockRead_16BAS(I2CShortCommandType * , BYTE * );
 BYTE BlockWrite_16BAS( I2CShortCommandType * , BYTE * );
 WORD ReadWord_16BA( BYTE , WORD);
 BYTE ReadByte_16BA( BYTE , WORD);
 void WriteByte_16BA( BYTE , WORD, BYTE );
 void WriteWord_16BA( BYTE, WORD, WORD);
 BYTE DoRecoverySCLs( void );
 
 
 
 
 
 
 
#line 11 "sii9135\UEEPROM.h" /0
 
 
 
 BYTE siiFindEEPROM ( void );
 BYTE siiBlockReadEEPROM ( WORD, BYTE, BYTE * );
 void siiBlockWriteEEPROM ( WORD, BYTE, BYTE * );
 
 
 
#line 17 "sii9135\UCfgRX.c" /0
 
  
#line 1 "sii9135\SiIRX_API.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiIRX_API.h" /0
 
  
#line 1 "sii9135\SiIRXAPIDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 enum SiIDeviceId {    
 
 SiI9993 = 0x9942,
 SiI9031 = 0x9A53,
 SiI9021 = 0x9A52,
 SiI9011 = 0x9AA3,
 SiI9051 = 0x9051,
 SiI9023 = 0x9023,
 SiI9033 = 0x9033,
 SiI9125 = 0x9125,
 SiI9133 = 0x9133,
 SiI9135 = 0x9135
 
 };
 
 enum SiI_RX_DeviceId {  
 
 RX_SiI9993,
 RX_SiI9031,
 RX_SiI9021,
 RX_SiI9011,
 RX_SiI9051,
 RX_SiI9023,
 RX_SiI9033,
 RX_SiI9133,
 RX_SiIIP11,
 RX_SiI9135,
 RX_SiI9125,
 RX_Unknown = 0xFF
 };
 
 
 enum SiI_RX_InputColorSpace {
 SiI_RX_ICP_RGB,
 SiI_RX_ICP_YCbCr422,
 SiI_RX_ICP_YCbCr444
 };
 
 
 
 enum SiI_RX_ColorDepth {
 SiI_RX_CD_24BPP = 0x00,
 SiI_RX_CD_30BPP = 0x01,
 SiI_RX_CD_36BPP = 0x02
 };
 
 enum SiI_RX_Path {
 
 SiI_RX_P_RGB,
 SiI_RX_P_YCbCr444,
 SiI_RX_P_RGB_2PixClk,             
 SiI_RX_P_YCbCr444_2PixClk,        
 SiI_RX_P_RGB_48B,                 
 SiI_RX_P_YCbCr444_48B,            
 SiI_RX_P_YCbCr422,                
 SiI_RX_P_YCbCr422_MUX8B,          
 SiI_RX_P_YCbCr422_MUX10B,         
 SiI_RX_P_YCbCr422_16B,
 SiI_RX_P_YCbCr422_20B,
 SiI_RX_P_YCbCr422_16B_2PixClk,    
 SiI_RX_P_YCbCr422_20B_2PixClk,    
 SiI_RX_P_Mask = 0x3F
 };
 
 
 
 enum SiI_RX_Path_Switch {
 
 SiI_RX_P_S_PassReplicatedPixels = 0x80,  
 
 };
 
 
 enum SiI_RX_VidRes {
 SiI_ResNoInfo = 0xFF,
 SiI_ResNotDetected = 0xFE,
 SiI_CE_Res = 0x80,
 SiI_CE_orNextRes = 0x40
 };
 
 
 enum SiI_RX_SyncSel {
 
 SiI_RX_SS_SeparateSync,
 SiI_RX_SS_CompOnH,             
 SiI_RX_SS_CompOnV,             
 SiI_RX_SS_EmbSync,             
 SiI_RX_AVC_SOGY                
 
 };
 
 
 enum SiI_RX_SyncCtrl {
 
 SiI_RX_SC_NoInv = 0x00,
 SiI_RX_SC_InvH = 0x10,              
 SiI_RX_SC_InvV = 0x20               
 
 };
 
 
 enum SiI_RX_AnalogVideoCtrl {
 
 SiI_RX_AVC_Digital_Output,
 SiI_RX_AVC_NoPedestal,
 SiI_RX_AVC_Pedestal                  
 };
 
 
 enum SiI_RX_OutputSel {
 
 SiI_RX_OS_Analog  = 0x10,
 SiI_RX_OS_Digital = 0x20
 
 };
 
 enum SiI_RX_AVI_State {
 
 SiI_RX_NoAVI,
 SiI_RX_GotAVI
 
 };
 
 enum SiI_RX_Colorimetry {
 
 SiI_RX_ColorimetryNoInfo,
 SiI_RX_ITU_601,
 SiI_RX_ITU_709
 };
 
 enum SiI_RX_AVMuteCtrl {
 
 SiI_RX_AVMuteCtrl_MuteAudio = 0x01,
 SiI_RX_AVMuteCtrl_MuteVideo = 0x10
 };
 
 enum SiI_RX_GlobalStatus {
 SiI_RX_Global_HotPlugDetect = 0x01,
 SiI_RX_Global_VMute = 0x02,   
 SiI_RX_GlobalHDMI_Detected = 0x04,
 SiI_RX_GlobalHDMI_AMute = 0x08,   
 SiI_RX_GlobalHDMI_ACP = 0x10,  
 SiI_RX_GlobalHDMI_NoAVIPacket = 0x20,
 SiI_RX_GlobalHDMI_Reserved    = 0x40,
 SiI_RX_Global_OldHotPlugDetect = 0x80
 };
 
 enum SiI_RX_NewInfo {
 SiI_RX_NewInfo_AVI      = 0x01,
 SiI_RX_NewInfo_SPD      = 0x02,
 SiI_RX_NewInfo_AUD      = 0x04,
 SiI_RX_NewInfo_Reserved = 0x08,
 SiI_RX_NewInfo_ACP      = 0x10,
 SiI_RX_NewInfo_ISRC1    = 0x20,
 SiI_RX_NewInfo_ISRC2    = 0x40,
 SiI_RX_NewInfo_UNREQ    = 0x80
 };
 
 enum SiI_RX_VideoState {
 
 SiI_RX_VS_PowerDown,
 SiI_RX_VS_SyncInChange,
 SiI_RX_VS_SyncStable,
 SiI_RX_VS_SyncOutOfRange,
 SiI_RX_VS_ReqVMDetection,
 SiI_RX_VS_VMDetected,
 SiI_RX_VS_VMNotDetected,
 SiI_RX_VS_ReqVideoOn,
 SiI_RX_VS_VideoOn,
 SiI_RX_VS_ReqVidInChange,
 SiI_RX_VS_ReqGlobalPowerDown,   
 SiI_RX_VS_GlobalPowerDown,
 SiI_RX_VS_ReqPowerDown,
 SiI_RX_VS_HoldVideoMute
 
 };
 
 enum SiI_RX_Delays {
 SiI_RX_DelayAudio_WaitDACWakingUp = 20
 
 };
 
 
 
 enum SiI_AudioChannelStatus4 {
 
 
 
 _22Fs = 0x04,
 _44Fs = 0x00,
 _88Fs = 0x08,
 _176Fs = 0x0C,
 _24Fs = 0x06,
 _48Fs = 0x02,
 _96Fs = 0x0A,
 _192Fs = 0x0E,
 _32Fs = 0x03,
 _768Fs = 0x09,  
 FsNotIndicated = 0x01,
 
 
 
 AccuracyLevel2 = 0x00,
 AccuracyLevel1 = 0x20,
 AccuracyLevel3 = 0x10,
 
 SiI_Mask_AudioChannelStatus4 = 0x3F
 };
 
 enum SiI_AudioChannelStatus5 {
 
 
 AudioLengthNotIndicated = 0x00,
 
 AudioLength_max20_16bit = 0x02,
 AudioLength_max20_18bit = 0x04,
 AudioLength_max20_19bit = 0x08,
 AudioLength_max20_20bit = 0x0A,
 AudioLength_max20_17bit = 0x0C,
 
 AudioLength_max24_20bit = 0x03,
 AudioLength_max24_22bit = 0x05,
 AudioLength_max24_23bit = 0x09,
 AudioLength_max24_24bit = 0x0B,
 AudioLength_max24_21bit = 0x0D,
 
 AudioLength_max24bit = 0x01
 
 };
 
 enum SiI_MClk {
 MClock_128Fs = 0x00,  
 MClock_256Fs = 0x01,  
 MClock_384Fs = 0x02,  
 MClock_512Fs = 0x03,  
 
 SelectMClock = 0x03
 };
 
 
 
 enum SiI_ChipType {
 
 
 SiI_RX_InvertOutputVidClock = 0x40,
 SiI_RX_FPGA = 0x80
 
 };
 
 enum SiI_RX_AudioState {
 
 SiI_RX_AS_AudioOff,
 SiI_RX_AS_ReqAudio,
 SiI_RX_AS_StartCheckCTS_Stable,
 SiI_RX_AS_WaitAudioPPLLock,
 SiI_RX_AS_WaitAudioDACReady,
 SiI_RX_AS_AudioOnWaitLockStatus,
 SiI_RX_AS_AudioOn,
 SiI_RX_AS_ReqAudioOff,
 SiI_RX_AS_HoldAudioMute,
 SiI_RX_AS_WaitVideoOn,
 SiI_RX_AS_ReqHoldAudioMute  
 
 };
 
 enum SiI_RX_I2SBusFormat {
 
 SiI_RX_AOut_I2S_1BitShift =0x0000,           
 SiI_RX_AOut_I2S_1BitNoShift = 0x0001,    
 SiI_RX_AOut_I2S_MSB1St = 0x0000,         
 SiI_RX_AOut_I2S_LSB1St = 0x0002,             
 SiI_RX_AOut_I2S_LJ = 0x0000,                     
 SiI_RX_AOut_I2S_RJ = 0x0004,                     
 SiI_RX_AOut_I2S_LeftPolWSL = 0x0000,     
 SiI_RX_AOut_I2S_LeftPolWSH = 0x0008,     
 SiI_RX_AOut_I2S_MSBSgEx = 0x0000,    
 SiI_RX_AOut_I2S_MSBNoSgEx = 0x00010,     
 SiI_RX_AOut_I2S_WS32Bit = 0x0000,                
 SiI_RX_AOut_I2S_WS16Bit = 0x0020,                
 SiI_RX_AOut_I2S_SEPos = 0x0000,                  
 SiI_RX_AOut_I2S_SENeg = 0x0040,                  
 SiI_RX_AOut_I2S_PassAllData = 0x0000,            
 SiI_RX_AOut_I2S_ValData = 0x0080,                
 SiI_RX_AOut_I2S_PassAnyFrm = 0x0000,     
 SiI_RX_AOut_I2S_PassPCMOnly = 0x0100,                
 SiI_RX_AOut_I2S_24BVI2S = 0x0000,                
 SiI_RX_AOut_I2S_28BVI2S = 0x0200,                 
 
 SiI_RX_AOut_I2S_I2SDefault = 0x0140
 };
 
 enum SiI_RX_DSDBusFormat {
 SiI_RX_AOut_DSD_WS32Bit = 0x00,                
 SiI_RX_AOut_DSD_WS16Bit = 0x01,                
 SiI_RX_AOut_DSD_SEPos   = 0x00,                
 SiI_RX_AOut_DSD_SENeg   = 0x02,                
 };
 
 enum SiI_RX_HBRABusFormat {
 SiI_RX_AOut_HBRA_WS32Bit = 0x00,                
 SiI_RX_AOut_HBRA_WS16Bit = 0x10,                
 SiI_RX_AOut_HBRA_SEPos   = 0x00,                
 SiI_RX_AOut_HBRA_SENeg   = 0x20,                
 };
 
 enum SiI_RX_AudioFIFOMap {
 
 SiI_RX_AOut_Map_F0_D0 = 0x00,
 SiI_RX_AOut_Map_F1_D0 = 0x01,
 SiI_RX_AOut_Map_F2_D0 = 0x02,
 SiI_RX_AOut_Map_F3_D0 = 0x03,
 
 SiI_RX_AOut_Map_F0_D1 = 0x00,
 SiI_RX_AOut_Map_F1_D1 = 0x04,
 SiI_RX_AOut_Map_F2_D1 = 0x08,
 SiI_RX_AOut_Map_F3_D1 = 0x0C,
 
 SiI_RX_AOut_Map_F0_D2 = 0x00,
 SiI_RX_AOut_Map_F1_D2 = 0x10,
 SiI_RX_AOut_Map_F2_D2 = 0x20,
 SiI_RX_AOut_Map_F3_D2 = 0x30,
 
 SiI_RX_AOut_Map_F0_D3 = 0x00,
 SiI_RX_AOut_Map_F1_D3 = 0x40,
 SiI_RX_AOut_Map_F2_D3 = 0x80,
 SiI_RX_AOut_Map_F3_D3 = 0xC0,
 
 SiI_RX_AOut_FIFOMap_Default = 0xE4
 };
 
 
 enum SiI_RX_AudioOutputSelect {
 
 SiI_RX_AOut_SmoothHWMute = 0x01,
 SiI_RX_AOut_SPDIF = 0x02,
 SiI_RX_AOut_I2S = 0x04,
 SiI_RX_AOut_Res = 0x08,
 
 SiI_RX_AOut_SD0_En = 0x100,       
 SiI_RX_AOut_SD1_En = 0x200,
 SiI_RX_AOut_SD2_En = 0x400,
 SiI_RX_AOut_SD3_En = 0x800,
 
 SiI_RX_AOut_Default = ( SiI_RX_AOut_SmoothHWMute | SiI_RX_AOut_SPDIF | SiI_RX_AOut_I2S |
 SiI_RX_AOut_SD0_En | SiI_RX_AOut_SD1_En | SiI_RX_AOut_SD2_En | SiI_RX_AOut_SD3_En)
 };
 
 enum SiI_RX_AudioRepresentation {
 
 SiI_RX_AudioRepr_PCM,
 SiI_RX_AudioRepr_Compressed,
 SiI_RX_AudioRepr_DSD,
 SiI_RX_AudioRepr_HBR
 
 
 };
 
 enum SiI_RX_NumberAudioChannels {
 
 SiI_RX_NumAudCh_Unknown,
 SiI_RX_NumAudCh_2,
 SiI_RX_NumAudCh_3,
 SiI_RX_NumAudCh_4,
 SiI_RX_NumAudCh_5,
 SiI_RX_NumAudCh_6,
 SiI_RX_NumAudCh_7,
 SiI_RX_NumAudCh_8,
 SiI_RX_NumAudCh_UnknownMulti
 };
 
 enum SiI_RX_TMDSState {
 
 SiI_RX_TMDS_NoInfo,
 SiI_RX_TMDS_DVI,
 SiI_RX_TMDS_HDMI
 };
 
 enum SiI_RX_HDCPStatus {
 SiI_RX_HDCP_NotDecrypted,
 SiI_RX_HDCP_Decrypted
 };
 
 
 enum SiI_RX_TasksProperty {
 
 SiI_RX_Tasks_DebugOnly,
 SiI_RX_Tasks_All
 };
 
 enum SiI_RX_PowerState {
 SiI_RX_Power_Off,
 SiI_RX_Power_On
 };
 
 enum SiI_RX_VideoInputChannels {
 SiI_RX_VInCh1 = 0x10,
 SiI_RX_VInCh2 = 0x20,
 };
 
 enum SiI_RX_AVI {
 SiI_RX_AVI_Defaults = 0,
 SiI_RX_AVI_IF = 0x80,
 SiI_RX_AVI_ColSpMask = 0x60,
 SiI_RX_AVI_ColSp_RGB = 0x00,
 SiI_RX_AVI_ColSp_YCbCr444 = 0x20,
 SiI_RX_AVI_ColSp_YCbCr422 = 0x40,
 SiI_RX_AVI_ColorimetryMask = 0x18,
 SiI_RX_AVI_Colorimetry_NoInfo = 0x00,
 SiI_RX_AVI_Colorimetry_BT601 = 0x08,
 SiI_RX_AVI_Colorimetry_BT709 = 0x10,
 SiI_RX_AVI_PixReplMask = 0x06,
 SiI_RX_AVI_PixRepl_NoRepl = 0x00,
 SiI_RX_AVI_PixRepl_x2 = 0x02,
 SiI_RX_AVI_PixRepl_x3 = 0x04,
 SiI_RX_AVI_PixRepl_x4 = 0x06
 };
 
 enum SiI_RX_HDMIStatus {
 SiI_RX_HDMI_HP = 0x01,
 SiI_RX_HDMI_Enabled = 0x02,
 SiI_RX_HDMI_AMute = 0x04,
 SiI_RX_HDMI_VMute = 0x08,
 SiI_RX_HDMI_ACP = 0x10
 };
 
 
 
 enum SiI_ErrWrnCode {
 
 SiI_EWC_OK,  
 SiI_WC_ChipNoCap,      
 SiI_WC_FrmNoCap,       
 SiI_WC_PCBNoCap,       
 SiI_WC_IncorrectCombPrm,  
 SiI_WC_Colorimetry,              
 SiI_WC_InfoFramePacketUnknownId,
 SiI_WC_CTS_Irregular,
 
 
 SiI_EC_FirstIICErr = 0x81,
 
 SiI_EC_NoAckIIC = SiI_EC_FirstIICErr,          
 SiI_EC_LowLevelIIC = 0x82,       
 SiI_EC_OtherIIC = 0x83,          
 
 SiI_EC_NoAckMasterIIC = 0x84,    
 SiI_EC_OtherMasterIIC = 0x85,    
 SiI_EC_LastIICErr = SiI_EC_OtherMasterIIC,
 
 
 
 SiI_EC_NoEnoughMem = 0x86,       
 
 
 SiI_EC_DivZeroAttemp = 0x87,           
 
 
 SiI_EC_InColorSpace = 0x88,      
 
 
 
 SiI_EC_InfoFrameWrongLength = 0x96,
 SiI_EC_InfoFrameWrongCheckSum = 0x97,
 
 
 
 SiI_EC_MasterClockInDiv = 0x98,
 SiI_EC_MasterClockOutDiv = 0x99,
 
 
 SiI_EC_LateCallAPIEngine = 0x9A,
 
 SiI_EC_Mask = 0x80
 
 };
 
 enum SiI_AudioErrCode {
 SiI_EC_NoAudioErrors,
 SiI_EC_NoAudioPackets = 0x89,    
 SiI_EC_CTS_OutOfRange = 0x8A,    
 SiI_EC_CTS_Dropped = 0x8B,       
 SiI_EC_CTS_Reuseed = 0x8C,       
 SiI_EC_NoCTS_Packets = 0x8D,     
 SiI_EC_CTS_Changed  = 0x8E,      
 SiI_EC_ECCErrors = 0x8D,         
 SiI_EC_AudioLinkErrors  = 0x8F,  
 SiI_EC_PLL_Unlock  = 0x90,       
 SiI_EC_FIFO_UnderRun = 0x92,     
 SiI_EC_FIFO_OverRun = 0x93,      
 SiI_EC_FIFO_ResetFailure = 0x94,
 SiI_EC_FIFO_UnderRunStuck = 0x96,
 SiI_EC_HDCP_StuckInterrupt = 0x97,
 
 SiI_EC_UnsupportedColorDepth = 0x99,
 SiI_EC_ColorDepthError = 0x9A
 };
 
 
 
 enum SiI_RX_API_ChangeEvents {
 SiI_RX_API_VideoSM_Changed    = 0x01,
 SiI_RX_API_AudioSM_Changed    = 0x02,
 SiI_RX_API_InfoPacket_Changed = 0x04,
 SiI_RX_API_HDCPStatus_Changed = 0x08,
 SiI_RX_API_GlobalStatus_Changed = 0x10
 };
 
 enum SiI_RX_VidOutputsPowerDown {
 
 SiI_RX_VidOutPD_NoPD,
 SiI_RX_VidOutPD_Analog,
 SiI_RX_VidOutPD_AnalogAndDigital,
 SiI_RX_VidOutPD_Digital
 
 };
 
 
 enum  IgnoreIntr {
 
 qcIgnoreNoAVI = 0x01,
 qcIgnoreAAC  = 0x02,
 qcIgnoreHDCPFail = 0x04
 
 };
 
 
 
#line 11 "sii9135\SiIRX_API.h" /0
 
  
#line 1 "sii9135\SiIGlob.h" /0
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiIGlob.h" /0
 
  
#line 1 "sii9135\SiIVidRes.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 13 "sii9135\SiIVidRes.h" /0
 
  
#line 1 "sii9135\SiIRXAPIDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiIRXAPIDefs.h" /1
  
 
  
  
 
 
  
 
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 550 "sii9135\SiIRXAPIDefs.h" /0
 
#line 14 "sii9135\SiIVidRes.h" /0
 
 
 
 typedef struct {
 WORD ClocksPerLine;
 WORD HTot;
 WORD VFreq;
 BYTE RefrTypeVHPol;
 BYTE bFPix;
 
 } SyncInfoType;
 
 
 
 typedef struct {
 BYTE Mode_C1;
 BYTE Mode_C2;
 BYTE SubMode;
 }ModeIdType;
 
 typedef struct {
 WORD Pixels;
 WORD Lines;
 } PxlLnTotalType;
 
 typedef struct {
 WORD H;
 WORD V;
 } HVPositionType;
 
 typedef struct {
 WORD H;
 WORD V;
 } HVResolutionType;
 
 typedef struct{
 BYTE RefrTypeVHPol;
 WORD VFreq;
 PxlLnTotalType Total;
 } TagType;
 
 typedef struct {
 BYTE IntAdjMode;
 WORD HLength;
 WORD VLength;
 WORD Top;
 WORD Dly;
 WORD HBit2HSync;
 WORD VBit2VSync;
 WORD Field2Offset;
 
 }  _656Type;
 
 typedef struct {
 ModeIdType ModeId;
 BYTE PixClk;
 TagType Tag;
 HVResolutionType Res;
 BYTE PixRepl;
 } VModeInfoType;
 
 
 typedef struct {
 
 WORD CapHalfLineCnt;
 WORD PreEqPulseCnt;
 WORD SerratedCnt;
 WORD PostEqPulseCnt;
 BYTE Field2BackPorch;
 
 } InterlaceCSyncType;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 103 "sii9135\SiIVidRes.h" /1
  
  
 
 
#line 107 "sii9135\SiIVidRes.h" /0
 
 
#line 109 "sii9135\SiIVidRes.h" /1
 
 
 
  
  
 
 
 
 
 
  
  
 
 
 
#line 124 "sii9135\SiIVidRes.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 160 "sii9135\SiIVidRes.h" /1
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
 
 
#line 180 "sii9135\SiIVidRes.h" /0
 
 
 
 
 
 extern code const VModeInfoType VModeTables[(( 28 + 15 ) + 54)];
 extern code const InterlaceCSyncType InterlaceCSync[3];
 
 
 BYTE siiVideoModeDetection( BYTE * , SyncInfoType * );
  bit siiCheckOutOfRangeConditions( SyncInfoType * );
 BYTE siiSetVidResDependentVidOutputFormat( BYTE , BYTE , BYTE );
 void siiGetSyncInfo( SyncInfoType * );
  bit siiCheckSyncDetect( void );
  bit siiCheckClockDetect( void );
 BYTE siiGetPixClockFromTables( BYTE );
  bit siiCompareNewOldSync(SyncInfoType * , SyncInfoType * );
 void siiPrintVModeParameters( BYTE , BYTE );
 void siiGetVideoInputResolution( BYTE , BYTE * );
 void siiGetVideoInputResolutionromRegisters( BYTE * );
 BYTE siiGetVideoResId ( BYTE );
 
 
 
#line 13 "sii9135\SiIGlob.h" /0
 
 
 
 
 
 enum SiI_RX_API_Info {
 SiI_RX_API_Version = 0x01,
 SiI_RX_API_Revision = 0x02, 
 SiI_RX_API_Build = 0x3, 
 SiI_RX_API_DiagnosticCommands = 1
 };
 
 typedef struct {
 
 WORD wProcLastAPI_Ticks;
 WORD wProcLastDoTasks_Ticks;
 
 } SysTimerType;
 
 typedef struct {
 
 BYTE bOutputVideoPath;
 BYTE bOutputSyncSelect;
 BYTE bOutputSyncCtrl;
 BYTE bOutputVideoCtrl;
 
 } VideoFormatType;





 
 
 typedef struct {
 
 BYTE sm_bVideo;
 BYTE sm_bAudio;
 BYTE bDevId;
 BYTE bRXInitPrm0;
 BYTE bVidInChannel;
 WORD wAudioTimeOut;
 WORD wVideoTimeOut;
 BYTE bInfoFrameTimeOut;
 BYTE bVideoPath;
 WORD wAudioOutputSelect;
 BYTE bShadowPixRepl;
 BYTE bIgnoreIntr;
 BYTE bHDCPFailFrmCnt;
 BYTE bHDCPStuckConfirmCnt;
 VideoFormatType VideoF;
 SysTimerType SysTimer;
 
 
 } SiI_CtrlType;
 
 typedef struct {
 BYTE bAudio;
 BYTE bIIC;
 } ErrorType;
 
 typedef struct {
 BYTE bRepresentation;          
 BYTE bAccuracyAndFs;
 BYTE bLength;
 BYTE bNumberChannels;
 }AudioStatusType;
 
 typedef struct {
 
 BYTE bAVI_State;
 BYTE bInputColorSpace;
 BYTE bColorimetry;
 BYTE bPixRepl;
 BYTE bInputColorDepth;		 
 BYTE bOutputColorDepth;		 
 
 }AVIType;
 
 typedef struct {
 
 BYTE bVResId;
 AVIType AVI;
 BYTE bGlobStatus;
 BYTE bHDCPStatus;
 BYTE bNewInfoPkts;
 AudioStatusType AudioStatus;
 SyncInfoType Sync;
 BYTE bAudioErr;
 BYTE bIIC_Err;
 
 } SiI_InfoType;
 
 extern idata BYTE SiI_bWCode[ 4 ];
 extern idata BYTE SiI_bECode[ 4 ];
 
 extern idata SiI_InfoType SiI_Inf;
 extern idata SiI_CtrlType SiI_Ctrl;
 
 
 
 
#line 12 "sii9135\SiIRX_API.h" /0
 
 
 
 
 
 BYTE SiI_RX_GetAPI_Info ( BYTE * );
 BYTE SiI_RX_InitializeSystem( BYTE * );
 BYTE SiI_RX_GlobalPower ( BYTE );
 BYTE SiI_RX_SetVideoInput ( BYTE );
 BYTE SiI_RX_SetAudioVideoMute ( BYTE );
 BYTE SiI_RX_DoTasks ( BYTE * );
 BYTE SiI_RX_GetSystemInformation ( BYTE * );
 
 
 
 
 BYTE SiI_RX_GetPackets(BYTE , BYTE * );
 
 
 
 
 BYTE SiI_RX_SetVideoOutputFormat ( BYTE, BYTE, BYTE, BYTE );
 BYTE SiI_RX_GetVideoOutputFormat ( BYTE * );
 BYTE SiI_RX_GetVideoInputResolution ( BYTE * );
 
 
 
 
 BYTE SiI_RX_SetAudioOutputFormat ( WORD, WORD, BYTE, BYTE  );
 BYTE SiI_RX_GetAudioOutputFormat ( BYTE * );
 BYTE SiI_RX_GetAudioInputStatus( BYTE * );
 
 
 
 
 BYTE SiI_GetWarnings( BYTE * );
 BYTE SiI_GetErrors( BYTE * );
 
 
 
 
 BYTE SiI_Diagnostic_GetNCTS ( BYTE * );
 BYTE SiI_Diagnostic_GetABKSV ( BYTE * );
 BYTE SiI_Diagnostic_GetAPIExeTime(BYTE * );
 


 
 
 
 
#line 18 "sii9135\UCfgRX.c" /0
 
  
#line 1 "sii9135\SiIRXAPIDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiIRXAPIDefs.h" /1
  
 
  
  
 
 
  
 
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 550 "sii9135\SiIRXAPIDefs.h" /0
 
#line 19 "sii9135\UCfgRX.c" /0
 
 
  
#line 1 "sii9135\SiIVidIn.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiIVidIn.h" /0
 
  
#line 1 "sii9135\SiIRXDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiIVidIn.h" /0
 
 
 void siiChangeVideoInput( BYTE );
 void siiSetVideoInput( BYTE);
 BYTE siiInitVideoInput(BYTE);
 
#line 21 "sii9135\UCfgRX.c" /0
 
 
 
 
 
 
 
 
 
 
 BYTE siiGetPCB_Id( void ){
 BYTE bData;
 
 siiBlockReadEEPROM ( 0x08, 1 , &bData );
 return bData;
 }
 
 
 
 
 void InitEEPROMWithDefaults( void ){
 BYTE abData[5];
 
 abData[0] = 0x20;
 abData[1] = 0x93;
 siiBlockWriteEEPROM ( 0x00 , 2, abData);     
 abData[0] = SiI_CP9125;
 
 
 siiBlockWriteEEPROM ( 0x08 , 1, abData);     
 
 
 abData[0] = MClock_256Fs<<4 | MClock_512Fs<<2 | MClock_256Fs | SiI_RX_InvertOutputVidClock;
 abData[1] = SiI_RX_CD_24BPP;
 siiBlockWriteEEPROM ( 0x10 ,2 , abData);
 
 abData[0] = SiI_RX_VInCh1;
 siiBlockWriteEEPROM ( 0x18 ,1 , abData);
 
 abData[0] = SiI_RX_P_RGB;
 abData[1] = SiI_RX_SS_SeparateSync;
 abData[2] = SiI_RX_SC_NoInv;
 abData[3] = SiI_RX_AVC_NoPedestal;
 siiBlockWriteEEPROM ( 0x20 ,4 , abData);
 
 abData[0] = (BYTE)( SiI_RX_AOut_Default & 0xFF );
 abData[1] = (BYTE)( ( SiI_RX_AOut_Default >> 8 ) & 0xFF );
 abData[2] = (BYTE)( SiI_RX_AOut_I2S_I2SDefault & 0xFF );
 abData[3] = (BYTE)(( SiI_RX_AOut_I2S_I2SDefault >> 8 ) & 0xFF );
 abData[4] = 0x00;
 abData[5] = 0x22; 
 siiBlockWriteEEPROM ( 0x30, 6 , abData);  
 
 }
 
 
 
 
 
 static void InitTX ( BYTE bBoardID ){
 
 
 
 if ( bBoardID == SiI_CP9000 ) {
 hlWriteByte_8BA( 0x72, 0x08, 0x35 );
 }
 else if (( bBoardID == SiI_FPGA_IP11 )||( bBoardID == SiI_CP9135|| bBoardID ==  SiI_CP9125)||( bBoardID == SiI_CP9133)) {
 
 printf("InitTX\n");
 hlWriteByte_8BA(0x70, 0x08, 0x37);
 hlWriteByte_8BA(0x70, 0x09, 0x11);
 }
 
 }
 
 
 
 
 static void PrintMasterClock( BYTE bMasterClock ){
 
 switch ( bMasterClock ){
 case MClock_128Fs: printf ("128 * Fs"); break;
 case MClock_256Fs: printf ("256 * Fs"); break;
 case MClock_384Fs: printf ("384 * Fs"); break;
 case MClock_512Fs: printf ("512 * Fs"); break;
 }
 }
 
 
 
 
 static void PrintOutputColorDepth( BYTE bOutColorDepth ){
 
 switch ( bOutColorDepth ){
 case SiI_RX_CD_24BPP: printf ("24 bit per pixel"); break;
 case SiI_RX_CD_30BPP: printf ("30 bit per pixel"); break;
 case SiI_RX_CD_36BPP: printf ("36 bit per pixel"); break;
 }
 }
 
 
 
 
 static void PrintIntilizeSystemWith( BYTE * pbInitData ){
 
 printf ("\n RX API intance intilized with:");
 printf ("\nPCM Master Clock output: " );
 PrintMasterClock( pbInitData[0] & 0x03 );
 printf ("\nDSD Master Clock output: " );
 PrintMasterClock( (pbInitData[0] >> 2) & 0x03 );
 printf ("\nHBR Master Clock output: " );
 PrintMasterClock( (pbInitData[0] >> 4) & 0x03 );
 printf ("\nFPGA support: ");
 if ( pbInitData[0] & SiI_RX_FPGA )
 printf ("yes");
 else
 printf ("no");
 printf ("\nVideo Output clock:");
 if ( pbInitData[0] & SiI_RX_InvertOutputVidClock )
 printf ("yes");
 else
 printf ("no");
 printf ("\nOutput Color Depth: ");
 PrintOutputColorDepth ( pbInitData[1] & 0x03 );
 }
 
 
 
 
 
 
 static BYTE siiRXAPIConfig( void ){
 BYTE abData[6];
 BYTE bError;
 WORD wDevId;
 
 siiBlockReadEEPROM ( 0x10 ,2 , abData);
 
 bError = SiI_RX_InitializeSystem( abData );
 
 if ( ! ( bError & SiI_EC_Mask) ) {
 
 PrintIntilizeSystemWith( abData );
 
 SiI_RX_GetAPI_Info( abData );
 wDevId = abData[4] | ( abData[5] << 8 );
 
 siiBlockReadEEPROM ( 0x18 ,1 , abData);
 
 if ( wDevId == SiI9011 ) {
 abData[0] = SiI_RX_VInCh1;
 }
 
 
 
 
 SiI_Ctrl.bVidInChannel = abData[0]; 
 bError = siiInitVideoInput(SiI_Ctrl.bVidInChannel);
 
 
 if ( !(bError & SiI_EC_Mask) ) {
 siiBlockReadEEPROM ( 0x20 ,4 , abData);
 if ( ( wDevId == SiI9011 ) || ( wDevId == SiI9023 ) || ( wDevId == SiI9033 ) || 
 (SiI_Ctrl.bDevId == RX_SiI9133 )|| (SiI_Ctrl.bDevId == RX_SiI9135||SiI_Ctrl.bDevId == RX_SiI9125 )
 || ( SiI_Ctrl.bDevId == RX_SiIIP11 ) ) {
 abData[3] = SiI_RX_AVC_Digital_Output;  
 }
 bError = SiI_RX_SetVideoOutputFormat ( abData[0],
 abData[1],
 abData[2],
 abData[3]
 );
 if (  !(bError & SiI_EC_Mask) ) {
 
 siiBlockReadEEPROM ( 0x30 ,6 , abData);    
 bError = SiI_RX_SetAudioOutputFormat ( (WORD) ( abData[0] | (abData[1] << 8)),
 (WORD) ( abData[2] | (abData[3] << 8)),
 abData[4], abData[5] 
 );
 
 }
 }
 }
 return ( bError  & SiI_EC_Mask) ;
 
 }
 
 
 
 
 
 
 
 
 BYTE siiRXConfig( void ){
 BYTE abData[2];
 BYTE bError;
 
 
 printf ( " \n Init application...\n" );
 
 bError = siiFindEEPROM();
 if ( !bError ) {
 
 bError = siiBlockReadEEPROM ( 0x00, 2 , abData );
 if( !bError ) {
 printf ( "\n Get EEPROM settings\n" );
 if( ( abData[0] != 0x20 ) || ( abData[1] != 0x93 )){
 InitEEPROMWithDefaults();
 }
 bError = siiRXAPIConfig();
 
 if( !bError  ) {
 siiBlockReadEEPROM ( 0x08 , 1, abData);     
 if ( ( abData[0] == SiI_CP9000 ) || ( abData[0] == SiI_FPGA_IP11 ) ) 
 InitTX( abData[0] );
 }
 }
 
 }
 else {
 bError = 1;
 printf ( "No Ack from configuration EEPROM, use API to init RX\n");
 
 }
 return bError;
 
 }
 
