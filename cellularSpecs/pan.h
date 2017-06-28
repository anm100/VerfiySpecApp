#define SpinVersion	"Spin Version 6.1.0 -- 4 May 2011"
#define PanSource	"examplePG.pml"

#define G_long	4
#define G_int	4
#ifdef WIN64
	#define ONE_L	((unsigned long) 1)
	#define long	long long
#else
	#define ONE_L	(1L)
#endif
char *TrailFile = PanSource; /* default */
char *trailfilename;
#if defined(BFS)
	#ifndef SAFETY
		#define SAFETY
	#endif
	#ifndef XUSAFE
		#define XUSAFE
	#endif
#endif
#ifndef uchar
	#define uchar	unsigned char
#endif
#ifndef uint
	#define uint	unsigned int
#endif
#define DELTA	500
#ifdef MA
	#if NCORE>1 && !defined(SEP_STATE)
	#define SEP_STATE
	#endif
#if MA==1
	#undef MA
	#define MA	100
#endif
#endif
#ifdef W_XPT
	#if W_XPT==1
		#undef W_XPT
		#define W_XPT 1000000
	#endif
#endif
#ifndef NFAIR
	#define NFAIR	2	/* must be >= 2 */
#endif
#define HAS_CODE
#if defined(RANDSTORE) && !defined(RANDSTOR)
	#define RANDSTOR	RANDSTORE
#endif
#define MERGED	1
#if !defined(HAS_LAST) && defined(BCS)
	#define HAS_LAST	1 /* use it, but */
	#ifndef STORE_LAST
		#define NO_LAST	1 /* dont store it */
	#endif
#endif
#if defined(BCS) && defined(BITSTATE)
	#ifndef NO_CTX
		#define STORE_CTX	1
	#endif
#endif
#ifdef NP
	#define HAS_NP	2
	#define VERI	19	/* np_ */
#endif
#ifndef NOCLAIM
	#define NCLAIMS	18
	#ifndef NP
		#define VERI	18
	#endif
#endif
typedef struct S_F_MAP {
	char *fnm; int from; int upto;
} S_F_MAP;

#define nstates18	21	/* req7_8 */
#define endstate18	20
short src_ln18 [] = {
	  0, 315, 315, 316, 316, 314, 318, 320, 
	320, 321, 321, 319, 323, 325, 325, 326, 
	326, 324, 328, 329, 330,   0, };
S_F_MAP src_file18 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
short *src_claim;
uchar reached18 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate18;

#define nstates17	21	/* req7_7 */
#define endstate17	20
short src_ln17 [] = {
	  0, 296, 296, 297, 297, 295, 299, 301, 
	301, 302, 302, 300, 304, 306, 306, 307, 
	307, 305, 309, 310, 311,   0, };
S_F_MAP src_file17 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
uchar reached17 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate17;

#define nstates16	21	/* req7_6 */
#define endstate16	20
short src_ln16 [] = {
	  0, 277, 277, 278, 278, 276, 280, 282, 
	282, 283, 283, 281, 285, 287, 287, 288, 
	288, 286, 290, 291, 292,   0, };
S_F_MAP src_file16 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
uchar reached16 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate16;

#define nstates15	21	/* req7_5 */
#define endstate15	20
short src_ln15 [] = {
	  0, 258, 258, 259, 259, 257, 261, 263, 
	263, 264, 264, 262, 266, 268, 268, 269, 
	269, 267, 271, 272, 273,   0, };
S_F_MAP src_file15 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
uchar reached15 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate15;

#define nstates14	21	/* req7_4 */
#define endstate14	20
short src_ln14 [] = {
	  0, 239, 239, 240, 240, 238, 242, 244, 
	244, 245, 245, 243, 247, 249, 249, 250, 
	250, 248, 252, 253, 254,   0, };
S_F_MAP src_file14 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
uchar reached14 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate14;

#define nstates13	21	/* req7_3 */
#define endstate13	20
short src_ln13 [] = {
	  0, 220, 220, 221, 221, 219, 223, 225, 
	225, 226, 226, 224, 228, 230, 230, 231, 
	231, 229, 233, 234, 235,   0, };
S_F_MAP src_file13 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
uchar reached13 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate13;

#define nstates12	21	/* req7_2 */
#define endstate12	20
short src_ln12 [] = {
	  0, 201, 201, 202, 202, 200, 204, 206, 
	206, 207, 207, 205, 209, 211, 211, 212, 
	212, 210, 214, 215, 216,   0, };
