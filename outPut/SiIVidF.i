
#line 1 "sii9135\SiIVidF.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "sii9135\SiIVidF.h" /0
 
 
 
 
 
 
 
 
 
  
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
 
 
 
 
 
 
 
 
 
 
 
#line 10 "sii9135\SiIVidF.h" /0
 
  
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
 
 
 
#line 11 "sii9135\SiIVidF.h" /0
 
 
 typedef enum  SiI_PixPrepl {
 
 SiI_PixRepl1 = 0x00,
 SiI_PixRepl2 = 0x01,
 SiI_PixRepl4 = 0x03
 
 };
 
 BYTE siiGetVideoFormatData(BYTE *  );
 BYTE siiSetVideoFormatData(BYTE *  );
 BYTE siiPrepVideoPathSelect( BYTE , BYTE, BYTE *  );
 BYTE siiPrepSyncSelect( BYTE  , BYTE *  );
 BYTE siiPrepSyncCtrl( BYTE  , BYTE *  );
 BYTE siiPrepVideoCtrl( BYTE , BYTE * );
 
 void siiSetVidResDependentVidPath( BYTE , BYTE );
 void siiSetVideoPathColorSpaceDependent( BYTE , BYTE );
 void siiSetStaticVideoPath( BYTE, BYTE );
 void siiMuteVideo( BYTE );
 
#line 15 "sii9135\SiIVidF.c" /0
 
  
#line 1 "sii9135\SiIRXDefs.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 16 "sii9135\SiIVidF.c" /0
 
  
#line 1 "sii9135\SiIRXAPIDefs.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiIRXAPIDefs.h" /1
  
 
  
  
 
 
  
 
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 550 "sii9135\SiIRXAPIDefs.h" /0
 
#line 17 "sii9135\SiIVidF.c" /0
 
  
#line 1 "sii9135\SiIRXIO.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
 
 
 
#line 13 "sii9135\SiIRXIO.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void siiModifyBits( BYTE, BYTE , BYTE , bit );
 void siiReadBlockHDMIRXP0( BYTE, BYTE, BYTE * );
 void siiReadBlockHDMIRXP1( BYTE, BYTE, BYTE * );
 void siiWriteBlockHDMIRXP0( BYTE, BYTE, BYTE * );
 void siiWriteBlockHDMIRXP1( BYTE, BYTE, BYTE * );
 
 
 
 
 
 void siiReadModWriteByte (BYTE bSlaveAddr, BYTE bRegAddr, BYTE bBitMask, BYTE bNewValue);
 
 
 
 
#line 18 "sii9135\SiIVidF.c" /0
 
  
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
 
 
 
 
#line 19 "sii9135\SiIVidF.c" /0
 
  
#line 1 "sii9135\SiIVidRes.h" /0
 
 
 
 
 
 
 
 
 
 
#line 11 "sii9135\SiIVidRes.h" /1
  
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
  
 
 
  
 
 
 
 
  
  
 
 
  
  
 
 
 
 
 
 
 
  
  
 
 
 
 
 
  
  
 
 
 
 
  
  
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 203 "sii9135\SiIVidRes.h" /0
 
#line 20 "sii9135\SiIVidF.c" /0
 
  
#line 1 "sii9135\SiIHDMIRX.h" /0
 
 
 
 
 
 
 
 
 
 void siiGetRXDeviceInfo ( BYTE * );
  bit siiIsHDMI_Mode( void );
  bit siiInitializeRX( BYTE * );
 void siiRX_PowerDown( BYTE );
 void siiRX_GlobalPower ( BYTE );
 void siiSetMasterClock ( BYTE );
 
  bit siiRX_CheckCableHPD ( void );
 void siiClearBCHCounter( void );
 void siiRX_DisableTMDSCores( void );
 void sii_SetVideoOutputPowerDown( BYTE );
 void siiSetAutoSWReset ( bit );
 void siiRXHardwareReset( void );
 void siiSetAFEClockDelay( void );
  bit siiCheckSupportDeepColorMode ( void );
 
 void siiSetHBRFs (bit);
 void siiSetNormalTerminationValueCh1( bit );
 void siiSetNormalTerminationValueCh2( bit );
 
