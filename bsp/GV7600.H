#ifndef _gv7600_h
#define _gv7600_h 1

#define low  0
#define high 1


/*****************************************
*
*  Video formate detection REG:
   RASTER_STRUCTURE:
   ST(R)D_LOCK:    视频侦测电路完全同步时为“high”
   INT/PROG#:      逐行[0],隔行[1]
   VD_STD[4:0]:	   5位,可以读出来 p79,P50
						 656_BYPASS#    ASI    RATE_SEL0   20bit/10bit#
		 ----------------------------------------------------------------
    ASI Mode：	     0			 1	 	  1			     0	    all video processing feature are disabled!!
		 ----------------------------------------------------------------
   data through mode：		 0			 0		  X			     1
         ----------------------------------------------------------------
		  video mode:		 1			 0		  x				 1
		  
                         DETECT_TRS     861_EN
		  -------------------------------------------------
	   CEA-861 Timing	      0			          1	     from(HSYNC/VSYNC/DE)
	     H:V:F Timing		    0			          0
	 extract from TRS	  	  1			          X
*
*
*****************************************/

extern  unsigned int  GV7600_Read_Buff[10];
/************************测试点****************************/

/*************************************************
*  	   registers of gv7600,video core part
**************************************************/
#define  Video_Core_Cfg_Status_reg_0    0x000h 
#define	 Video_Core_Cfg_Status_reg_1    0x001h
#define	 Video_Core_Cfg_Status_reg_2    0x002h
#define	 Video_Core_Cfg_Status_reg_3    0x003h
#define  Video_Core_Cfg_Status_reg_4    0x004h
#define	 Video_Core_Cfg_Status_reg_7    0x007h
#define	 Video_Core_Cfg_Status_reg_12   0x012h
#define	 Video_Core_Cfg_Status_reg_13   0x013h
#define	 Video_Core_Cfg_Status_reg_14   0x014h
#define	 Video_Core_Cfg_Status_reg_15   0x015h
#define	 Video_Core_Cfg_Status_reg_24   0x024h
#define	 Video_Core_Cfg_Status_reg_25   0x025h
#define	 Video_Core_Cfg_Status_reg_26   0x026h
#define	 Video_Core_Cfg_Status_reg_27   0x027h
#define	 Video_Core_Cfg_Status_reg_28   0x028h
#define	 Video_Core_Cfg_Status_reg_29   0x029h
#define	 Video_Core_Cfg_Status_reg_2A   0x02Ah
#define	 Video_Core_Cfg_Status_reg_2B   0x02Bh
#define	 Video_Core_Cfg_Status_reg_2C   0x02Ch
#define	 Video_Core_Cfg_Status_reg_2D   0x02Dh
#define	 Video_Core_Cfg_Status_reg_20E  0x20Eh
#define	 Video_Core_Cfg_Status_reg_20F  0x20Fh
#define	 Video_Core_Cfg_Status_reg_210  0x210h


/*************************************************
*  			 spi read&write from gv7600	functions
**************************************************/
extern void          gv7600_init(void);
extern unsigned int  gv7600_spi_receive(void);
extern void          gv7600_spi_send(unsigned int Data);
extern void    		 gv7600_spi_read(unsigned int Addr) ;
extern void    		 gv7600_spi_write(unsigned int addr,unsigned int Data);
extern void          GV7600_RateSet(void);