S_F_MAP src_file12 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
uchar reached12 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate12;

#define nstates11	21	/* req7_1 */
#define endstate11	20
short src_ln11 [] = {
	  0, 182, 182, 183, 183, 181, 185, 187, 
	187, 188, 188, 186, 190, 192, 192, 193, 
	193, 191, 195, 196, 197,   0, };
S_F_MAP src_file11 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 20 },
	{ "-", 21, 22 }
};
uchar reached11 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   1,   0,   0, };
uchar *loopstate11;

#define nstates10	9	/* req6 */
#define endstate10	8
short src_ln10 [] = {
	  0, 173, 173, 174, 174, 172, 176, 177, 
	178,   0, };
S_F_MAP src_file10 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 8 },
	{ "-", 9, 10 }
};
uchar reached10 [] = {
	  0,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate10;

#define nstates9	17	/* req4_5 */
#define endstate9	16
short src_ln9 [] = {
	  0, 158, 158, 159, 159, 160, 160, 157, 
	162, 164, 164, 165, 165, 163, 167, 168, 
	169,   0, };
S_F_MAP src_file9 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 16 },
	{ "-", 17, 18 }
};
uchar reached9 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate9;

#define nstates8	17	/* req4_4 */
#define endstate8	16
short src_ln8 [] = {
	  0, 143, 143, 144, 144, 145, 145, 142, 
	147, 149, 149, 150, 150, 148, 152, 153, 
	154,   0, };
S_F_MAP src_file8 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 16 },
	{ "-", 17, 18 }
};
uchar reached8 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate8;

#define nstates7	17	/* req4_3 */
#define endstate7	16
short src_ln7 [] = {
	  0, 128, 128, 129, 129, 130, 130, 127, 
	132, 134, 134, 135, 135, 133, 137, 138, 
	139,   0, };
S_F_MAP src_file7 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 16 },
	{ "-", 17, 18 }
};
uchar reached7 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate7;

#define nstates6	17	/* req4_2 */
#define endstate6	16
short src_ln6 [] = {
	  0, 113, 113, 114, 114, 115, 115, 112, 
	117, 119, 119, 120, 120, 118, 122, 123, 
	124,   0, };
S_F_MAP src_file6 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 16 },
	{ "-", 17, 18 }
};
uchar reached6 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate6;

#define nstates5	17	/* req4_1 */
#define endstate5	16
short src_ln5 [] = {
	  0,  98,  98,  99,  99, 100, 100,  97, 
	102, 104, 104, 105, 105, 103, 107, 108, 
	109,   0, };
S_F_MAP src_file5 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 16 },
	{ "-", 17, 18 }
};
uchar reached5 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   1,   1,   0,   1,   1, 
	  0,   0, };
uchar *loopstate5;

#define nstates4	59	/* req3 */
#define endstate4	58
short src_ln4 [] = {
	  0,  54,  54,  55,  55,  56,  56,  57, 
	 57,  58,  58,  53,  60,  62,  62,  63, 
	 63,  64,  64,  61,  66,  68,  68,  69, 
	 69,  70,  70,  71,  71,  67,  73,  75, 
	 75,  76,  76,  77,  77,  78,  78,  74, 
	 80,  82,  82,  83,  83,  84,  84,  85, 
	 85,  81,  87,  89,  89,  90,  90,  88, 
	 92,  93,  94,   0, };
S_F_MAP src_file4 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 58 },
	{ "-", 59, 60 }
};
uchar reached4 [] = {
	  0,   1,   1,   1,   1,   1,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   1,   1,   1,   1,   0,   1,   1, 
	  1,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   1,   1,   1,   1,   1, 
	  1,   0,   1,   1,   1,   1,   1,   0, 
	  1,   1,   0,   0, };
uchar *loopstate4;

#define nstates3	20	/* req1_3 */
#define endstate3	19
short src_ln3 [] = {
	  0,  37,  37,  38,  38,  39,  39,  36, 
	 41,  43,  43,  42,  45,  47,  47,  48, 
	 48,  46,  50,  50,   0, };
S_F_MAP src_file3 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 19 },
	{ "-", 20, 21 }
};
uchar reached3 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   0,   0, };
uchar *loopstate3;

