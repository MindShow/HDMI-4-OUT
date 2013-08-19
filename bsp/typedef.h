#ifndef _TYPEDEF_H_
#define _TYPEDEF_H_



#define _CODE  code    //´úÂë¶Î
#define _IDATA idata
#define _XDATA xdata
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

#ifndef BOOL
#define BOOL 			   	bit
#define bool                bit
#endif


#endif
