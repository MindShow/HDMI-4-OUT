
#line 1 "sii9135\SiIVRTables.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
 
 
 
 
 
 
 
 
#line 15 "sii9135\SiIVRTables.c" /0
 
  
#line 1 "sii9135\SiIVRTables.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiIVRTables.h" /0
 
  
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
 
 
 
#line 11 "sii9135\SiIVRTables.h" /0
 
 
 
#line 16 "sii9135\SiIVRTables.c" /0
 
 
 
 
 
 
 
 
  code const VModeInfoType VModeTables[(( 28 + 15 ) + 54)]=
 { 
 { { 1,  0, 0},  25, {0x00,      6000, { 800,  525}}, { 640,  480}, 0},		 
 { { 2,  3, 0},  27, {0x00,      6000, { 858,  525}}, { 720,  480}, 0},		 
 { { 4,  0, 0},  74, {0x03,      6000, {1650,  750}}, {1280,  720}, 0},		 
 { { 5,  0, 0},  74, {0x07,  6000, {2200,  562}}, {1920, 1080}, 0},		 
 { { 6,  7, 0},  27, {0x04,  6000, {1716,  262}}, {1440,  480}, 1},		 
 { { 8,  9,   1},  27, {0x00,      6000, {1716,  262}}, {1440,  240}, 1},		 
 { { 8,  9,   2},  27, {0x00,      6000, {1716,  263}}, {1440,  240}, 1},		 
 { {10, 11, 0},  54, {0x04,  6000, {3432,  262}}, {2880,  480}, 1},		 
 { {12, 13,   1},  54, {0x00,      6000, {3432,  262}}, {2880,  240}, 3},		 
 { {12, 13,   2},  54, {0x00,      6000, {3432,  263}}, {2880,  240}, 3},		 
 { {14, 15, 0},  54, {0x00,      6000, {1716,  525}}, {1440,  480}, 0},		 
 { {16,  0, 0}, 146, {0x03,      6000, {2200, 1125}}, {1920, 1080}, 0},		 
 { {17, 18, 0},  27, {0x00,      5000, { 864,  625}}, { 720,  576}, 0},		 
 { {19,  0, 0},  74, {0x03,      5000, {1980,  750}}, {1280,  720}, 0},		 
 { {20,  0, 0},  74, {0x07,  5000, {2640,  562}}, {1920, 1080}, 0},		 
 { {21, 22, 0},  27, {0x04,  5000, {1728,  312}}, {1440,  576}, 1},		 
 { {23, 24,   1},  27, {0x00,      5000, {1728,  312}}, {1440,  288}, 1},		 
 { {23, 24,   2},  27, {0x00,      5000, {1728,  313}}, {1440,  288}, 1},		 
 { {23, 24,   3},  27, {0x00,      5000, {1728,  314}}, {1440,  288}, 1},		 
 { {25, 26, 0},  54, {0x04,  5000, {3456,  312}}, {2880,  576}, 1},		 
 { {27, 28,   1},  54, {0x00,      5000, {3456,  312}}, {2880,  288}, 3},		 
 { {27, 28,   2},  54, {0x00,      5000, {3456,  313}}, {2880,  288}, 3},		 
 { {27, 28,   3},  54, {0x00,      5000, {3456,  314}}, {2880,  288}, 3},		 
 { {29, 30, 0},  54, {0x01,      5000, {1728,  625}}, {1440,  576}, 0},		 
 { {31,  0, 0}, 148, {0x03,      5000, {2640, 1125}}, {1920, 1080}, 0},		 
 { {32,  0, 0},  74, {0x03,      2400, {2750, 1125}}, {1920, 1080}, 0},		 
 { {33,  0, 0},  74, {0x03,      2500, {2640, 1125}}, {1920, 1080}, 0},		 
 { {34,  0, 0},  74, {0x03,      3000, {2200, 1125}}, {1920, 1080}, 0},		 
 
 
 { {35, 36, 0}, 108, {0x00,      6000, {3432,  525}}, {2880,  480}, 1},		 
 { {37, 38, 0}, 108, {0x00,      5000, {3456,  625}}, {2880,  576}, 1},		 
 { {39,  0, 0},  72, {0x06,  5000, {2304,  625}}, {1920, 1080}, 0},		 
 { {40,  0, 0}, 148, {0x07, 10000, {2640,  562}}, {1920, 1080}, 0},		 
 { {41,  0, 0}, 148, {0x03,     10000, {1980,  750}}, {1280,  720}, 0},		 
 { {42, 43, 0},  54, {0x00,     10000, { 864,  625}}, { 720,  576}, 0},		 
 { {44, 45, 0},  54, {0x00,     10000, {1728,  312}}, { 720,  576}, 1},		 
 { {46,  0, 0}, 148, {0x07, 12000, {2200,  562}}, {1920, 1080}, 0},		 
 { {47,  0, 0}, 148, {0x03,     12000, {1650,  750}}, {1280,  720}, 0},		 
 { {48, 49, 0},  54, {0x00,     12000, { 858,  525}}, { 720,  480}, 0},		 
 { {50, 51, 0},  54, {0x04, 12000, {1716,  262}}, { 720,  480}, 1},		 
 { {52, 53, 0}, 108, {0x03,     20000, { 864,  625}}, { 720,  576}, 0},		 
 { {54, 55, 0}, 108, {0x04, 20000, {1728,  312}}, { 720,  576}, 0},		 
 { {56, 57, 0}, 108, {0x00,     24000, { 858,  525}}, { 720,  480}, 0},		 
 { {58, 59, 0}, 108, {0x04, 24000, {1716,  262}}, { 720,  480}, 1},		 
 
 
 
 
 
 { {( 28 + 15 )     , 0, 0},  25, {0x02,     7009, { 800,  449}}, { 640,  350}, 0},		 
 { {( 28 + 15 ) +  1, 0, 0},  31, {0x02,     8508, { 832,  445}}, { 640,  350}, 0},		 
 { {( 28 + 15 ) +  2, 0, 0},  25, {0x01,     7009, { 800,  449}}, { 640,  400}, 0},		 
 { {( 28 + 15 ) +  3, 0, 0},  31, {0x01,     8508, { 832,  445}}, { 640,  400}, 0},		 
 { {( 28 + 15 ) +  4, 0, 0},  28, {0x01,     7008, { 900,  449}}, { 720,  400}, 0},		 
 { {( 28 + 15 ) +  5, 0, 0},  35, {0x01,     8504, { 936,  446}}, { 720,  400}, 0},		 
 { {( 28 + 15 ) +  6, 0, 0},  25, {0x00,     5994, { 800,  525}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) +  7, 0, 0},  30, {0x00,     6667, { 864,  525}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) +  8, 0, 0},  31, {0x00,     7280, { 832,  520}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) +  9, 0, 0},  31, {0x00,     7500, { 840,  500}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) + 10, 0, 0},  36, {0x00,     8500, { 832,  509}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) + 11, 0, 0},  38, {0x00,     9003, { 832,  510}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) + 12, 0, 0},  45, {0x00,    10004, { 864,  530}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) + 13, 0, 0},  55, {0x00,    12000, { 864,  534}}, { 640,  480}, 0},		 
 { {( 28 + 15 ) + 14, 0, 0},  36, {0x03,     5625, {1024,  625}}, { 800,  600}, 0},		 
 { {( 28 + 15 ) + 15, 0, 0},  40, {0x03,     6031, {1056,  628}}, { 800,  600}, 0},		 
 { {( 28 + 15 ) + 16, 0, 0},  50, {0x03,     7219, {1040,  666}}, { 800,  600}, 0},		 
 { {( 28 + 15 ) + 17, 0, 0},  50, {0x03,     7500, {1056,  625}}, { 800,  600}, 0},		 
 { {( 28 + 15 ) + 18, 0, 0},  56, {0x03,     8506, {1048,  631}}, { 800,  600}, 0},		 
 { {( 28 + 15 ) + 19, 0, 0},  57, {0x00,     9000, {1024,  622}}, { 800,  600}, 0},		 
 { {( 28 + 15 ) + 20, 0, 0},  70, {0x00,    10000, {1088,  640}}, { 800,  600}, 0},		 
 { {( 28 + 15 ) + 21, 0, 0},  57, {0x00,     7455, {1152,  667}}, { 832,  624}, 0},		 
 { {( 28 + 15 ) + 22, 0, 0},  45, {0x07, 4348, {1264,  817}}, {1024,  768}, 0},		 
 { {( 28 + 15 ) + 23, 0, 0},  65, {0x00,     6000, {1344,  806}}, {1024,  768}, 0},		 
 { {( 28 + 15 ) + 24, 0, 0},  75, {0x00,     7007, {1328,  806}}, {1024,  768}, 0},		 
 { {( 28 + 15 ) + 25, 0, 0},  79, {0x03,     7503, {1312,  800}}, {1024,  768}, 0},		 
 { {( 28 + 15 ) + 26, 0, 0},  94, {0x03,     8500, {1376,  808}}, {1024,  768}, 0},		 
 { {( 28 + 15 ) + 27, 0, 0},  80, {0x03,     6005, {1472,  905}}, {1152,  864}, 0},		 
 { {( 28 + 15 ) + 28, 0, 0},  94, {0x03,     7002, {1472,  914}}, {1152,  864}, 0},		 
 { {( 28 + 15 ) + 29, 0, 0}, 108, {0x03,     7500, {1600,  900}}, {1152,  864}, 0},		 
 { {( 28 + 15 ) + 30, 0, 0}, 108, {0x03,     6001, {1696, 1066}}, {1280, 1024}, 0},		 
 { {( 28 + 15 ) + 31, 0, 0}, 108, {0x03,     6002, {1688, 1066}}, {1280, 1024}, 0},		 
 { {( 28 + 15 ) + 32, 0, 0}, 135, {0x03,     7502, {1688, 1066}}, {1280, 1024}, 0},		 
 { {( 28 + 15 ) + 33, 0, 0}, 157, {0x03,     8502, {1728, 1072}}, {1280, 1024}, 0},		 
 { {( 28 + 15 ) + 34, 0, 0}, 135, {0x07, 4804, {2160, 1301}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 35, 0, 0}, 158, {0x03,     6000, {2112, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 36, 0, 0}, 121, {0x03,     8506, {1568,  911}}, {1152,  864}, 0},		 
 { {( 28 + 15 ) + 37, 0, 0}, 100, {0x00,     7506, {1456,  915}}, {1152,  870}, 0},		 
 { {( 28 + 15 ) + 38, 0, 0}, 108, {0x03,     6000, {1800, 1000}}, {1280,  960}, 0},		 
 { {( 28 + 15 ) + 39, 0, 0}, 129, {0x03,     7500, {1728, 1000}}, {1280,  960}, 0},		 
 { {( 28 + 15 ) + 40, 0, 0}, 148, {0x03,     8500, {1728, 1011}}, {1280,  960}, 0},		 
 { {( 28 + 15 ) + 41, 0, 0},  78, {0x07, 4344, {1696, 1069}}, {1280, 1024}, 0},		 
 { {( 28 + 15 ) + 42, 0, 0}, 162, {0x03,     6000, {2160, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 43, 0, 0}, 173, {0x03,     6553, {2112, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 44, 0, 0}, 175, {0x03,     6500, {2154, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 45, 0, 0}, 185, {0x03,     7000, {2160, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 46, 0, 0}, 202, {0x03,     7500, {2160, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 47, 0, 0}, 216, {0x03,     8000, {2160, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 48, 0, 0}, 229, {0x03,     8500, {2160, 1250}}, {1600, 1200}, 0},		 
 { {( 28 + 15 ) + 49, 0, 0}, 232, {0x03,     8500, {2176, 1258}}, {1600, 1200}, 0},		 
 
 
 
 { {( 28 + 15 ) + 50, 0, 0},  33, {0x03,     6000, { 517, 1235}}, { 848,  480}, 0},		 
 { {( 28 + 15 ) + 51, 0, 0},  68, {0x02,     6000, {1440,  790}}, {1280,  768}, 0},		 
 { {( 28 + 15 ) + 52, 0, 0},  85, {0x03,     6000, {1792,  795}}, {1360,  768}, 0},		 
 { {( 28 + 15 ) + 53, 0, 0}, 154, {0x02,     6000, {2080, 1235}}, {1920, 1200}, 0},		 
 
 
 
 
 };
 
 
 
  code const InterlaceCSyncType InterlaceCSync[3]={
 { 507, 6, 6, 6, 0 },                
 { 610, 5, 5, 5, 0 },                
 { 1113, 0, 10, 2|0x80, 0 },   
 };