#line 21 "sii9135\SiIVidF.c" /0
 
  
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
 
 
#line 22 "sii9135\SiIVidF.c" /0
 
 
 
 
 
 
 
 
 
 BYTE siiGetVideoFormatData(BYTE * pbVidFormatData){
 BYTE bECode = 0;
 
 siiReadBlockHDMIRXP0( 0x48, 3, pbVidFormatData );
 return bECode;
 }
 
 
 
 
 
 
 
 
 BYTE siiSetVideoFormatData(BYTE * pbVidFormatData){
 BYTE bECode = 0;
 
 siiWriteBlockHDMIRXP0( 0x48, 3, pbVidFormatData );
 return bECode;
 }
 
 
 
 
 
 
 
 
 void siiSetVideoPathColorSpaceDependent( BYTE bVideoPath, BYTE bInputColorSpace ){
 BYTE bVidFormatData[3];
 
 siiGetVideoFormatData( bVidFormatData );
 siiPrepVideoPathSelect( bVideoPath, bInputColorSpace, bVidFormatData );
 siiSetVideoFormatData( bVidFormatData );
 
 }
 
 
 
 
 
  bit CheckVideoDAC_Cap ( void ){
  bit qVidedDACCap = 0;
 
 if ((SiI_Ctrl.bDevId ==  RX_SiI9021 ) || ( SiI_Ctrl.bDevId ==  RX_SiI9031))
 qVidedDACCap = 1;
 return qVidedDACCap;
 
 }
 
 
 
 
 static void CheckVidPathForDevCap( BYTE bVideoPath ){
 BYTE bWCode = 0;
 
 switch ( bVideoPath ){
 case SiI_RX_P_RGB_2PixClk:             
 case SiI_RX_P_YCbCr444_2PixClk:        
 case SiI_RX_P_YCbCr422_16B_2PixClk:    
 case SiI_RX_P_YCbCr422_20B_2PixClk:    
 
 
 if ( SiI_Ctrl.bDevId !=  RX_SiI9011 )
 bWCode = SiI_WC_ChipNoCap;
 
 
 break;
 case SiI_RX_P_RGB_48B:                 
 case SiI_RX_P_YCbCr444_48B:            
 
 if ( SiI_Ctrl.bDevId ==  RX_SiI9011 )
 bWCode = SiI_WC_ChipNoCap;
 
 }
 siiWarningHandler( bWCode );
 }
 
 
 
 
 static void PrepVideoPathCSCAnalogDAC( BYTE bVideoPath, BYTE * pbVideoOutputFormat){
 
 pbVideoOutputFormat[1] &= ( ~0x01 );
 pbVideoOutputFormat[2] |= 0x01;
 switch ( bVideoPath ) {
 case SiI_RX_P_RGB:  
 case SiI_RX_P_RGB_2PixClk:             
 case SiI_RX_P_RGB_48B:                 
 pbVideoOutputFormat[1] |= 0x01;
 break;
 }
 
 }




















 
 
 
 
 
 
 static void PrepVideoPathForRGBInput( BYTE bVideoPath, BYTE * pbVideoOutputFormat){
 
 
 
 
 
 pbVideoOutputFormat[2]&=( ~( 0x02 | 0x04 | 0x20 | 0x40 | 0x08 ) );
 pbVideoOutputFormat[1] &= (~ 0x04);
 
 pbVideoOutputFormat[0]&=( ~0x02 );
 
 switch ( bVideoPath ) {
 
 case SiI_RX_P_RGB:  
 case SiI_RX_P_RGB_2PixClk:             
 case SiI_RX_P_RGB_48B:                 
 break;
 case SiI_RX_P_YCbCr444:  
 case SiI_RX_P_YCbCr444_2PixClk:        
 case SiI_RX_P_YCbCr444_48B:            
 pbVideoOutputFormat[2]|= 0x08;
 break;
 
 
 
 case SiI_RX_P_YCbCr422_MUX8B:          
 pbVideoOutputFormat[2]|= ( 0x08|0x02|0x40|0x20 );
 break;
 case SiI_RX_P_YCbCr422_MUX10B:         
 pbVideoOutputFormat[2]|= ( 0x08|0x02|0x40);
 break;
 case SiI_RX_P_YCbCr422_16B:
 pbVideoOutputFormat[2]|= ( 0x08|0x02|0x20);
 break;
 case SiI_RX_P_YCbCr422:
 case SiI_RX_P_YCbCr422_20B:
 pbVideoOutputFormat[2]|= ( 0x08|0x02);
 break;
 case SiI_RX_P_YCbCr422_16B_2PixClk:    
 pbVideoOutputFormat[2]|= ( 0x08|0x02|0x20 );
 break;
 case SiI_RX_P_YCbCr422_20B_2PixClk:    
 pbVideoOutputFormat[2]|= ( 0x08|0x02 );
 break;
 }
 }
 
 
 
 
 static void PrepVideoPathForYCbCr422Input( BYTE bVideoPath, BYTE * pbVideoOutputFormat){
 
 
 
 
 
 pbVideoOutputFormat[2]&=( ~( 0x02 | 0x04 | 0x20 | 0x40 | 0x08 ) );
 pbVideoOutputFormat[1] &= (~ 0x04);
 
 
 pbVideoOutputFormat[0]|= 0x02 ;
 
 switch ( bVideoPath ) {
 
 
 case SiI_RX_P_RGB:
 case SiI_RX_P_RGB_2PixClk:             
 case SiI_RX_P_RGB_48B:                 
 pbVideoOutputFormat[2]|= 0x04;
 pbVideoOutputFormat[1]|= 0x04;
 break;
 
 
 case SiI_RX_P_YCbCr444:
 case SiI_RX_P_YCbCr444_2PixClk:        
 case SiI_RX_P_YCbCr444_48B:            
 pbVideoOutputFormat[2]|=  0x04;
 break;
 
 
 
 case SiI_RX_P_YCbCr422_MUX8B:          
 pbVideoOutputFormat[2]|= ( 0x40|0x20 );
 break;
 case SiI_RX_P_YCbCr422_MUX10B:         
 pbVideoOutputFormat[2]|= 0x40;
 break;
 case SiI_RX_P_YCbCr422_16B:
 pbVideoOutputFormat[2]|= 0x20;
 break;
 case SiI_RX_P_YCbCr422:
 case SiI_RX_P_YCbCr422_20B:
 break;
 case SiI_RX_P_YCbCr422_16B_2PixClk:    
 pbVideoOutputFormat[2]|= 0x20;
 break;
 case SiI_RX_P_YCbCr422_20B_2PixClk:    
 break;
 }
 }
 
 
 
 
 static void PrepVideoPathForYCbCr444Input( BYTE bVideoPath, BYTE * pbVideoOutputFormat){
 
 
 
 
 
 pbVideoOutputFormat[2]&=( ~( 0x04 | 0x20 | 0x40 | 0x08) );
 pbVideoOutputFormat[1]&=( ~0x04);
 pbVideoOutputFormat[0]&= ( ~0x02);
 
 
 switch ( bVideoPath ) {
 
 
 case SiI_RX_P_RGB:
 case SiI_RX_P_RGB_2PixClk:             
 case SiI_RX_P_RGB_48B:                 
 pbVideoOutputFormat[1] |= 0x04;
 break;
 
 
 case SiI_RX_P_YCbCr444:
 case SiI_RX_P_YCbCr444_2PixClk:        
 case SiI_RX_P_YCbCr444_48B:            
 
 break;
 
 
 case SiI_RX_P_YCbCr422_20B:
 case SiI_RX_P_YCbCr422:
 pbVideoOutputFormat[2]|= 0x02;
 break;
 case SiI_RX_P_YCbCr422_MUX8B:          
 pbVideoOutputFormat[2]|= ( 0x02 | 0x40 | 0x20 );
 break;
 case SiI_RX_P_YCbCr422_MUX10B:         
 pbVideoOutputFormat[2]|= ( 0x02 | 0x40 );
 break;
 case SiI_RX_P_YCbCr422_16B:
 pbVideoOutputFormat[2]|= ( 0x02 | 0x20 );
 break;
 
 
 case SiI_RX_P_YCbCr422_16B_2PixClk:    
 pbVideoOutputFormat[2]|= ( 0x02 | 0x20 );
 break;
 case SiI_RX_P_YCbCr422_20B_2PixClk:    
 break;
 }
 }
 
 
 
 
 
 
 
 
 
 BYTE siiPrepVideoPathSelect( BYTE bVideoPathSelect, BYTE bInputColorSpace, BYTE * pbVidFormatData ){
 BYTE bECode = 0;
 
 if ( CheckVideoDAC_Cap () ){
 PrepVideoPathCSCAnalogDAC ( bVideoPathSelect & SiI_RX_P_Mask, pbVidFormatData );
 }
 if ( bInputColorSpace == SiI_RX_ICP_RGB ) {
 PrepVideoPathForRGBInput( bVideoPathSelect & SiI_RX_P_Mask, pbVidFormatData );
 }
 else if ( bInputColorSpace == SiI_RX_ICP_YCbCr422 ) {
 PrepVideoPathForYCbCr422Input( bVideoPathSelect & SiI_RX_P_Mask, pbVidFormatData );
 }
 else if ( bInputColorSpace == SiI_RX_ICP_YCbCr444 ) {
 PrepVideoPathForYCbCr444Input( bVideoPathSelect & SiI_RX_P_Mask, pbVidFormatData );
 }
 else  bECode = SiI_EC_InColorSpace;
 
 CheckVidPathForDevCap( bVideoPathSelect );
 
 return bECode;
 }
 
 
 
 
 
 
 
 
 BYTE siiPrepSyncSelect( BYTE bSyncSelect, BYTE * pbVidFormatData ){
 BYTE bECode = 0;
 BYTE bWCode = 0;
 
 
 
 
 
 
 pbVidFormatData[0] &= ( ~( 0x10  | 0x20  | 0x08 ) );
 pbVidFormatData[2] &= ( ~ 0x80 );
 switch ( bSyncSelect ) {
 
 case SiI_RX_SS_SeparateSync:
 break;
 case SiI_RX_SS_CompOnH:
 pbVidFormatData[0] |= 0x10;
 break;
 case SiI_RX_SS_CompOnV:
 pbVidFormatData[0] |= 0x20;
 break;
 case SiI_RX_SS_EmbSync:
 pbVidFormatData[2] |= 0x80;
 break;
 case SiI_RX_AVC_SOGY:
 pbVidFormatData[0] |= 0x08;
 if ( SiI_Ctrl.bDevId ==  RX_SiI9011 )
 bWCode = SiI_WC_ChipNoCap;
 break;
 }
 siiWarningHandler( bWCode );
 
 return bECode;
 }
 
 
 
 
 
 
 
 
 BYTE siiPrepSyncCtrl( BYTE bSyncCtrl, BYTE * pbVidFormatData ){
 BYTE bECode = 0;
 
 
 
 
 
 pbVidFormatData[0] &= ( ~(0x40 | 0x80) );
 if ( bSyncCtrl & SiI_RX_SC_InvH )
 pbVidFormatData[0] |= 0x40;
 if ( bSyncCtrl & SiI_RX_SC_InvV )
 pbVidFormatData[0] |= 0x80;
 
 return bECode;
 }
 
 
 
 
 
 
 
 
 BYTE siiPrepVideoCtrl( BYTE bVideoOutCtrl, BYTE * pbVidFormatData ){
 BYTE bECode = 0;
 BYTE bWCode = 0;
 
 
 
 
 
 
 if( bVideoOutCtrl == SiI_RX_AVC_Pedestal)
 pbVidFormatData[1] |= 0x02;
 else if ( bVideoOutCtrl == SiI_RX_AVC_NoPedestal )
 pbVidFormatData[1] &= ( ~0x02 );
 
 if ( (SiI_Ctrl.bDevId ==  RX_SiI9011 ) && ( bVideoOutCtrl != SiI_RX_AVC_Digital_Output) )
 bWCode = SiI_WC_ChipNoCap;
 
 if ( bVideoOutCtrl == SiI_RX_AVC_Digital_Output)
 sii_SetVideoOutputPowerDown( SiI_RX_VidOutPD_Analog );
 else
 sii_SetVideoOutputPowerDown( SiI_RX_VidOutPD_Digital );
 
 siiWarningHandler( bWCode );
 return bECode;
 }
 
 
 
 
 
 static void Configure2PixPerClockMode( bit On ){
 
 
 if ( On ){
  siiModifyBits( 0x60, 0x08, 0x08, 1);
  siiModifyBits( 0x68, 0x3E, 0x08, 1);
 }
 else {
  siiModifyBits( 0x60, 0x08, 0x08, 0);
  siiModifyBits( 0x68, 0x3E, 0x08, 0);
 }
 
 }
 
 
 
 
 
 static void SetInputOutputDivider( bit qMode48BitOr2PixClk, bit qRestoreOrigPixClock, BYTE PixRepl ){
 BYTE bRegVal;
 SiI_Ctrl.bShadowPixRepl = PixRepl;
 bRegVal = hlReadByte_8BA( 0x60, 0x08 );
 
 bRegVal &= 0x0F;;    
 
 bRegVal |= ( PixRepl << 4 );         
 
 if ( (!qRestoreOrigPixClock) && qMode48BitOr2PixClk ) {
 bRegVal |= 0x40;
 }
 else if ( qRestoreOrigPixClock && (!qMode48BitOr2PixClk) )
 bRegVal |= ( PixRepl << 6 );    
 else if ( qRestoreOrigPixClock && qMode48BitOr2PixClk ){
 if ( PixRepl == SiI_PixRepl1)
 bRegVal |= 0x40;
 else if ( PixRepl == SiI_PixRepl2)
 bRegVal |= 0xC0;
 else {
 siiWarningHandler( SiI_WC_ChipNoCap );
 }
 }
 
  hlWriteByte_8BA( 0x60, 0x08, bRegVal );
 
 
 }
 
 
 
 
 
 
 
 
 
 void siiSetVidResDependentVidPath( BYTE bPixRepl, BYTE bVideoPath ){
  bit qRestoreOrgPixClock = 1;
 
 if ( bVideoPath & SiI_RX_P_S_PassReplicatedPixels )
 qRestoreOrgPixClock = 0;
 switch ( bVideoPath ) {
 
 case SiI_RX_P_RGB_2PixClk:             
 case SiI_RX_P_YCbCr444_2PixClk:        
 case SiI_RX_P_YCbCr422_16B_2PixClk:    
 case SiI_RX_P_YCbCr422_20B_2PixClk:    
 if ( SiI_Ctrl.bDevId ==  RX_SiI9011 ) {
 Configure2PixPerClockMode(1);
 SetInputOutputDivider( 1  , qRestoreOrgPixClock, bPixRepl );
 }
 else
 siiWarningHandler( SiI_WC_ChipNoCap );
 
 break;
 
 case SiI_RX_P_RGB_48B:                 
 case SiI_RX_P_YCbCr444_48B:            
 SetInputOutputDivider( 1  , qRestoreOrgPixClock, bPixRepl );
 
 if ( SiI_Ctrl.bDevId ==  RX_SiI9011 )
 siiWarningHandler( SiI_WC_ChipNoCap );
 
 break;
 default:
 SetInputOutputDivider( 0 , qRestoreOrgPixClock, bPixRepl );
 if ( SiI_Ctrl.bDevId ==  RX_SiI9011 )
 Configure2PixPerClockMode(0);
 break;
 }
 }
 
 
 
 
 
 
 
 
 
 void siiMuteVideo( BYTE On ){
 
 if ( On ) {
  siiModifyBits( 0x68, 0x37, 0x01, 1);
 SiI_Inf.bGlobStatus |= SiI_RX_Global_VMute;
 }
 else {
  siiModifyBits( 0x68, 0x37, 0x01, 0);
 SiI_Inf.bGlobStatus &= (~SiI_RX_Global_VMute);
 }
 }
 
