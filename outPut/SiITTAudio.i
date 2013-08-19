
#line 1 "sii9135\SiITTAudio.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiIGlob.h" /0
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
 
#line 14 "sii9135\SiITTAudio.c" /0
 
  
#line 1 "sii9135\SiITTAudio.h" /0
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITTAudio.h" /0
 
 
 
 
 BYTE siiTTAudioHandler( bit );
 void siiSetSM_ReqAudio( void );
 void siiTurnAudioOffAndSetSM_AudioOff( void );
 void siiSetGlobalAudioMuteAndSM_Audio( bit );
  bit siiIsAudioHoldMuteState ( void );
 void siiSetSM_ReqHoldAudioMuteAndStartMuting ( bit qOn );	  
 
 
 
 
 
#line 15 "sii9135\SiITTAudio.c" /0
 
  
#line 1 "sii9135\SiITTVideo.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 13 "sii9135\SiITTVideo.h" /0
 
 
 
 
 BYTE siiTTVideoHandler( bit );
 void siiMuteVideoAndSetSM_SyncInChange( void );
  bit siiSMCheckReqVideoOn( void );
 BYTE siiGetPixClock( void );
  bit siiCheckIfVideoInputResolutionReady( void );
  bit siiCheckIfVideoOutOfRangeOrVMNotDetected( void );
 void siiSetSM_ReqVidInChange( void );
 void siiSetSM_ReqGlobalPowerDown( void );
  bit siiIsVideoOn( void );
 
 void siiSetGlobalVideoMuteAndSM_Video(bit);
 
 
#line 16 "sii9135\SiITTAudio.c" /0
 
  
#line 1 "sii9135\SiIAudio.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiIAudio.h" /0
 
 
 typedef struct {
 
 WORD Min;
 WORD Max;
 
 }CTSLimitsType;
 
 typedef struct {
 
 WORD wOutputSelect;
 WORD wI2SBusFormat;
 BYTE bI2SMap;
 BYTE bDSDHBRFormat; 
 } AudioOutputFormatType;
 
 extern AudioOutputFormatType SavedAudioOutputFormat;
 
 
 
 void siiAudioFIFO_Reset ( void );
  bit siiCheckAudio_IfOK_InitACR( void );
  bit siiPrepareTurningAudioOn( void );
 void siiTurningAudio( bit );
 void siiSetAnalogAudioMux( BYTE );
 void siiSetDigitalAudioMux( void );
 void siiClearGotCTSAudioPacketsIterrupts ( void );
 void siiClearCTSChangeInterruprt( void );
 void siiSetAudioOutputFormat( AudioOutputFormatType * );
 void siiGetAudioOutputFormat( AudioOutputFormatType * );
 void siiSaveInputAudioStatus( void );
  bit siiIsAudioStatusReady( void );
 void siiSetAutoFIFOReset(bit);
 void siiAudioMute( bit ); 
 
 void siiChangeDSDAudioStreamHandler ( void );
 void siiChangeHBRAudioStreamHandler ( void );
#line 17 "sii9135\SiITTAudio.c" /0
 
  
#line 1 "sii9135\SiITrace.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 13 "sii9135\SiITrace.h" /0
 
 
 
 
 void siiWarningHandler( BYTE );
 void siiErrorHandler( BYTE );
 void siiResetErrorsAndWarnings( void );
 BYTE siiGetErrorsWarnings( void );
 BYTE siiGetErrorsData( BYTE * );
 BYTE siiGetWarningData( BYTE * );
 
 
#line 18 "sii9135\SiITTAudio.c" /0
 
  
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
 
 
 
#line 19 "sii9135\SiITTAudio.c" /0
 
 
 
  
#line 1 "sii9135\SiIISR.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiITypeDefs.h" /0
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiICmplDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiICmplDefs.h" /1
  
 
 
 
 
  
 
 
  
 
 
 
 
  
 
 
 
 
 
 
  
 
 
  
 
  
 
 
  
 
  
 
 
  
  
 
 
 
 
  
 
  
 
 
 
 
  
  
  
 
 
 
 
 
  
 
  
 
 
