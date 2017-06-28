#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(20*sizeof(Trans **));

	/* proctype 18: req7_8 */

	trans[18] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[18][5] = settr(533,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(533,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(533,0,3,0,0,"IF", 0, 2, 0);
	trans[18][1]	= settr(529,0,11,3,0,"(!(!((user==2))))", 1, 2, 0);
	trans[18][2]	= settr(530,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[18][6]	= settr(534,0,11,1,0,".(goto)", 0, 2, 0);
	trans[18][3]	= settr(531,0,5,1,0,"(1)", 0, 2, 0);
	trans[18][4]	= settr(532,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[18][11] = settr(539,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(539,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(539,0,9,0,0,"IF", 0, 2, 0);
	trans[18][7]	= settr(535,0,19,4,0,"(((user==3)&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[18][8]	= settr(536,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[18][12]	= settr(540,0,17,1,0,".(goto)", 0, 2, 0);
	trans[18][9]	= settr(537,0,17,5,0,"((state!=changeuserNotEmpty))", 1, 2, 0);
	trans[18][10]	= settr(538,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[18][17] = settr(545,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(545,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(545,0,15,0,0,"IF", 0, 2, 0);
	trans[18][13]	= settr(541,0,19,6,0,"(((user==3)&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[18][14]	= settr(542,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[18][18]	= settr(546,0,19,1,0,".(goto)", 0, 2, 0);
	trans[18][15]	= settr(543,0,17,7,0,"((state!=changeuserNotEmpty))", 1, 2, 0);
	trans[18][16]	= settr(544,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[18][19]	= settr(547,0,20,1,0,"(1)", 0, 2, 0);
	trans[18][20]	= settr(548,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 17: req7_7 */

	trans[17] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[17][5] = settr(513,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(513,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(513,0,3,0,0,"IF", 0, 2, 0);
	trans[17][1]	= settr(509,0,11,9,0,"(!(!((pass==2))))", 1, 2, 0);
	trans[17][2]	= settr(510,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[17][6]	= settr(514,0,11,1,0,".(goto)", 0, 2, 0);
	trans[17][3]	= settr(511,0,5,1,0,"(1)", 0, 2, 0);
	trans[17][4]	= settr(512,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[17][11] = settr(519,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(519,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(519,0,9,0,0,"IF", 0, 2, 0);
	trans[17][7]	= settr(515,0,19,10,0,"(((pass==3)&&(state!=changepassNotEmpty)))", 1, 2, 0);
	trans[17][8]	= settr(516,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[17][12]	= settr(520,0,17,1,0,".(goto)", 0, 2, 0);
	trans[17][9]	= settr(517,0,17,11,0,"((state!=changepassNotEmpty))", 1, 2, 0);
	trans[17][10]	= settr(518,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[17][17] = settr(525,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(525,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(525,0,15,0,0,"IF", 0, 2, 0);
	trans[17][13]	= settr(521,0,19,12,0,"(((pass==3)&&(state!=changepassNotEmpty)))", 1, 2, 0);
	trans[17][14]	= settr(522,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[17][18]	= settr(526,0,19,1,0,".(goto)", 0, 2, 0);
	trans[17][15]	= settr(523,0,17,13,0,"((state!=changepassNotEmpty))", 1, 2, 0);
	trans[17][16]	= settr(524,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[17][19]	= settr(527,0,20,1,0,"(1)", 0, 2, 0);
	trans[17][20]	= settr(528,0,0,14,14,"-end-", 0, 3500, 0);

	/* proctype 16: req7_6 */

	trans[16] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[16][5] = settr(493,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(493,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(493,0,3,0,0,"IF", 0, 2, 0);
	trans[16][1]	= settr(489,0,11,15,0,"(!(!((Wifi==0))))", 1, 2, 0);
	trans[16][2]	= settr(490,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[16][6]	= settr(494,0,11,1,0,".(goto)", 0, 2, 0);
	trans[16][3]	= settr(491,0,5,1,0,"(1)", 0, 2, 0);
	trans[16][4]	= settr(492,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[16][11] = settr(499,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(499,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(499,0,9,0,0,"IF", 0, 2, 0);
	trans[16][7]	= settr(495,0,19,16,0,"(((Wifi==1)&&(state!=changeWifiON)))", 1, 2, 0);
	trans[16][8]	= settr(496,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[16][12]	= settr(500,0,17,1,0,".(goto)", 0, 2, 0);
	trans[16][9]	= settr(497,0,17,17,0,"((state!=changeWifiON))", 1, 2, 0);
	trans[16][10]	= settr(498,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[16][17] = settr(505,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(505,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(505,0,15,0,0,"IF", 0, 2, 0);
	trans[16][13]	= settr(501,0,19,18,0,"(((Wifi==1)&&(state!=changeWifiON)))", 1, 2, 0);
	trans[16][14]	= settr(502,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[16][18]	= settr(506,0,19,1,0,".(goto)", 0, 2, 0);
	trans[16][15]	= settr(503,0,17,19,0,"((state!=changeWifiON))", 1, 2, 0);
	trans[16][16]	= settr(504,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[16][19]	= settr(507,0,20,1,0,"(1)", 0, 2, 0);
	trans[16][20]	= settr(508,0,0,20,20,"-end-", 0, 3500, 0);

	/* proctype 15: req7_5 */

	trans[15] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[15][5] = settr(473,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(473,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(473,0,3,0,0,"IF", 0, 2, 0);
	trans[15][1]	= settr(469,0,11,21,0,"(!(!((Wifi==1))))", 1, 2, 0);
	trans[15][2]	= settr(470,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[15][6]	= settr(474,0,11,1,0,".(goto)", 0, 2, 0);
	trans[15][3]	= settr(471,0,5,1,0,"(1)", 0, 2, 0);
	trans[15][4]	= settr(472,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[15][11] = settr(479,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(479,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(479,0,9,0,0,"IF", 0, 2, 0);
	trans[15][7]	= settr(475,0,19,22,0,"(((Wifi==0)&&(state!=changeWifiOFF)))", 1, 2, 0);
	trans[15][8]	= settr(476,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[15][12]	= settr(480,0,17,1,0,".(goto)", 0, 2, 0);
	trans[15][9]	= settr(477,0,17,23,0,"((state!=changeWifiOFF))", 1, 2, 0);
	trans[15][10]	= settr(478,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[15][17] = settr(485,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(485,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(485,0,15,0,0,"IF", 0, 2, 0);
	trans[15][13]	= settr(481,0,19,24,0,"(((Wifi==0)&&(state!=changeWifiOFF)))", 1, 2, 0);
	trans[15][14]	= settr(482,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[15][18]	= settr(486,0,19,1,0,".(goto)", 0, 2, 0);
	trans[15][15]	= settr(483,0,17,25,0,"((state!=changeWifiOFF))", 1, 2, 0);
	trans[15][16]	= settr(484,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[15][19]	= settr(487,0,20,1,0,"(1)", 0, 2, 0);
	trans[15][20]	= settr(488,0,0,26,26,"-end-", 0, 3500, 0);

	/* proctype 14: req7_4 */

	trans[14] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[14][5] = settr(453,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(453,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(453,0,3,0,0,"IF", 0, 2, 0);
	trans[14][1]	= settr(449,0,11,27,0,"(!(!((Bluetooth==0))))", 1, 2, 0);
	trans[14][2]	= settr(450,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[14][6]	= settr(454,0,11,1,0,".(goto)", 0, 2, 0);
	trans[14][3]	= settr(451,0,5,1,0,"(1)", 0, 2, 0);
	trans[14][4]	= settr(452,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[14][11] = settr(459,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(459,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(459,0,9,0,0,"IF", 0, 2, 0);
	trans[14][7]	= settr(455,0,19,28,0,"(((Bluetooth==1)&&(state!=changeBluetoothON)))", 1, 2, 0);
	trans[14][8]	= settr(456,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[14][12]	= settr(460,0,17,1,0,".(goto)", 0, 2, 0);
	trans[14][9]	= settr(457,0,17,29,0,"((state!=changeBluetoothON))", 1, 2, 0);
	trans[14][10]	= settr(458,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[14][17] = settr(465,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(465,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(465,0,15,0,0,"IF", 0, 2, 0);
	trans[14][13]	= settr(461,0,19,30,0,"(((Bluetooth==1)&&(state!=changeBluetoothON)))", 1, 2, 0);
	trans[14][14]	= settr(462,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[14][18]	= settr(466,0,19,1,0,".(goto)", 0, 2, 0);
	trans[14][15]	= settr(463,0,17,31,0,"((state!=changeBluetoothON))", 1, 2, 0);
	trans[14][16]	= settr(464,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[14][19]	= settr(467,0,20,1,0,"(1)", 0, 2, 0);
	trans[14][20]	= settr(468,0,0,32,32,"-end-", 0, 3500, 0);

	/* proctype 13: req7_3 */

	trans[13] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[13][5] = settr(433,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(433,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(433,0,3,0,0,"IF", 0, 2, 0);
	trans[13][1]	= settr(429,0,11,33,0,"(!(!((Bluetooth==1))))", 1, 2, 0);
	trans[13][2]	= settr(430,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[13][6]	= settr(434,0,11,1,0,".(goto)", 0, 2, 0);
	trans[13][3]	= settr(431,0,5,1,0,"(1)", 0, 2, 0);
	trans[13][4]	= settr(432,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[13][11] = settr(439,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(439,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(439,0,9,0,0,"IF", 0, 2, 0);
	trans[13][7]	= settr(435,0,19,34,0,"(((Bluetooth==0)&&(state!=changeBluetoothOFF)))", 1, 2, 0);
	trans[13][8]	= settr(436,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[13][12]	= settr(440,0,17,1,0,".(goto)", 0, 2, 0);
	trans[13][9]	= settr(437,0,17,35,0,"((state!=changeBluetoothOFF))", 1, 2, 0);
	trans[13][10]	= settr(438,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[13][17] = settr(445,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(445,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(445,0,15,0,0,"IF", 0, 2, 0);
	trans[13][13]	= settr(441,0,19,36,0,"(((Bluetooth==0)&&(state!=changeBluetoothOFF)))", 1, 2, 0);
	trans[13][14]	= settr(442,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[13][18]	= settr(446,0,19,1,0,".(goto)", 0, 2, 0);
	trans[13][15]	= settr(443,0,17,37,0,"((state!=changeBluetoothOFF))", 1, 2, 0);
	trans[13][16]	= settr(444,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[13][19]	= settr(447,0,20,1,0,"(1)", 0, 2, 0);
	trans[13][20]	= settr(448,0,0,38,38,"-end-", 0, 3500, 0);

	/* proctype 12: req7_2 */

	trans[12] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[12][5] = settr(413,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(413,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(413,0,3,0,0,"IF", 0, 2, 0);
	trans[12][1]	= settr(409,0,11,39,0,"(!(!((Airplane_mode==0))))", 1, 2, 0);
	trans[12][2]	= settr(410,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[12][6]	= settr(414,0,11,1,0,".(goto)", 0, 2, 0);
	trans[12][3]	= settr(411,0,5,1,0,"(1)", 0, 2, 0);
	trans[12][4]	= settr(412,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[12][11] = settr(419,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(419,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(419,0,9,0,0,"IF", 0, 2, 0);
	trans[12][7]	= settr(415,0,19,40,0,"(((Airplane_mode==1)&&(state!=changeAirplane_modeON)))", 1, 2, 0);
	trans[12][8]	= settr(416,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[12][12]	= settr(420,0,17,1,0,".(goto)", 0, 2, 0);
	trans[12][9]	= settr(417,0,17,41,0,"((state!=changeAirplane_modeON))", 1, 2, 0);
	trans[12][10]	= settr(418,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[12][17] = settr(425,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(425,0,15,0,0,"IF", 0, 2, 0);
	trans[12][13]	= settr(421,0,19,42,0,"(((Airplane_mode==1)&&(state!=changeAirplane_modeON)))", 1, 2, 0);
	trans[12][14]	= settr(422,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[12][18]	= settr(426,0,19,1,0,".(goto)", 0, 2, 0);
	trans[12][15]	= settr(423,0,17,43,0,"((state!=changeAirplane_modeON))", 1, 2, 0);
	trans[12][16]	= settr(424,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[12][19]	= settr(427,0,20,1,0,"(1)", 0, 2, 0);
	trans[12][20]	= settr(428,0,0,44,44,"-end-", 0, 3500, 0);

	/* proctype 11: req7_1 */

	trans[11] = (Trans **) emalloc(21*sizeof(Trans *));

	T = trans[11][5] = settr(393,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(393,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(393,0,3,0,0,"IF", 0, 2, 0);
	trans[11][1]	= settr(389,0,11,45,0,"(!(!((Airplane_mode==1))))", 1, 2, 0);
	trans[11][2]	= settr(390,0,11,1,0,"goto accept_S3", 0, 2, 0);
	trans[11][6]	= settr(394,0,11,1,0,".(goto)", 0, 2, 0);
	trans[11][3]	= settr(391,0,5,1,0,"(1)", 0, 2, 0);
	trans[11][4]	= settr(392,0,5,1,0,"goto T0_init", 0, 2, 0);
	T = trans[11][11] = settr(399,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(399,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(399,0,9,0,0,"IF", 0, 2, 0);
	trans[11][7]	= settr(395,0,19,46,0,"(((Airplane_mode==0)&&(state!=changeAirplane_modeOFF)))", 1, 2, 0);
	trans[11][8]	= settr(396,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[11][12]	= settr(400,0,17,1,0,".(goto)", 0, 2, 0);
	trans[11][9]	= settr(397,0,17,47,0,"((state!=changeAirplane_modeOFF))", 1, 2, 0);
	trans[11][10]	= settr(398,0,17,1,0,"goto T0_S3", 0, 2, 0);
	T = trans[11][17] = settr(405,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(405,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(405,0,15,0,0,"IF", 0, 2, 0);
	trans[11][13]	= settr(401,0,19,48,0,"(((Airplane_mode==0)&&(state!=changeAirplane_modeOFF)))", 1, 2, 0);
	trans[11][14]	= settr(402,0,19,1,0,"goto accept_all", 0, 2, 0);
	trans[11][18]	= settr(406,0,19,1,0,".(goto)", 0, 2, 0);
	trans[11][15]	= settr(403,0,17,49,0,"((state!=changeAirplane_modeOFF))", 1, 2, 0);
	trans[11][16]	= settr(404,0,17,1,0,"goto T0_S3", 0, 2, 0);
	trans[11][19]	= settr(407,0,20,1,0,"(1)", 0, 2, 0);
	trans[11][20]	= settr(408,0,0,50,50,"-end-", 0, 3500, 0);

	/* proctype 10: req6 */

	trans[10] = (Trans **) emalloc(9*sizeof(Trans *));

	T = trans[10][5] = settr(385,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(385,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(385,0,3,0,0,"IF", 0, 2, 0);
	trans[10][1]	= settr(381,0,7,51,0,"(!((!((state==MainScreen))||((pass==3)&&(user==3)))))", 1, 2, 0);
	trans[10][2]	= settr(382,0,7,1,0,"goto accept_all", 0, 2, 0);
	trans[10][6]	= settr(386,0,7,1,0,".(goto)", 0, 2, 0);
	trans[10][3]	= settr(383,0,5,1,0,"(1)", 0, 2, 0);
	trans[10][4]	= settr(384,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[10][7]	= settr(387,0,8,1,0,"(1)", 0, 2, 0);
	trans[10][8]	= settr(388,0,0,52,52,"-end-", 0, 3500, 0);

	/* proctype 9: req4_5 */

	trans[9] = (Trans **) emalloc(17*sizeof(Trans *));

	T = trans[9][7] = settr(371,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(371,0,5,0,0,"IF", 0, 2, 0);
	trans[9][1]	= settr(365,0,15,53,0,"((!(!(((user==2)||(user==3))))&&((user!=2)&&(user!=3))))", 1, 2, 0);
	trans[9][2]	= settr(366,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[9][8]	= settr(372,0,13,1,0,".(goto)", 0, 2, 0);
	trans[9][3]	= settr(367,0,13,54,0,"(!(!(((user==2)||(user==3)))))", 1, 2, 0);
	trans[9][4]	= settr(368,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[9][5]	= settr(369,0,7,1,0,"(1)", 0, 2, 0);
	trans[9][6]	= settr(370,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[9][13] = settr(377,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(377,0,9,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(377,0,11,0,0,"IF", 0, 2, 0);
	trans[9][9]	= settr(373,0,15,55,0,"(((user!=2)&&(user!=3)))", 1, 2, 0);
	trans[9][10]	= settr(374,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[9][14]	= settr(378,0,15,1,0,".(goto)", 0, 2, 0);
	trans[9][11]	= settr(375,0,13,1,0,"(1)", 0, 2, 0);
	trans[9][12]	= settr(376,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[9][15]	= settr(379,0,16,1,0,"(1)", 0, 2, 0);
	trans[9][16]	= settr(380,0,0,56,56,"-end-", 0, 3500, 0);

	/* proctype 8: req4_4 */

	trans[8] = (Trans **) emalloc(17*sizeof(Trans *));

	T = trans[8][7] = settr(355,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(355,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(355,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(355,0,5,0,0,"IF", 0, 2, 0);
	trans[8][1]	= settr(349,0,15,57,0,"((!(!(((pass==2)||(pass==3))))&&((pass!=2)&&(pass!=3))))", 1, 2, 0);
	trans[8][2]	= settr(350,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[8][8]	= settr(356,0,13,1,0,".(goto)", 0, 2, 0);
	trans[8][3]	= settr(351,0,13,58,0,"(!(!(((pass==2)||(pass==3)))))", 1, 2, 0);
	trans[8][4]	= settr(352,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[8][5]	= settr(353,0,7,1,0,"(1)", 0, 2, 0);
	trans[8][6]	= settr(354,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[8][13] = settr(361,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(361,0,9,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(361,0,11,0,0,"IF", 0, 2, 0);
	trans[8][9]	= settr(357,0,15,59,0,"(((pass!=2)&&(pass!=3)))", 1, 2, 0);
	trans[8][10]	= settr(358,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[8][14]	= settr(362,0,15,1,0,".(goto)", 0, 2, 0);
	trans[8][11]	= settr(359,0,13,1,0,"(1)", 0, 2, 0);
	trans[8][12]	= settr(360,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[8][15]	= settr(363,0,16,1,0,"(1)", 0, 2, 0);
	trans[8][16]	= settr(364,0,0,60,60,"-end-", 0, 3500, 0);

	/* proctype 7: req4_3 */

	trans[7] = (Trans **) emalloc(17*sizeof(Trans *));

	T = trans[7][7] = settr(339,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(339,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(339,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(339,0,5,0,0,"IF", 0, 2, 0);
	trans[7][1]	= settr(333,0,15,61,0,"((!(!(((Wifi==1)||(Wifi==0))))&&((Wifi!=1)&&(Wifi!=0))))", 1, 2, 0);
	trans[7][2]	= settr(334,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[7][8]	= settr(340,0,13,1,0,".(goto)", 0, 2, 0);
	trans[7][3]	= settr(335,0,13,62,0,"(!(!(((Wifi==1)||(Wifi==0)))))", 1, 2, 0);
	trans[7][4]	= settr(336,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[7][5]	= settr(337,0,7,1,0,"(1)", 0, 2, 0);
	trans[7][6]	= settr(338,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[7][13] = settr(345,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(345,0,9,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(345,0,11,0,0,"IF", 0, 2, 0);
	trans[7][9]	= settr(341,0,15,63,0,"(((Wifi!=1)&&(Wifi!=0)))", 1, 2, 0);
	trans[7][10]	= settr(342,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[7][14]	= settr(346,0,15,1,0,".(goto)", 0, 2, 0);
	trans[7][11]	= settr(343,0,13,1,0,"(1)", 0, 2, 0);
	trans[7][12]	= settr(344,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[7][15]	= settr(347,0,16,1,0,"(1)", 0, 2, 0);
	trans[7][16]	= settr(348,0,0,64,64,"-end-", 0, 3500, 0);

	/* proctype 6: req4_2 */

	trans[6] = (Trans **) emalloc(17*sizeof(Trans *));

	T = trans[6][7] = settr(323,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(323,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(323,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(323,0,5,0,0,"IF", 0, 2, 0);
	trans[6][1]	= settr(317,0,15,65,0,"((!(!(((Bluetooth==1)||(Bluetooth==0))))&&((Bluetooth!=1)&&(Bluetooth!=0))))", 1, 2, 0);
	trans[6][2]	= settr(318,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[6][8]	= settr(324,0,13,1,0,".(goto)", 0, 2, 0);
	trans[6][3]	= settr(319,0,13,66,0,"(!(!(((Bluetooth==1)||(Bluetooth==0)))))", 1, 2, 0);
	trans[6][4]	= settr(320,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[6][5]	= settr(321,0,7,1,0,"(1)", 0, 2, 0);
	trans[6][6]	= settr(322,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[6][13] = settr(329,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(329,0,9,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(329,0,11,0,0,"IF", 0, 2, 0);
	trans[6][9]	= settr(325,0,15,67,0,"(((Bluetooth!=1)&&(Bluetooth!=0)))", 1, 2, 0);
	trans[6][10]	= settr(326,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[6][14]	= settr(330,0,15,1,0,".(goto)", 0, 2, 0);
	trans[6][11]	= settr(327,0,13,1,0,"(1)", 0, 2, 0);
	trans[6][12]	= settr(328,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[6][15]	= settr(331,0,16,1,0,"(1)", 0, 2, 0);
	trans[6][16]	= settr(332,0,0,68,68,"-end-", 0, 3500, 0);

	/* proctype 5: req4_1 */

	trans[5] = (Trans **) emalloc(17*sizeof(Trans *));

	T = trans[5][7] = settr(307,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(307,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(307,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(307,0,5,0,0,"IF", 0, 2, 0);
	trans[5][1]	= settr(301,0,15,69,0,"((!(!(((Airplane_mode==1)||(Airplane_mode==0))))&&((Airplane_mode!=1)&&(Airplane_mode!=0))))", 1, 2, 0);
	trans[5][2]	= settr(302,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[5][8]	= settr(308,0,13,1,0,".(goto)", 0, 2, 0);
	trans[5][3]	= settr(303,0,13,70,0,"(!(!(((Airplane_mode==1)||(Airplane_mode==0)))))", 1, 2, 0);
	trans[5][4]	= settr(304,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[5][5]	= settr(305,0,7,1,0,"(1)", 0, 2, 0);
	trans[5][6]	= settr(306,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[5][13] = settr(313,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(313,0,9,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(313,0,11,0,0,"IF", 0, 2, 0);
	trans[5][9]	= settr(309,0,15,71,0,"(((Airplane_mode!=1)&&(Airplane_mode!=0)))", 1, 2, 0);
	trans[5][10]	= settr(310,0,15,1,0,"goto accept_all", 0, 2, 0);
	trans[5][14]	= settr(314,0,15,1,0,".(goto)", 0, 2, 0);
	trans[5][11]	= settr(311,0,13,1,0,"(1)", 0, 2, 0);
	trans[5][12]	= settr(312,0,13,1,0,"goto T0_S4", 0, 2, 0);
	trans[5][15]	= settr(315,0,16,1,0,"(1)", 0, 2, 0);
	trans[5][16]	= settr(316,0,0,72,72,"-end-", 0, 3500, 0);

	/* proctype 4: req3 */

	trans[4] = (Trans **) emalloc(59*sizeof(Trans *));

	T = trans[4][11] = settr(253,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(253,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(253,0,3,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(253,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(253,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(253,0,9,0,0,"IF", 0, 2, 0);
	trans[4][1]	= settr(243,0,29,73,0,"(((!(!((state==LoginScreen)))&&!((state!=LoginScreen)))||((!(!((state==LoginScreen)))&&(state!=changepassNotEmpty))&&(state==LoginScreen))))", 1, 2, 0);
	trans[4][2]	= settr(244,0,29,1,0,"goto accept_S3", 0, 2, 0);
	trans[4][12]	= settr(254,0,19,1,0,".(goto)", 0, 2, 0);
	trans[4][3]	= settr(245,0,39,74,0,"(((!(!((state==LoginScreen)))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[4][4]	= settr(246,0,39,1,0,"goto T0_S4", 0, 2, 0);
	trans[4][5]	= settr(247,0,55,75,0,"((((!(!((state==LoginScreen)))&&!((state==LoginScreen)))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[4][6]	= settr(248,0,55,1,0,"goto T0_S92", 0, 2, 0);
	trans[4][7]	= settr(249,0,57,76,0,"(((!(!((state==LoginScreen)))&&!((state!=LoginScreen)))&&!((state==LoginScreen))))", 1, 2, 0);
	trans[4][8]	= settr(250,0,57,1,0,"goto accept_all", 0, 2, 0);
	trans[4][9]	= settr(251,0,11,1,0,"(1)", 0, 2, 0);
	trans[4][10]	= settr(252,0,11,1,0,"goto T0_init", 0, 2, 0);
	T = trans[4][19] = settr(261,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(261,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(261,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(261,0,17,0,0,"IF", 0, 2, 0);
	trans[4][13]	= settr(255,0,49,77,0,"(((!((state!=LoginScreen))&&(state==LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))", 1, 2, 0);
	trans[4][14]	= settr(256,0,49,1,0,"goto T0_S3", 0, 2, 0);
	trans[4][20]	= settr(262,0,29,1,0,".(goto)", 0, 2, 0);
	trans[4][15]	= settr(257,0,39,78,0,"(((!((state!=LoginScreen))&&(state!=changeuserNotEmpty))||((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty))))", 1, 2, 0);
	trans[4][16]	= settr(258,0,39,1,0,"goto T0_S4", 0, 2, 0);
	trans[4][17]	= settr(259,0,55,79,0,"((((!((state!=LoginScreen))&&!((state==LoginScreen)))&&(state!=changeuserNotEmpty))||((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty))))", 1, 2, 0);
	trans[4][18]	= settr(260,0,55,1,0,"goto T0_S92", 0, 2, 0);
	T = trans[4][29] = settr(271,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(271,0,21,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(271,0,23,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(271,0,25,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(271,0,27,0,0,"IF", 0, 2, 0);
	trans[4][21]	= settr(263,0,49,80,0,"((!((state!=LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))", 1, 2, 0);
	trans[4][22]	= settr(264,0,49,1,0,"goto T0_S3", 0, 2, 0);
	trans[4][30]	= settr(272,0,39,1,0,".(goto)", 0, 2, 0);
	trans[4][23]	= settr(265,0,39,81,0,"(((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[4][24]	= settr(266,0,39,1,0,"goto T0_S4", 0, 2, 0);
	trans[4][25]	= settr(267,0,55,82,0,"(((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[4][26]	= settr(268,0,55,1,0,"goto T0_S92", 0, 2, 0);
	trans[4][27]	= settr(269,0,57,83,0,"((!((state!=LoginScreen))&&!((state==LoginScreen))))", 1, 2, 0);
	trans[4][28]	= settr(270,0,57,1,0,"goto accept_all", 0, 2, 0);
	T = trans[4][39] = settr(281,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(281,0,31,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(281,0,33,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(281,0,35,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(281,0,37,0,0,"IF", 0, 2, 0);
	trans[4][31]	= settr(273,0,29,84,0,"(((!((state!=LoginScreen))&&(state==LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))", 1, 2, 0);
	trans[4][32]	= settr(274,0,29,1,0,"goto accept_S3", 0, 2, 0);
	trans[4][40]	= settr(282,0,49,1,0,".(goto)", 0, 2, 0);
	trans[4][33]	= settr(275,0,39,85,0,"(((!((state!=LoginScreen))&&(state!=changeuserNotEmpty))||((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty))))", 1, 2, 0);
	trans[4][34]	= settr(276,0,39,1,0,"goto T0_S4", 0, 2, 0);
	trans[4][35]	= settr(277,0,19,86,0,"((((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty))&&(state==LoginScreen)))", 1, 2, 0);
	trans[4][36]	= settr(278,0,19,1,0,"goto accept_S4", 0, 2, 0);
	trans[4][37]	= settr(279,0,55,87,0,"((((!((state!=LoginScreen))&&!((state==LoginScreen)))&&(state!=changeuserNotEmpty))||((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty))))", 1, 2, 0);
	trans[4][38]	= settr(280,0,55,1,0,"goto T0_S92", 0, 2, 0);
	T = trans[4][49] = settr(291,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(291,0,41,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(291,0,43,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(291,0,45,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(291,0,47,0,0,"IF", 0, 2, 0);
	trans[4][41]	= settr(283,0,29,88,0,"((!((state!=LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))", 1, 2, 0);
	trans[4][42]	= settr(284,0,29,1,0,"goto accept_S3", 0, 2, 0);
	trans[4][50]	= settr(292,0,55,1,0,".(goto)", 0, 2, 0);
	trans[4][43]	= settr(285,0,39,89,0,"(((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[4][44]	= settr(286,0,39,1,0,"goto T0_S4", 0, 2, 0);
	trans[4][45]	= settr(287,0,55,90,0,"(((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))", 1, 2, 0);
	trans[4][46]	= settr(288,0,55,1,0,"goto T0_S92", 0, 2, 0);
	trans[4][47]	= settr(289,0,57,91,0,"((!((state!=LoginScreen))&&!((state==LoginScreen))))", 1, 2, 0);
	trans[4][48]	= settr(290,0,57,1,0,"goto accept_all", 0, 2, 0);
	T = trans[4][55] = settr(297,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,51,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(297,0,53,0,0,"IF", 0, 2, 0);
	trans[4][51]	= settr(293,0,57,92,0,"((state==LoginScreen))", 1, 2, 0);
	trans[4][52]	= settr(294,0,57,1,0,"goto accept_all", 0, 2, 0);
	trans[4][56]	= settr(298,0,57,1,0,".(goto)", 0, 2, 0);
	trans[4][53]	= settr(295,0,55,93,0,"((state!=changeuserNotEmpty))", 1, 2, 0);
	trans[4][54]	= settr(296,0,55,1,0,"goto T0_S92", 0, 2, 0);
	trans[4][57]	= settr(299,0,58,1,0,"(1)", 0, 2, 0);
	trans[4][58]	= settr(300,0,0,94,94,"-end-", 0, 3500, 0);

	/* proctype 3: req1_3 */

	trans[3] = (Trans **) emalloc(20*sizeof(Trans *));

	T = trans[3][7] = settr(230,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(230,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(230,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(230,0,5,0,0,"IF", 0, 2, 0);
	trans[3][1]	= settr(224,0,11,95,0,"(((!(!((state==MainScreen)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][2]	= settr(225,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[3][8]	= settr(231,0,11,1,0,".(goto)", 0, 2, 0);
	trans[3][3]	= settr(226,0,17,96,0,"((!(!((state==MainScreen)))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][4]	= settr(227,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[3][5]	= settr(228,0,7,1,0,"(1)", 0, 2, 0);
	trans[3][6]	= settr(229,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[3][11] = settr(234,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(234,0,9,0,0,"IF", 0, 2, 0);
	trans[3][9]	= settr(232,0,11,97,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][10]	= settr(233,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[3][12]	= settr(235,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[3][17] = settr(240,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(240,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(240,0,15,0,0,"IF", 0, 2, 0);
	trans[3][13]	= settr(236,0,11,98,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][14]	= settr(237,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[3][18]	= settr(241,0,19,1,0,".(goto)", 0, 2, 0);
	trans[3][15]	= settr(238,0,17,99,0,"(!((state!=MainScreen)))", 1, 2, 0);
	trans[3][16]	= settr(239,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[3][19]	= settr(242,0,0,100,100,"-end-", 0, 3500, 0);

	/* proctype 2: req1_2 */

	trans[2] = (Trans **) emalloc(20*sizeof(Trans *));

	T = trans[2][7] = settr(211,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(211,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(211,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(211,0,5,0,0,"IF", 0, 2, 0);
	trans[2][1]	= settr(205,0,11,101,0,"(((!(!((state==LoginScreen)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][2]	= settr(206,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[2][8]	= settr(212,0,11,1,0,".(goto)", 0, 2, 0);
	trans[2][3]	= settr(207,0,17,102,0,"((!(!((state==LoginScreen)))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][4]	= settr(208,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[2][5]	= settr(209,0,7,1,0,"(1)", 0, 2, 0);
	trans[2][6]	= settr(210,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[2][11] = settr(215,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(215,0,9,0,0,"IF", 0, 2, 0);
	trans[2][9]	= settr(213,0,11,103,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][10]	= settr(214,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[2][12]	= settr(216,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[2][17] = settr(221,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(221,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(221,0,15,0,0,"IF", 0, 2, 0);
	trans[2][13]	= settr(217,0,11,104,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][14]	= settr(218,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[2][18]	= settr(222,0,19,1,0,".(goto)", 0, 2, 0);
	trans[2][15]	= settr(219,0,17,105,0,"(!((state!=LoginScreen)))", 1, 2, 0);
	trans[2][16]	= settr(220,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[2][19]	= settr(223,0,0,106,106,"-end-", 0, 3500, 0);

	/* proctype 1: req1_1 */

	trans[1] = (Trans **) emalloc(20*sizeof(Trans *));

	T = trans[1][7] = settr(192,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(192,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(192,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(192,0,5,0,0,"IF", 0, 2, 0);
	trans[1][1]	= settr(186,0,11,107,0,"(((!(!((state==Setting)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][2]	= settr(187,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[1][8]	= settr(193,0,11,1,0,".(goto)", 0, 2, 0);
	trans[1][3]	= settr(188,0,17,108,0,"((!(!((state==Setting)))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][4]	= settr(189,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[1][5]	= settr(190,0,7,1,0,"(1)", 0, 2, 0);
	trans[1][6]	= settr(191,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[1][11] = settr(196,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(196,0,9,0,0,"IF", 0, 2, 0);
	trans[1][9]	= settr(194,0,11,109,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][10]	= settr(195,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[1][12]	= settr(197,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[1][17] = settr(202,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(202,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(202,0,15,0,0,"IF", 0, 2, 0);
	trans[1][13]	= settr(198,0,11,110,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][14]	= settr(199,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[1][18]	= settr(203,0,19,1,0,".(goto)", 0, 2, 0);
	trans[1][15]	= settr(200,0,17,111,0,"(!((state!=Setting)))", 1, 2, 0);
	trans[1][16]	= settr(201,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[1][19]	= settr(204,0,0,112,112,"-end-", 0, 3500, 0);

	/* proctype 0: vm */

	trans[0] = (Trans **) emalloc(187*sizeof(Trans *));

	trans[0][184]	= settr(183,0,183,1,0,".(goto)", 0, 2, 0);
	T = trans[0][183] = settr(182,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,38,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,54,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,59,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,70,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,81,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,92,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,111,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,122,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(182,0,133,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(182,0,164,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,36,113,0,"((state==Setting))", 1, 2, 0);
	T = trans[0][36] = settr(35,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,9,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,14,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,19,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,24,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,29,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(35,0,35,0,0,"IF", 0, 2, 0);
	trans[0][2]	= settr(1,0,8,114,0,"((Airplane_mode==0))", 1, 2, 0);
	T = trans[ 0][8] = settr(7,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(7,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[0][3]	= settr(2,0,183,115,115,"Airplane_mode = 1", 1, 2, 0); /* m: 4 -> 0,183 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"action[2] = 1",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"action[0] = 1",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"action[1] = 1",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][37]	= settr(36,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][9]	= settr(8,0,13,116,0,"((Airplane_mode==1))", 1, 2, 0);
	T = trans[ 0][13] = settr(12,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(12,2,10,0,0,"ATOMIC", 1, 2, 0);
	trans[0][10]	= settr(9,0,183,117,117,"Airplane_mode = 0", 1, 2, 0); /* m: 11 -> 0,183 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"action[2] = 1",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"state = changeAirplane_modeOFF",0,0,0);
	trans[0][14]	= settr(13,0,18,118,0,"(((Bluetooth==0)&&(Airplane_mode==0)))", 1, 2, 0);
	T = trans[ 0][18] = settr(17,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(17,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[0][15]	= settr(14,0,183,119,119,"Bluetooth = 1", 1, 2, 0); /* m: 16 -> 0,183 */
	reached0[16] = 1;
	trans[0][16]	= settr(0,0,0,0,0,"action[1] = 1",0,0,0);
	trans[0][17]	= settr(0,0,0,0,0,"state = changeBluetoothON",0,0,0);
	trans[0][19]	= settr(18,0,23,120,0,"((Bluetooth==1))", 1, 2, 0);
	T = trans[ 0][23] = settr(22,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(22,2,20,0,0,"ATOMIC", 1, 2, 0);
	trans[0][20]	= settr(19,0,183,121,121,"Bluetooth = 0", 1, 2, 0); /* m: 21 -> 0,183 */
	reached0[21] = 1;
	trans[0][21]	= settr(0,0,0,0,0,"action[1] = 1",0,0,0);
	trans[0][22]	= settr(0,0,0,0,0,"state = changeBluetoothOFF",0,0,0);
	trans[0][24]	= settr(23,0,28,122,0,"(((Wifi==0)&&(Airplane_mode==0)))", 1, 2, 0);
	T = trans[ 0][28] = settr(27,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(27,2,25,0,0,"ATOMIC", 1, 2, 0);
	trans[0][25]	= settr(24,0,183,123,123,"Wifi = 1", 1, 2, 0); /* m: 26 -> 0,183 */
	reached0[26] = 1;
	trans[0][26]	= settr(0,0,0,0,0,"action[0] = 1",0,0,0);
	trans[0][27]	= settr(0,0,0,0,0,"state = changeWifiON",0,0,0);
	trans[0][29]	= settr(28,0,33,124,0,"((Wifi==1))", 1, 2, 0);
	T = trans[ 0][33] = settr(32,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(32,2,30,0,0,"ATOMIC", 1, 2, 0);
	trans[0][30]	= settr(29,0,183,125,125,"Wifi = 0", 1, 2, 0); /* m: 31 -> 0,183 */
	reached0[31] = 1;
	trans[0][31]	= settr(0,0,0,0,0,"action[0] = 1",0,0,0);
	trans[0][32]	= settr(0,0,0,0,0,"state = changeWifiOFF",0,0,0);
	T = trans[ 0][35] = settr(34,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(34,2,34,0,0,"ATOMIC", 1, 2, 0);
	trans[0][34]	= settr(33,0,183,126,126,"state = Setting", 1, 2, 0);
	trans[0][38]	= settr(37,0,52,127,0,"((state==LoginScreen))", 1, 2, 0);
	T = trans[0][52] = settr(51,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(51,0,39,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(51,0,44,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(51,0,47,0,0,"IF", 0, 2, 0);
	trans[0][39]	= settr(38,0,43,128,0,"((pass==2))", 1, 2, 0);
	T = trans[ 0][43] = settr(42,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(42,2,40,0,0,"ATOMIC", 1, 2, 0);
	trans[0][40]	= settr(39,0,183,129,129,"pass = 3", 1, 2, 0); /* m: 41 -> 0,183 */
	reached0[41] = 1;
	trans[0][41]	= settr(0,0,0,0,0,"action[4] = 1",0,0,0);
	trans[0][42]	= settr(0,0,0,0,0,"state = changepassNotEmpty",0,0,0);
	trans[0][53]	= settr(52,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][44]	= settr(43,0,46,130,0,"(((user==3)&&(pass==3)))", 1, 2, 0);
	T = trans[ 0][46] = settr(45,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(45,2,45,0,0,"ATOMIC", 1, 2, 0);
	trans[0][45]	= settr(44,0,183,131,131,"state = MainScreen", 1, 2, 0);
	trans[0][47]	= settr(46,0,51,132,0,"((user==2))", 1, 2, 0);
	T = trans[ 0][51] = settr(50,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(50,2,48,0,0,"ATOMIC", 1, 2, 0);
	trans[0][48]	= settr(47,0,183,133,133,"user = 3", 1, 2, 0); /* m: 49 -> 0,183 */
	reached0[49] = 1;
	trans[0][49]	= settr(0,0,0,0,0,"action[3] = 1",0,0,0);
	trans[0][50]	= settr(0,0,0,0,0,"state = changeuserNotEmpty",0,0,0);
	trans[0][54]	= settr(53,0,57,134,0,"((state==MainScreen))", 1, 2, 0);
	T = trans[0][57] = settr(56,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(56,0,56,0,0,"IF", 0, 2, 0);
	T = trans[ 0][56] = settr(55,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(55,2,55,0,0,"ATOMIC", 1, 2, 0);
	trans[0][55]	= settr(54,0,183,135,135,"state = MainScreen", 1, 2, 0);
	trans[0][58]	= settr(57,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][59]	= settr(58,0,68,136,0,"((state==changeBluetoothON))", 1, 2, 0);
	T = trans[0][68] = settr(67,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(67,0,60,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(67,0,64,0,0,"IF", 0, 2, 0);
	trans[0][60]	= settr(59,0,63,137,0,"(((action[2]==0)&&(action[1]==1)))", 1, 2, 0);
	T = trans[ 0][63] = settr(62,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(62,2,61,0,0,"ATOMIC", 1, 2, 0);
	trans[0][61]	= settr(60,0,183,138,138,"action[1] = 0", 1, 2, 0); /* m: 62 -> 0,183 */
	reached0[62] = 1;
	trans[0][62]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][69]	= settr(68,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][64]	= settr(63,0,67,139,0,"(((action[2]==0)&&(action[1]==1)))", 1, 2, 0);
	T = trans[ 0][67] = settr(66,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(66,2,65,0,0,"ATOMIC", 1, 2, 0);
	trans[0][65]	= settr(64,0,183,140,140,"action[1] = 0", 1, 2, 0); /* m: 66 -> 0,183 */
	reached0[66] = 1;
	trans[0][66]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][70]	= settr(69,0,79,141,0,"((state==changeWifiON))", 1, 2, 0);
	T = trans[0][79] = settr(78,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,71,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(78,0,75,0,0,"IF", 0, 2, 0);
	trans[0][71]	= settr(70,0,74,142,0,"(((action[2]==0)&&(action[0]==1)))", 1, 2, 0);
	T = trans[ 0][74] = settr(73,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(73,2,72,0,0,"ATOMIC", 1, 2, 0);
	trans[0][72]	= settr(71,0,183,143,143,"action[0] = 0", 1, 2, 0); /* m: 73 -> 0,183 */
	reached0[73] = 1;
	trans[0][73]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][80]	= settr(79,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][75]	= settr(74,0,78,144,0,"(((action[2]==0)&&(action[0]==1)))", 1, 2, 0);
	T = trans[ 0][78] = settr(77,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(77,2,76,0,0,"ATOMIC", 1, 2, 0);
	trans[0][76]	= settr(75,0,183,145,145,"action[0] = 0", 1, 2, 0); /* m: 77 -> 0,183 */
	reached0[77] = 1;
	trans[0][77]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][81]	= settr(80,0,90,146,0,"((state==changepassNotEmpty))", 1, 2, 0);
	T = trans[0][90] = settr(89,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(89,0,82,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(89,0,86,0,0,"IF", 0, 2, 0);
	trans[0][82]	= settr(81,0,85,147,0,"((action[4]==1))", 1, 2, 0);
	T = trans[ 0][85] = settr(84,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(84,2,83,0,0,"ATOMIC", 1, 2, 0);
	trans[0][83]	= settr(82,0,183,148,148,"action[4] = 0", 1, 2, 0); /* m: 84 -> 0,183 */
	reached0[84] = 1;
	trans[0][84]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][91]	= settr(90,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][86]	= settr(85,0,89,149,0,"((action[4]==1))", 1, 2, 0);
	T = trans[ 0][89] = settr(88,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(88,2,87,0,0,"ATOMIC", 1, 2, 0);
	trans[0][87]	= settr(86,0,183,150,150,"action[4] = 0", 1, 2, 0); /* m: 88 -> 0,183 */
	reached0[88] = 1;
	trans[0][88]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][92]	= settr(91,0,109,151,0,"((state==changeBluetoothOFF))", 1, 2, 0);
	T = trans[0][109] = settr(108,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(108,0,93,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(108,0,97,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(108,0,101,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(108,0,105,0,0,"IF", 0, 2, 0);
	trans[0][93]	= settr(92,0,96,152,0,"(((action[2]==1)&&(action[1]==1)))", 1, 2, 0);
	T = trans[ 0][96] = settr(95,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(95,2,94,0,0,"ATOMIC", 1, 2, 0);
	trans[0][94]	= settr(93,0,183,153,153,"action[1] = 0", 1, 2, 0); /* m: 95 -> 0,183 */
	reached0[95] = 1;
	trans[0][95]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][110]	= settr(109,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][97]	= settr(96,0,100,154,0,"(((action[2]==0)&&(action[1]==1)))", 1, 2, 0);
	T = trans[ 0][100] = settr(99,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(99,2,98,0,0,"ATOMIC", 1, 2, 0);
	trans[0][98]	= settr(97,0,183,155,155,"action[1] = 0", 1, 2, 0); /* m: 99 -> 0,183 */
	reached0[99] = 1;
	trans[0][99]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][101]	= settr(100,0,104,156,0,"(((action[2]==1)&&(action[1]==1)))", 1, 2, 0);
	T = trans[ 0][104] = settr(103,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(103,2,102,0,0,"ATOMIC", 1, 2, 0);
	trans[0][102]	= settr(101,0,183,157,157,"action[1] = 0", 1, 2, 0); /* m: 103 -> 0,183 */
	reached0[103] = 1;
	trans[0][103]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][105]	= settr(104,0,108,158,0,"(((action[2]==0)&&(action[1]==1)))", 1, 2, 0);
	T = trans[ 0][108] = settr(107,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(107,2,106,0,0,"ATOMIC", 1, 2, 0);
	trans[0][106]	= settr(105,0,183,159,159,"action[1] = 0", 1, 2, 0); /* m: 107 -> 0,183 */
	reached0[107] = 1;
	trans[0][107]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][111]	= settr(110,0,120,160,0,"((state==changeuserNotEmpty))", 1, 2, 0);
	T = trans[0][120] = settr(119,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(119,0,112,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(119,0,116,0,0,"IF", 0, 2, 0);
	trans[0][112]	= settr(111,0,115,161,0,"((action[3]==1))", 1, 2, 0);
	T = trans[ 0][115] = settr(114,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(114,2,113,0,0,"ATOMIC", 1, 2, 0);
	trans[0][113]	= settr(112,0,183,162,162,"action[3] = 0", 1, 2, 0); /* m: 114 -> 0,183 */
	reached0[114] = 1;
	trans[0][114]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][121]	= settr(120,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][116]	= settr(115,0,119,163,0,"((action[3]==1))", 1, 2, 0);
	T = trans[ 0][119] = settr(118,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(118,2,117,0,0,"ATOMIC", 1, 2, 0);
	trans[0][117]	= settr(116,0,183,164,164,"action[3] = 0", 1, 2, 0); /* m: 118 -> 0,183 */
	reached0[118] = 1;
	trans[0][118]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][122]	= settr(121,0,131,165,0,"((state==changeAirplane_modeOFF))", 1, 2, 0);
	T = trans[0][131] = settr(130,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(130,0,123,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(130,0,127,0,0,"IF", 0, 2, 0);
	trans[0][123]	= settr(122,0,126,166,0,"((action[2]==1))", 1, 2, 0);
	T = trans[ 0][126] = settr(125,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(125,2,124,0,0,"ATOMIC", 1, 2, 0);
	trans[0][124]	= settr(123,0,183,167,167,"action[2] = 0", 1, 2, 0); /* m: 125 -> 0,183 */
	reached0[125] = 1;
	trans[0][125]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][132]	= settr(131,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][127]	= settr(126,0,130,168,0,"((action[2]==1))", 1, 2, 0);
	T = trans[ 0][130] = settr(129,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(129,2,128,0,0,"ATOMIC", 1, 2, 0);
	trans[0][128]	= settr(127,0,183,169,169,"action[2] = 0", 1, 2, 0); /* m: 129 -> 0,183 */
	reached0[129] = 1;
	trans[0][129]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][133]	= settr(132,0,162,170,0,"((state==changeAirplane_modeON))", 1, 2, 0);
	T = trans[0][162] = settr(161,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,143,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,148,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,152,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(161,0,157,0,0,"IF", 0, 2, 0);
	trans[0][134]	= settr(133,0,137,171,0,"((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))", 1, 2, 0);
	T = trans[ 0][137] = settr(136,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(136,2,135,0,0,"ATOMIC", 1, 2, 0);
	trans[0][135]	= settr(134,0,183,172,172,"action[2] = 0", 1, 2, 0); /* m: 136 -> 0,183 */
	reached0[136] = 1;
	trans[0][136]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][163]	= settr(162,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][138]	= settr(137,0,142,173,0,"((action[0]==1))", 1, 2, 0);
	T = trans[ 0][142] = settr(141,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(141,2,139,0,0,"ATOMIC", 1, 2, 0);
	trans[0][139]	= settr(138,0,183,174,174,"Wifi = 0", 1, 2, 0); /* m: 140 -> 0,183 */
	reached0[140] = 1;
	trans[0][140]	= settr(0,0,0,0,0,"action[0] = 1",0,0,0);
	trans[0][141]	= settr(0,0,0,0,0,"state = changeWifiOFF",0,0,0);
	trans[0][143]	= settr(142,0,147,175,0,"((action[1]==1))", 1, 2, 0);
	T = trans[ 0][147] = settr(146,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(146,2,144,0,0,"ATOMIC", 1, 2, 0);
	trans[0][144]	= settr(143,0,183,176,176,"Bluetooth = 0", 1, 2, 0); /* m: 145 -> 0,183 */
	reached0[145] = 1;
	trans[0][145]	= settr(0,0,0,0,0,"action[1] = 1",0,0,0);
	trans[0][146]	= settr(0,0,0,0,0,"state = changeBluetoothOFF",0,0,0);
	trans[0][148]	= settr(147,0,151,177,0,"((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))", 1, 2, 0);
	T = trans[ 0][151] = settr(150,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(150,2,149,0,0,"ATOMIC", 1, 2, 0);
	trans[0][149]	= settr(148,0,183,178,178,"action[2] = 0", 1, 2, 0); /* m: 150 -> 0,183 */
	reached0[150] = 1;
	trans[0][150]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][152]	= settr(151,0,156,179,0,"((action[0]==1))", 1, 2, 0);
	T = trans[ 0][156] = settr(155,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(155,2,153,0,0,"ATOMIC", 1, 2, 0);
	trans[0][153]	= settr(152,0,183,180,180,"Wifi = 0", 1, 2, 0); /* m: 154 -> 0,183 */
	reached0[154] = 1;
	trans[0][154]	= settr(0,0,0,0,0,"action[0] = 1",0,0,0);
	trans[0][155]	= settr(0,0,0,0,0,"state = changeWifiOFF",0,0,0);
	trans[0][157]	= settr(156,0,161,181,0,"((action[1]==1))", 1, 2, 0);
	T = trans[ 0][161] = settr(160,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(160,2,158,0,0,"ATOMIC", 1, 2, 0);
	trans[0][158]	= settr(157,0,183,182,182,"Bluetooth = 0", 1, 2, 0); /* m: 159 -> 0,183 */
	reached0[159] = 1;
	trans[0][159]	= settr(0,0,0,0,0,"action[1] = 1",0,0,0);
	trans[0][160]	= settr(0,0,0,0,0,"state = changeBluetoothOFF",0,0,0);
	trans[0][164]	= settr(163,0,181,183,0,"((state==changeWifiOFF))", 1, 2, 0);
	T = trans[0][181] = settr(180,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,169,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,173,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(180,0,177,0,0,"IF", 0, 2, 0);
	trans[0][165]	= settr(164,0,168,184,0,"(((action[2]==1)&&(action[0]==1)))", 1, 2, 0);
	T = trans[ 0][168] = settr(167,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(167,2,166,0,0,"ATOMIC", 1, 2, 0);
	trans[0][166]	= settr(165,0,183,185,185,"action[0] = 0", 1, 2, 0); /* m: 167 -> 0,183 */
	reached0[167] = 1;
	trans[0][167]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][182]	= settr(181,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][169]	= settr(168,0,172,186,0,"(((action[2]==0)&&(action[0]==1)))", 1, 2, 0);
	T = trans[ 0][172] = settr(171,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(171,2,170,0,0,"ATOMIC", 1, 2, 0);
	trans[0][170]	= settr(169,0,183,187,187,"action[0] = 0", 1, 2, 0); /* m: 171 -> 0,183 */
	reached0[171] = 1;
	trans[0][171]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][173]	= settr(172,0,176,188,0,"(((action[2]==1)&&(action[0]==1)))", 1, 2, 0);
	T = trans[ 0][176] = settr(175,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(175,2,174,0,0,"ATOMIC", 1, 2, 0);
	trans[0][174]	= settr(173,0,183,189,189,"action[0] = 0", 1, 2, 0); /* m: 175 -> 0,183 */
	reached0[175] = 1;
	trans[0][175]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][177]	= settr(176,0,180,190,0,"(((action[2]==0)&&(action[0]==1)))", 1, 2, 0);
	T = trans[ 0][180] = settr(179,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(179,2,178,0,0,"ATOMIC", 1, 2, 0);
	trans[0][178]	= settr(177,0,183,191,191,"action[0] = 0", 1, 2, 0); /* m: 179 -> 0,183 */
	reached0[179] = 1;
	trans[0][179]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][185]	= settr(184,0,186,1,0,"break", 0, 2, 0);
	trans[0][186]	= settr(185,0,0,192,192,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3, *T4, *T5;
	int i, k;
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#ifndef LOOPSTATE
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lstate);
#ifdef T_REVERSE
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3) { T2->nxt = T3; }	/* add else */

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
#endif
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}
void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