#define nstates2	20	/* req1_2 */
#define endstate2	19
short src_ln2 [] = {
	  0,  20,  20,  21,  21,  22,  22,  19, 
	 24,  26,  26,  25,  28,  30,  30,  31, 
	 31,  29,  33,  33,   0, };
S_F_MAP src_file2 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 19 },
	{ "-", 20, 21 }
};
uchar reached2 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   0,   0, };
uchar *loopstate2;

#define nstates1	20	/* req1_1 */
#define endstate1	19
short src_ln1 [] = {
	  0,   3,   3,   4,   4,   5,   5,   2, 
	  7,   9,   9,   8,  11,  13,  13,  14, 
	 14,  12,  16,  16,   0, };
S_F_MAP src_file1 [] = {
	{ "-", 0, 0 },
	{ "_spin_nvr.tmp", 1, 19 },
	{ "-", 20, 21 }
};
uchar reached1 [] = {
	  0,   1,   1,   1,   1,   1,   1,   0, 
	  1,   1,   1,   0,   1,   1,   1,   1, 
	  1,   0,   1,   0,   0, };
uchar *loopstate1;

#define nstates0	187	/* vm */
#define endstate0	186
short src_ln0 [] = {
	  0,  46,  48,  48,  48,  48,  48,  48, 
	 48,  49,  49,  49,  49,  49,  50,  50, 
	 50,  50,  50,  51,  51,  51,  51,  51, 
	 52,  52,  52,  52,  52,  53,  53,  53, 
	 53,  53,  54,  54,  47,  60,  60,  62, 
	 62,  62,  62,  62,  63,  63,  63,  64, 
	 64,  64,  64,  64,  61,  70,  70,  72, 
	 72,  71,  74,  74,  76,  76,  76,  76, 
	 77,  77,  77,  77,  75,  79,  79,  81, 
	 81,  81,  81,  82,  82,  82,  82,  80, 
	 84,  84,  86,  86,  86,  86,  87,  87, 
	 87,  87,  85,  89,  89,  91,  91,  91, 
	 91,  92,  92,  92,  92,  93,  93,  93, 
	 93,  94,  94,  94,  94,  90,  96,  96, 
	 98,  98,  98,  98,  99,  99,  99,  99, 
	 97, 101, 101, 103, 103, 103, 103, 104, 
	104, 104, 104, 102, 106, 106, 108, 108, 
	108, 108, 109, 109, 109, 109, 109, 110, 
	110, 110, 110, 110, 111, 111, 111, 111, 
	112, 112, 112, 112, 112, 113, 113, 113, 
	113, 113, 107, 115, 115, 117, 117, 117, 
	117, 118, 118, 118, 118, 119, 119, 119, 
	119, 120, 120, 120, 120, 116, 122,  41, 
	123,  41, 123,   0, };
S_F_MAP src_file0 [] = {
	{ "-", 0, 0 },
	{ "examplePG.pml", 1, 186 },
	{ "-", 187, 188 }
};
uchar reached0 [] = {
	  0,   1,   1,   1,   0,   0,   0,   0, 
	  0,   1,   1,   0,   0,   0,   1,   1, 
	  0,   0,   0,   1,   1,   0,   0,   0, 
	  1,   1,   0,   0,   0,   1,   1,   0, 
	  0,   0,   1,   1,   0,   1,   1,   1, 
	  1,   0,   0,   0,   1,   1,   0,   1, 
	  1,   0,   0,   0,   0,   1,   1,   1, 
	  1,   0,   1,   1,   1,   1,   0,   0, 
	  1,   1,   0,   0,   0,   1,   1,   1, 
	  1,   0,   0,   1,   1,   0,   0,   0, 
	  1,   1,   1,   1,   0,   0,   1,   1, 
	  0,   0,   0,   1,   1,   1,   1,   0, 
	  0,   1,   1,   0,   0,   1,   1,   0, 
	  0,   1,   1,   0,   0,   0,   1,   1, 
	  1,   1,   0,   0,   1,   1,   0,   0, 
	  0,   1,   1,   1,   1,   0,   0,   1, 
	  1,   0,   0,   0,   1,   1,   1,   1, 
	  0,   0,   1,   1,   0,   0,   0,   1, 
	  1,   0,   0,   0,   1,   1,   0,   0, 
	  1,   1,   0,   0,   0,   1,   1,   0, 
	  0,   0,   0,   1,   1,   1,   1,   0, 
	  0,   1,   1,   0,   0,   1,   1,   0, 
	  0,   1,   1,   0,   0,   0,   1,   0, 
	  1,   1,   0,   0, };