#line 70 "sii9135\SiICmplDefs.h" /0
 
#line 10 "sii9135\SiITypeDefs.h" /0
 
 
#line 12 "sii9135\SiITypeDefs.h" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
  
  
 
 
 
 
 
 
  
  
 
 
 
  
  
 
  
  
 
 
 
#line 47 "sii9135\SiITypeDefs.h" /0
 
 
#line 10 "sii9135\SiIISR.h" /0
 
  
#line 1 "sii9135\SiIRXDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiIISR.h" /0
 
 
 
 enum HDCPErrorProcessing {
 cbHDCPStuckConfirmThres = 4,
 cbHDCPFailFrmThres = 4
 };
 
 BYTE siiRX_PinInterruptHandler( void );
 BYTE siiRX_BitInterruptHandler( void );
 void siiCheckTransitionToDVIModeAndResetHDMIInfoIfConfirmed( void );
 void siiTraceRXInterrupts ( void );
 
 
 
 static bit CheckAVIHader( void );
 static void SetNoAVIIntrrupts( bit );
 static void ProcessChangeBetween_DVI_HDMI_Modes( void );
 static void EnableCheckHDCPFailureWithVSyncRate ( bit );
 static void AVI_And_NoAVI_WorkAround( BYTE * );
 static bit GotNConsecutiveVSyncHDCPFailure ( void );
 static bit DetectHDCPStuck( void );
 static BYTE GotNConsecutiveHDCPStuckInterrupt ( void );
 static BYTE HDCPErrorHandler ( BYTE , BYTE );
 static BYTE RXInterruptHandler( void );
 
#line 22 "sii9135\SiITTAudio.c" /0
 
  
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
 
 
 
