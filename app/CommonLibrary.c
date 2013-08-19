/******************** (C) COPYRIGHT 2012 Justchen and someone ********************
* File Name          : CommonLibrary.c
* Author             : Justchen
* Version            : V1.0
* Date               : 5/06/2013
* Description        : Common C Libraries
********************************************************************************/



#include "CommonLibrary.h"




void Delay_ms(ushort z)
{
	/*data uchar m,n;
	for( ;i>0;i--){		//T=3+[2*163*3+3*3+8]*i=3+995*i
		for(m=3;m>0;m--){
			for(n=162;n>0;n--)
			{
				;
			}
		}
	}*/
	ushort x,y;
	for(x=z;x>0;x--)
	for(y=848;y>0;y--);
}