uchar *loopstate0;
struct {
	int tp; short *src;
} src_all[] = {
	{ 18, &src_ln18[0] },
	{ 17, &src_ln17[0] },
	{ 16, &src_ln16[0] },
	{ 15, &src_ln15[0] },
	{ 14, &src_ln14[0] },
	{ 13, &src_ln13[0] },
	{ 12, &src_ln12[0] },
	{ 11, &src_ln11[0] },
	{ 10, &src_ln10[0] },
	{ 9, &src_ln9[0] },
	{ 8, &src_ln8[0] },
	{ 7, &src_ln7[0] },
	{ 6, &src_ln6[0] },
	{ 5, &src_ln5[0] },
	{ 4, &src_ln4[0] },
	{ 3, &src_ln3[0] },
	{ 2, &src_ln2[0] },
	{ 1, &src_ln1[0] },
	{ 0, &src_ln0[0] },
	{ 0, (short *) 0 }
};
S_F_MAP *flref[] = {
	src_file18,
	src_file17,
	src_file16,
	src_file15,
	src_file14,
	src_file13,
	src_file12,
	src_file11,
	src_file10,
	src_file9,
	src_file8,
	src_file7,
	src_file6,
	src_file5,
	src_file4,
	src_file3,
	src_file2,
	src_file1,
	src_file0 
};
struct {
	char *c; char *t;
} code_lookup[] = {
	{ (char *) 0, "" }
};
#define _T5	193
#define _T2	194
#define T_ID	unsigned short
#define WS		4 /* word size in bytes */
#define SYNC	0
#define ASYNC	0

#ifndef NCORE
	#ifdef DUAL_CORE
		#define NCORE	2
	#elif QUAD_CORE
		#define NCORE	4
	#else
		#define NCORE	1
	#endif
#endif
char *procname[] = {
   "vm",
   "req1_1",
   "req1_2",
   "req1_3",
   "req3",
   "req4_1",
   "req4_2",
   "req4_3",
   "req4_4",
   "req4_5",
   "req6",
   "req7_1",
   "req7_2",
   "req7_3",
   "req7_4",
   "req7_5",
   "req7_6",
   "req7_7",
   "req7_8",
   ":np_:",
};

enum btypes { NONE=0, N_CLAIM=1, I_PROC=2, A_PROC=3, P_PROC=4, E_TRACE=5, N_TRACE=6 };
int Btypes[] = {
   3,	/* vm */
   1,	/* req1_1 */
   1,	/* req1_2 */
   1,	/* req1_3 */
   1,	/* req3 */
   1,	/* req4_1 */
   1,	/* req4_2 */
   1,	/* req4_3 */
   1,	/* req4_4 */
   1,	/* req4_5 */
   1,	/* req6 */
   1,	/* req7_1 */
   1,	/* req7_2 */
   1,	/* req7_3 */
   1,	/* req7_4 */
   1,	/* req7_5 */
   1,	/* req7_6 */
   1,	/* req7_7 */
   1,	/* req7_8 */
   0	/* :np_: */
};