#line 23 "sii9135\SiITTAudio.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
  bit siiIsAudioHoldMuteState ( void ) {
  bit qResult = 0;
 
 if ( SiI_Ctrl.sm_bAudio == SiI_RX_AS_HoldAudioMute )
 qResult = 1;
 return qResult;
 }
 
 
 
 
 
 
 
 
 
 static void SetTimeOutandSM_ReqWaitVideoOn( void ){
 
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_WaitVideoOn;
 SiI_Ctrl.wAudioTimeOut = 16;
 }
 
 
 
 
 
 
 
 
 
  bit siiIsAudioStatusReady( void ){
  bit qResult = 0;
 
 if ( SiI_Ctrl.sm_bAudio == SiI_RX_AS_AudioOn )
 qResult = 1;
 return qResult;
 }
 
 
 
 
 
 
 
 
 
 
 
 void siiSetSM_ReqAudio( void ){
 if ( SiI_Ctrl.sm_bAudio != SiI_RX_AS_HoldAudioMute ) {  
 
 
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_ReqAudio;
 SiI_Ctrl.wAudioTimeOut = 5;
 }
 }
 
 
 
 
 
 static void SetSM_HoldAudioMute( bit qOn ){
 
 if ( qOn ) {
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_HoldAudioMute;
 SiI_Ctrl.wAudioTimeOut = 0;
 }
 else {
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_ReqAudio;
 SiI_Ctrl.wAudioTimeOut = 5;
 }
 
 }
 
 
 
 
 
 static void SetSM_AudioOff( void ){
 if ( SiI_Ctrl.sm_bAudio != SiI_RX_AS_HoldAudioMute ) {  
 
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_AudioOff;
 SiI_Ctrl.wAudioTimeOut = 200;   
 }
 }
 
 
 
 
 
 
 
 
 void siiTurnAudioOffAndSetSM_AudioOff( void ){
 
 siiTurningAudio( 0 );
 SetSM_AudioOff();
 }
 
 
 
 
 
 
 
 
 void siiSetGlobalAudioMuteAndSM_Audio( bit qOn ){
 if ( qOn ) {
  siiAudioFIFO_Reset();
 SetSM_HoldAudioMute( 1 );
 }
 else {
 SetSM_HoldAudioMute( 0 );
 
 }
 
 }
 
 
 
 
 
 
 
 
 
 
 void siiSetSM_ReqHoldAudioMuteAndStartMuting ( bit qOn ){
 if ( qOn ) {
 siiAudioMute( 1 );		
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_ReqHoldAudioMute;
 SiI_Ctrl.wAudioTimeOut = 50;  
 }
 else {
 SetSM_HoldAudioMute( 0 );
 
 }
 
 
 }
 
 
 
 
 
 static void CheckAudio_IfOK_InitACR( void ){
 
 siiClearCTSChangeInterruprt();
 if ( siiCheckAudio_IfOK_InitACR()){
 
 SiI_Ctrl.wAudioTimeOut = 4;
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_StartCheckCTS_Stable;
 }
 else {
 SetSM_AudioOff();
 }
 
 }
 
 
 
 
 static void StartCheckCTS_Stable( void ){
 siiClearCTSChangeInterruprt();
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_WaitAudioPPLLock;
 SiI_Ctrl.wAudioTimeOut = 150;   
 
 }
 
 
 
 
 
 static void PrepareTurningAudioOn( void ){
 
 
 if ( siiPrepareTurningAudioOn() ){
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_WaitAudioDACReady;
 SiI_Ctrl.wAudioTimeOut = SiI_RX_DelayAudio_WaitDACWakingUp;  
 }
 else {
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_AudioOff;
 SiI_Ctrl.wAudioTimeOut = 200;  
 }
 }
 
 
 
 
 static void TurningAudioOn_SetSM_WaitStatusLock( void ){
 siiTurningAudio( 1 );
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_AudioOnWaitLockStatus;
 SiI_Ctrl.wAudioTimeOut = 700;  
 }
 
 
 
 
 static void LockAudioStatusSetSM_AudioOn( void ){
 siiSaveInputAudioStatus();
 SiI_Ctrl.sm_bAudio = SiI_RX_AS_AudioOn;
 }
 
 
 
 
 
 
 
 
 
 
 
 BYTE siiTTAudioHandler( bit qTimeOut ){
 BYTE bECode = 0;
 
 switch ( SiI_Ctrl.sm_bAudio ){
 
 case SiI_RX_AS_ReqAudio:
 if  ( qTimeOut )
 CheckAudio_IfOK_InitACR();
 break;
 case SiI_RX_AS_StartCheckCTS_Stable:
 if  ( qTimeOut ){
 StartCheckCTS_Stable();
 siiClearGotCTSAudioPacketsIterrupts();
 }
 break;
 case SiI_RX_AS_WaitAudioPPLLock:
 if  ( qTimeOut )
 PrepareTurningAudioOn();
 break;
 case SiI_RX_AS_AudioOff:
 if  ( qTimeOut ){
 siiSetSM_ReqAudio();
 siiClearGotCTSAudioPacketsIterrupts();
 }
 break;
 case SiI_RX_AS_WaitAudioDACReady:
 if  ( qTimeOut ){
 if ( siiIsVideoOn() )  {
 
 siiTraceRXInterrupts ();
 
 TurningAudioOn_SetSM_WaitStatusLock();
 
 printf (" Aud On ");
 
 }
 else
 SetTimeOutandSM_ReqWaitVideoOn();
 }
 break;
 case SiI_RX_AS_AudioOnWaitLockStatus:
 if  ( qTimeOut ){
 LockAudioStatusSetSM_AudioOn();
 }
 break;
 
 case SiI_RX_AS_HoldAudioMute:
 
 break;
 case SiI_RX_AS_WaitVideoOn:
 if  ( qTimeOut ){
 if ( siiIsVideoOn() )
 TurningAudioOn_SetSM_WaitStatusLock();
 else
 SetTimeOutandSM_ReqWaitVideoOn();
 }
 break;
 case SiI_RX_AS_ReqHoldAudioMute:
 if  ( qTimeOut ){
 SetSM_HoldAudioMute( 1 );	
 siiTurnAudioOffAndSetSM_AudioOff( );
 }
 break;
 
 
 
 }
 bECode = SiI_Inf.bAudioErr;
 return bECode;
 
 }
 