typedef struct P18 { /* req7_8 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P18;
#define Air18	(sizeof(P18) - 3)
typedef struct P17 { /* req7_7 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P17;
#define Air17	(sizeof(P17) - 3)
typedef struct P16 { /* req7_6 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P16;
#define Air16	(sizeof(P16) - 3)
typedef struct P15 { /* req7_5 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P15;
#define Air15	(sizeof(P15) - 3)
typedef struct P14 { /* req7_4 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P14;
#define Air14	(sizeof(P14) - 3)
typedef struct P13 { /* req7_3 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P13;
#define Air13	(sizeof(P13) - 3)
typedef struct P12 { /* req7_2 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P12;
#define Air12	(sizeof(P12) - 3)
typedef struct P11 { /* req7_1 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P11;
#define Air11	(sizeof(P11) - 3)
typedef struct P10 { /* req6 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P10;
#define Air10	(sizeof(P10) - 3)
typedef struct P9 { /* req4_5 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P9;
#define Air9	(sizeof(P9) - 3)
typedef struct P8 { /* req4_4 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P8;
#define Air8	(sizeof(P8) - 3)
typedef struct P7 { /* req4_3 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P7;
#define Air7	(sizeof(P7) - 3)
typedef struct P6 { /* req4_2 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P6;
#define Air6	(sizeof(P6) - 3)
typedef struct P5 { /* req4_1 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P5;
#define Air5	(sizeof(P5) - 3)
typedef struct P4 { /* req3 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P4;
#define Air4	(sizeof(P4) - 3)
typedef struct P3 { /* req1_3 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P3;
#define Air3	(sizeof(P3) - 3)
typedef struct P2 { /* req1_2 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P2;
#define Air2	(sizeof(P2) - 3)
typedef struct P1 { /* req1_1 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P1;
#define Air1	(sizeof(P1) - 3)
#define Pvm	((P0 *)this)
typedef struct P0 { /* vm */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P0;
#define Air0	(sizeof(P0) - 3)
typedef struct P19 { /* np_ */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 6; /* proctype */
	unsigned _p   : 9; /* state    */
} P19;
#define Air19	(sizeof(P19) - 3)

#ifndef NOCLAIM
	#undef VERI
	#define VERI	20
	#define Pclaim	P20

typedef struct P20 {
	unsigned _pid : 8; /* always zero */
	unsigned _t   : 6; /* active-claim type  */
	unsigned _p   : 9; /* active-claim state */
	unsigned _n   : 6; /* active-claim index */
	uchar c_cur[NCLAIMS]; /* claim-states */
} P20;
uchar spin_c_typ[NCLAIMS]; /* claim-types */
	#define Air20	(0)

#endif
#if defined(BFS) && defined(REACH)
	#undef REACH
#endif
#ifdef VERI
	#define BASE	1
#else
	#define BASE	0
#endif
typedef struct Trans {
	short atom;	/* if &2 = atomic trans; if &8 local */
#ifdef HAS_UNLESS
	short escp[HAS_UNLESS];	/* lists the escape states */
	short e_trans;	/* if set, this is an escp-trans */
#endif
	short tpe[2];	/* class of operation (for reduction) */
	short qu[6];	/* for conditional selections: qid's  */
	uchar ty[6];	/* ditto: type's */
#ifdef NIBIS
	short om;	/* completion status of preselects */
#endif
	char *tp;	/* src txt of statement */
	int st;		/* the nextstate */
	int t_id;	/* transition id, unique within proc */
	int forw;	/* index forward transition */
	int back;	/* index return  transition */
	struct Trans *nxt;
} Trans;

#ifdef TRIX
	#define qptr(x)	(channels[x]->body)
	#define pptr(x)	(processes[x]->body)
#else
	#define qptr(x)	(((uchar *)&now)+(int)q_offset[x])
	#define pptr(x)	(((uchar *)&now)+(int)proc_offset[x])
#endif
extern uchar *Pptr(int);
extern uchar *Qptr(int);
#define q_sz(x)	(((Q0 *)qptr(x))->Qlen)

#ifdef TRIX
	#ifdef VECTORSZ
		#undef VECTORSZ
	#endif
	#if WS==4
		#define VECTORSZ	2056	/* ((MAXPROC+MAXQ+4)*sizeof(uchar *)) */
	#else
		#define VECTORSZ	4112	/* the formula causes probs in preprocessing */
	#endif
#else
	#ifndef VECTORSZ
		#define VECTORSZ	1024	/* sv size in bytes */
	#endif
#endif

#ifdef VERBOSE
	#ifndef CHECK
		#define CHECK
	#endif
	#ifndef DEBUG
		#define DEBUG
	#endif
#endif
#ifdef SAFETY
	#ifndef NOFAIR
		#define NOFAIR
	#endif
#endif
#ifdef NOREDUCE
	#ifndef XUSAFE
		#define XUSAFE
	#endif
	#if !defined(SAFETY) && !defined(MA)
		#define FULLSTACK
	#endif
#else
	#ifdef BITSTATE
		#if defined(SAFETY) && !defined(HASH64)
			#define CNTRSTACK
		#else
			#define FULLSTACK
		#endif
	#else
		#define FULLSTACK
	#endif
#endif
#ifdef BITSTATE
	#ifndef NOCOMP
		#define NOCOMP
	#endif
	#if !defined(LC) && defined(SC)
		#define LC
	#endif
#endif
#if defined(COLLAPSE2) || defined(COLLAPSE3) || defined(COLLAPSE4)
	/* accept the above for backward compatibility */
	#define COLLAPSE
#endif
#ifdef HC
	#undef HC
	#define HC4
#endif
#ifdef HC0
	#define HC	0
#endif
#ifdef HC1
	#define HC	1
#endif
#ifdef HC2
	#define HC	2
#endif
#ifdef HC3
	#define HC	3
#endif
#ifdef HC4
	#define HC	4
#endif
#ifdef COLLAPSE
	#if NCORE>1 && !defined(SEP_STATE)
		unsigned long *ncomps;	/* in shared memory */
	#else
		unsigned long ncomps[256+2];
	#endif
#endif
#define MAXQ   	255
#define MAXPROC	255

typedef struct _Stack  {	 /* for queues and processes */
#if VECTORSZ>32000
	int o_delta;
	#ifndef TRIX
		int o_offset;
		int o_skip;
	#endif
	int o_delqs;
#else
	short o_delta;
	#ifndef TRIX
		short o_offset;
		short o_skip;
	#endif
	short o_delqs;
#endif
	short o_boq;
#ifdef TRIX
	short parent;
	char *b_ptr;
#else
	char *body;
#endif
#ifndef XUSAFE
	char *o_name;
#endif
	struct _Stack *nxt;
	struct _Stack *lst;
} _Stack;

typedef struct Svtack { /* for complete state vector */
#if VECTORSZ>32000
	int o_delta;
	int m_delta;
#else
	short o_delta;	 /* current size of frame */
	short m_delta;	 /* maximum size of frame */
#endif
#if SYNC
	short o_boq;
#endif
#define StackSize	(WS)
	char *body;
	struct Svtack *nxt;
	struct Svtack *lst;
} Svtack;

Trans ***trans;	/* 1 ptr per state per proctype */

struct H_el *Lstate;
int depthfound = -1;	/* loop detection */
#ifndef TRIX
	#if VECTORSZ>32000
		int proc_offset[MAXPROC];
		int q_offset[MAXQ];
	#else
		short proc_offset[MAXPROC];
		short q_offset[MAXQ];
	#endif
	uchar proc_skip[MAXPROC];
	uchar q_skip[MAXQ];
#endif
unsigned long  vsize;	/* vector size in bytes */
#ifdef SVDUMP
	int vprefix=0, svfd;	/* runtime option -pN */
#endif
char *tprefix = "trail";	/* runtime option -tsuffix */
short boq = -1;		/* blocked_on_queue status */
typedef struct State {
	uchar _nr_pr;
	uchar _nr_qs;
	uchar   _a_t;	/* cycle detection */
#ifndef NOFAIR
	uchar   _cnt[NFAIR];	/* counters, weak fairness */
#endif
#ifndef NOVSZ
#if VECTORSZ<65536
	unsigned short _vsz;
#else
	unsigned long  _vsz;
#endif
#endif
#ifdef HAS_LAST
	uchar  _last;	/* pid executed in last step */
#endif
#if defined(BITSTATE) && defined(BCS) && defined(STORE_CTX)
	uchar  _ctx;	/* nr of context switches so far */
#endif
#ifdef EVENT_TRACE
	#if nstates_event<256
		uchar _event;
	#else
		unsigned short _event;
	#endif
#endif
	uchar action[5];
	uchar Airplane_mode;
	uchar Bluetooth;
	uchar pass;
	uchar Wifi;
	uchar user;
	uchar state;
#ifdef TRIX
	/* room for 512 proc+chan ptrs, + safety margin */
	char *_ids_[MAXPROC+MAXQ+4];
#else
	uchar sv[VECTORSZ];
#endif
} State;

#ifdef TRIX
typedef struct TRIX_v6 {
	uchar *body; /* aligned */
#ifndef BFS
	short modified;
#endif
	short psize;
	short parent_pid;
	struct TRIX_v6 *nxt;
} TRIX_v6;
TRIX_v6 *freebodies;
TRIX_v6 *processes[MAXPROC+1];
TRIX_v6 *channels[MAXQ+1]; 
long _p_count[MAXPROC];
long _c_count[MAXPROC];
#endif

#define HAS_TRACK	0
int _; /* a predefined write-only variable */

#define FORWARD_MOVES	"pan.m"
#define REVERSE_MOVES	"pan.b"
#define TRANSITIONS	"pan.t"
#define _NP_	19
uchar reached19[3];  /* np_ */
uchar *loopstate19;  /* np_ */
#define nstates19	3 /* np_ */
#define endstate19	2 /* np_ */

#define start19	0 /* np_ */
#define start18	5
#define start17	5
#define start16	5
#define start15	5
#define start14	5
#define start13	5
#define start12	5
#define start11	5
#define start10	5
#define start9	7
#define start8	7
#define start7	7
#define start6	7
#define start5	7
#define start4	11
#define start3	7
#define start2	7
#define start1	7
#define start0	183
#ifdef NP
	#define ACCEPT_LAB	1 /* at least 1 in np_ */
#else
	#define ACCEPT_LAB	28 /* user-defined accept labels */
#endif
#ifdef MEMCNT
	#ifdef MEMLIM
		#warning -DMEMLIM takes precedence over -DMEMCNT
		#undef MEMCNT
	#else
		#if MEMCNT<20
			#warning using minimal value -DMEMCNT=20 (=1MB)
			#define MEMLIM	(1)
			#undef MEMCNT
		#else
			#if MEMCNT==20
				#define MEMLIM	(1)
				#undef MEMCNT
			#else
			 #if MEMCNT>=50
				#error excessive value for MEMCNT
			 #else
				#define MEMLIM	(1<<(MEMCNT-20))
			 #endif
			#endif
		#endif
	#endif
#endif
#if NCORE>1 && !defined(MEMLIM)
	#define MEMLIM	(2048)	/* need a default, using 2 GB */
#endif
#define PROG_LAB	0 /* progress labels */
uchar *accpstate[20];
uchar *progstate[20];
uchar *loopstate[20];
uchar *reached[20];
uchar *stopstate[20];
uchar *visstate[20];
short *mapstate[20];
#ifdef HAS_CODE
	int NrStates[20];
#endif
#define NQS	0
short q_flds[1];
short q_max[1];
typedef struct Q0 {	/* generic q */
	uchar Qlen;	/* q_size */
	uchar _t;
} Q0;

/** function prototypes **/
char *emalloc(unsigned long);
char *Malloc(unsigned long);
int Boundcheck(int, int, int, int, Trans *);
int addqueue(int, int, int);
/* int atoi(char *); */
/* int abort(void); */
int close(int);
int delproc(int, int);
int endstate(void);
int hstore(char *, int);
#ifdef MA
int gstore(char *, int, uchar);
#endif
int q_cond(short, Trans *);
int q_full(int);
int q_len(int);
int q_zero(int);
int qrecv(int, int, int, int);
int unsend(int);
/* void *sbrk(int); */
void Uerror(char *);
void spin_assert(int, char *, int, int, Trans *);
void c_chandump(int);
void c_globals(void);
void c_locals(int, int);
void checkcycles(void);
void crack(int, int, Trans *, short *);
void d_sfh(const char *, int);
void sfh(const char *, int);
void d_hash(uchar *, int);
void s_hash(uchar *, int);
void r_hash(uchar *, int);
void delq(int);
void dot_crack(int, int, Trans *);
void do_reach(void);
void pan_exit(int);
void exit(int);
void hinit(void);
void imed(Trans *, int, int, int);
void new_state(void);
void p_restor(int);
void putpeg(int, int);
void putrail(void);
void q_restor(void);
void retrans(int, int, int, short *, uchar *, uchar *);
void settable(void);
void setq_claim(int, int, char *, int, char *);
void sv_restor(void);
void sv_save(void);
void tagtable(int, int, int, short *, uchar *);
void do_dfs(int, int, int, short *, uchar *, uchar *);
void uerror(char *);
void unrecv(int, int, int, int, int);
void usage(FILE *);
void wrap_stats(void);
#if defined(FULLSTACK) && defined(BITSTATE)
	int  onstack_now(void);
	void onstack_init(void);
	void onstack_put(void);
	void onstack_zap(void);
#endif
#ifndef XUSAFE
	int q_S_check(int, int);
	int q_R_check(int, int);
	uchar q_claim[MAXQ+1];
	char *q_name[MAXQ+1];
	char *p_name[MAXPROC+1];
#endif
void qsend(int, int, int);
#define Addproc(x)	addproc(256, x)
#define LOCAL	1
#define Q_FULL_F	2
#define Q_EMPT_F	3
#define Q_EMPT_T	4
#define Q_FULL_T	5
#define TIMEOUT_F	6
#define GLOBAL	7
#define BAD	8
#define ALPHA_F	9
#define NTRANS	195
#ifdef PEG
	long peg[NTRANS];
#endif
void select_claim(int);
