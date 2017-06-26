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

	trans = (Trans ***) emalloc(5*sizeof(Trans **));

	/* proctype 3: req1_3 */

	trans[3] = (Trans **) emalloc(20*sizeof(Trans *));

	T = trans[3][7] = settr(230,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(230,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(230,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(230,0,5,0,0,"IF", 0, 2, 0);
	trans[3][1]	= settr(224,0,11,3,0,"(((!(!((state==MainScreen)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][2]	= settr(225,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[3][8]	= settr(231,0,11,1,0,".(goto)", 0, 2, 0);
	trans[3][3]	= settr(226,0,17,4,0,"((!(!((state==MainScreen)))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][4]	= settr(227,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[3][5]	= settr(228,0,7,1,0,"(1)", 0, 2, 0);
	trans[3][6]	= settr(229,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[3][11] = settr(234,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(234,0,9,0,0,"IF", 0, 2, 0);
	trans[3][9]	= settr(232,0,11,5,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][10]	= settr(233,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[3][12]	= settr(235,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[3][17] = settr(240,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(240,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(240,0,15,0,0,"IF", 0, 2, 0);
	trans[3][13]	= settr(236,0,11,6,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=MainScreen))))", 1, 2, 0);
	trans[3][14]	= settr(237,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[3][18]	= settr(241,0,19,1,0,".(goto)", 0, 2, 0);
	trans[3][15]	= settr(238,0,17,7,0,"(!((state!=MainScreen)))", 1, 2, 0);
	trans[3][16]	= settr(239,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[3][19]	= settr(242,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 2: req1_2 */

	trans[2] = (Trans **) emalloc(20*sizeof(Trans *));

	T = trans[2][7] = settr(211,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(211,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(211,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(211,0,5,0,0,"IF", 0, 2, 0);
	trans[2][1]	= settr(205,0,11,9,0,"(((!(!((state==LoginScreen)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][2]	= settr(206,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[2][8]	= settr(212,0,11,1,0,".(goto)", 0, 2, 0);
	trans[2][3]	= settr(207,0,17,10,0,"((!(!((state==LoginScreen)))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][4]	= settr(208,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[2][5]	= settr(209,0,7,1,0,"(1)", 0, 2, 0);
	trans[2][6]	= settr(210,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[2][11] = settr(215,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(215,0,9,0,0,"IF", 0, 2, 0);
	trans[2][9]	= settr(213,0,11,11,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][10]	= settr(214,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[2][12]	= settr(216,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[2][17] = settr(221,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(221,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(221,0,15,0,0,"IF", 0, 2, 0);
	trans[2][13]	= settr(217,0,11,12,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=LoginScreen))))", 1, 2, 0);
	trans[2][14]	= settr(218,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[2][18]	= settr(222,0,19,1,0,".(goto)", 0, 2, 0);
	trans[2][15]	= settr(219,0,17,13,0,"(!((state!=LoginScreen)))", 1, 2, 0);
	trans[2][16]	= settr(220,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[2][19]	= settr(223,0,0,14,14,"-end-", 0, 3500, 0);

	/* proctype 1: req1_1 */

	trans[1] = (Trans **) emalloc(20*sizeof(Trans *));

	T = trans[1][7] = settr(192,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(192,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(192,0,3,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(192,0,5,0,0,"IF", 0, 2, 0);
	trans[1][1]	= settr(186,0,11,15,0,"(((!(!((state==Setting)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][2]	= settr(187,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[1][8]	= settr(193,0,11,1,0,".(goto)", 0, 2, 0);
	trans[1][3]	= settr(188,0,17,16,0,"((!(!((state==Setting)))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][4]	= settr(189,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[1][5]	= settr(190,0,7,1,0,"(1)", 0, 2, 0);
	trans[1][6]	= settr(191,0,7,1,0,"goto T0_init", 0, 2, 0);
	T = trans[1][11] = settr(196,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(196,0,9,0,0,"IF", 0, 2, 0);
	trans[1][9]	= settr(194,0,11,17,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][10]	= settr(195,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[1][12]	= settr(197,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[1][17] = settr(202,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(202,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(202,0,15,0,0,"IF", 0, 2, 0);
	trans[1][13]	= settr(198,0,11,18,0,"((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))", 1, 2, 0);
	trans[1][14]	= settr(199,0,11,1,0,"goto accept_S19", 0, 2, 0);
	trans[1][18]	= settr(203,0,19,1,0,".(goto)", 0, 2, 0);
	trans[1][15]	= settr(200,0,17,19,0,"(!((state!=Setting)))", 1, 2, 0);
	trans[1][16]	= settr(201,0,17,1,0,"goto T0_S23", 0, 2, 0);
	trans[1][19]	= settr(204,0,0,20,20,"-end-", 0, 3500, 0);

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
	trans[0][1]	= settr(0,0,36,21,0,"((state==Setting))", 1, 2, 0);
	T = trans[0][36] = settr(35,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,9,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,14,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,19,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,24,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(35,0,29,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(35,0,35,0,0,"IF", 0, 2, 0);
	trans[0][2]	= settr(1,0,8,22,0,"((Airplane_mode==0))", 1, 2, 0);
	T = trans[ 0][8] = settr(7,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(7,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[0][3]	= settr(2,0,183,23,23,"Airplane_mode = 1", 1, 2, 0); /* m: 4 -> 0,183 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"action[12] = 1",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"action[10] = 1",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"action[11] = 1",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][37]	= settr(36,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][9]	= settr(8,0,13,24,0,"((Airplane_mode==1))", 1, 2, 0);
	T = trans[ 0][13] = settr(12,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(12,2,10,0,0,"ATOMIC", 1, 2, 0);
	trans[0][10]	= settr(9,0,183,25,25,"Airplane_mode = 0", 1, 2, 0); /* m: 11 -> 0,183 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"action[12] = 1",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"state = changeAirplane_modeOFF",0,0,0);
	trans[0][14]	= settr(13,0,18,26,0,"(((Bluetooth==0)&&(Airplane_mode==0)))", 1, 2, 0);
	T = trans[ 0][18] = settr(17,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(17,2,15,0,0,"ATOMIC", 1, 2, 0);
	trans[0][15]	= settr(14,0,183,27,27,"Bluetooth = 1", 1, 2, 0); /* m: 16 -> 0,183 */
	reached0[16] = 1;
	trans[0][16]	= settr(0,0,0,0,0,"action[11] = 1",0,0,0);
	trans[0][17]	= settr(0,0,0,0,0,"state = changeBluetoothON",0,0,0);
	trans[0][19]	= settr(18,0,23,28,0,"((Bluetooth==1))", 1, 2, 0);
	T = trans[ 0][23] = settr(22,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(22,2,20,0,0,"ATOMIC", 1, 2, 0);
	trans[0][20]	= settr(19,0,183,29,29,"Bluetooth = 0", 1, 2, 0); /* m: 21 -> 0,183 */
	reached0[21] = 1;
	trans[0][21]	= settr(0,0,0,0,0,"action[11] = 1",0,0,0);
	trans[0][22]	= settr(0,0,0,0,0,"state = changeBluetoothOFF",0,0,0);
	trans[0][24]	= settr(23,0,28,30,0,"(((Wifi==0)&&(Airplane_mode==0)))", 1, 2, 0);
	T = trans[ 0][28] = settr(27,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(27,2,25,0,0,"ATOMIC", 1, 2, 0);
	trans[0][25]	= settr(24,0,183,31,31,"Wifi = 1", 1, 2, 0); /* m: 26 -> 0,183 */
	reached0[26] = 1;
	trans[0][26]	= settr(0,0,0,0,0,"action[10] = 1",0,0,0);
	trans[0][27]	= settr(0,0,0,0,0,"state = changeWifiON",0,0,0);
	trans[0][29]	= settr(28,0,33,32,0,"((Wifi==1))", 1, 2, 0);
	T = trans[ 0][33] = settr(32,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(32,2,30,0,0,"ATOMIC", 1, 2, 0);
	trans[0][30]	= settr(29,0,183,33,33,"Wifi = 0", 1, 2, 0); /* m: 31 -> 0,183 */
	reached0[31] = 1;
	trans[0][31]	= settr(0,0,0,0,0,"action[10] = 1",0,0,0);
	trans[0][32]	= settr(0,0,0,0,0,"state = changeWifiOFF",0,0,0);
	T = trans[ 0][35] = settr(34,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(34,2,34,0,0,"ATOMIC", 1, 2, 0);
	trans[0][34]	= settr(33,0,183,34,34,"state = Setting", 1, 2, 0);
	trans[0][38]	= settr(37,0,52,35,0,"((state==LoginScreen))", 1, 2, 0);
	T = trans[0][52] = settr(51,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(51,0,39,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(51,0,44,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(51,0,47,0,0,"IF", 0, 2, 0);
	trans[0][39]	= settr(38,0,43,36,0,"((pass==2))", 1, 2, 0);
	T = trans[ 0][43] = settr(42,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(42,2,40,0,0,"ATOMIC", 1, 2, 0);
	trans[0][40]	= settr(39,0,183,37,37,"pass = 3", 1, 2, 0); /* m: 41 -> 0,183 */
	reached0[41] = 1;
	trans[0][41]	= settr(0,0,0,0,0,"action[14] = 1",0,0,0);
	trans[0][42]	= settr(0,0,0,0,0,"state = changepassNotEmpty",0,0,0);
	trans[0][53]	= settr(52,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][44]	= settr(43,0,46,38,0,"(((user==3)&&(pass==3)))", 1, 2, 0);
	T = trans[ 0][46] = settr(45,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(45,2,45,0,0,"ATOMIC", 1, 2, 0);
	trans[0][45]	= settr(44,0,183,39,39,"state = MainScreen", 1, 2, 0);
	trans[0][47]	= settr(46,0,51,40,0,"((user==2))", 1, 2, 0);
	T = trans[ 0][51] = settr(50,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(50,2,48,0,0,"ATOMIC", 1, 2, 0);
	trans[0][48]	= settr(47,0,183,41,41,"user = 3", 1, 2, 0); /* m: 49 -> 0,183 */
	reached0[49] = 1;
	trans[0][49]	= settr(0,0,0,0,0,"action[13] = 1",0,0,0);
	trans[0][50]	= settr(0,0,0,0,0,"state = changeuserNotEmpty",0,0,0);
	trans[0][54]	= settr(53,0,57,42,0,"((state==MainScreen))", 1, 2, 0);
	T = trans[0][57] = settr(56,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(56,0,56,0,0,"IF", 0, 2, 0);
	T = trans[ 0][56] = settr(55,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(55,2,55,0,0,"ATOMIC", 1, 2, 0);
	trans[0][55]	= settr(54,0,183,43,43,"state = MainScreen", 1, 2, 0);
	trans[0][58]	= settr(57,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][59]	= settr(58,0,68,44,0,"((state==changeBluetoothON))", 1, 2, 0);
	T = trans[0][68] = settr(67,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(67,0,60,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(67,0,64,0,0,"IF", 0, 2, 0);
	trans[0][60]	= settr(59,0,63,45,0,"(((action[12]==0)&&(action[11]==1)))", 1, 2, 0);
	T = trans[ 0][63] = settr(62,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(62,2,61,0,0,"ATOMIC", 1, 2, 0);
	trans[0][61]	= settr(60,0,183,46,46,"action[11] = 0", 1, 2, 0); /* m: 62 -> 0,183 */
	reached0[62] = 1;
	trans[0][62]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][69]	= settr(68,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][64]	= settr(63,0,67,47,0,"(((action[12]==0)&&(action[11]==1)))", 1, 2, 0);
	T = trans[ 0][67] = settr(66,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(66,2,65,0,0,"ATOMIC", 1, 2, 0);
	trans[0][65]	= settr(64,0,183,48,48,"action[11] = 0", 1, 2, 0); /* m: 66 -> 0,183 */
	reached0[66] = 1;
	trans[0][66]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][70]	= settr(69,0,79,49,0,"((state==changeWifiON))", 1, 2, 0);
	T = trans[0][79] = settr(78,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,71,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(78,0,75,0,0,"IF", 0, 2, 0);
	trans[0][71]	= settr(70,0,74,50,0,"(((action[12]==0)&&(action[10]==1)))", 1, 2, 0);
	T = trans[ 0][74] = settr(73,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(73,2,72,0,0,"ATOMIC", 1, 2, 0);
	trans[0][72]	= settr(71,0,183,51,51,"action[10] = 0", 1, 2, 0); /* m: 73 -> 0,183 */
	reached0[73] = 1;
	trans[0][73]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][80]	= settr(79,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][75]	= settr(74,0,78,52,0,"(((action[12]==0)&&(action[10]==1)))", 1, 2, 0);
	T = trans[ 0][78] = settr(77,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(77,2,76,0,0,"ATOMIC", 1, 2, 0);
	trans[0][76]	= settr(75,0,183,53,53,"action[10] = 0", 1, 2, 0); /* m: 77 -> 0,183 */
	reached0[77] = 1;
	trans[0][77]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][81]	= settr(80,0,90,54,0,"((state==changepassNotEmpty))", 1, 2, 0);
	T = trans[0][90] = settr(89,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(89,0,82,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(89,0,86,0,0,"IF", 0, 2, 0);
	trans[0][82]	= settr(81,0,85,55,0,"((action[14]==1))", 1, 2, 0);
	T = trans[ 0][85] = settr(84,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(84,2,83,0,0,"ATOMIC", 1, 2, 0);
	trans[0][83]	= settr(82,0,183,56,56,"action[14] = 0", 1, 2, 0); /* m: 84 -> 0,183 */
	reached0[84] = 1;
	trans[0][84]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][91]	= settr(90,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][86]	= settr(85,0,89,57,0,"((action[14]==1))", 1, 2, 0);
	T = trans[ 0][89] = settr(88,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(88,2,87,0,0,"ATOMIC", 1, 2, 0);
	trans[0][87]	= settr(86,0,183,58,58,"action[14] = 0", 1, 2, 0); /* m: 88 -> 0,183 */
	reached0[88] = 1;
	trans[0][88]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][92]	= settr(91,0,109,59,0,"((state==changeBluetoothOFF))", 1, 2, 0);
	T = trans[0][109] = settr(108,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(108,0,93,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(108,0,97,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(108,0,101,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(108,0,105,0,0,"IF", 0, 2, 0);
	trans[0][93]	= settr(92,0,96,60,0,"(((action[12]==1)&&(action[11]==1)))", 1, 2, 0);
	T = trans[ 0][96] = settr(95,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(95,2,94,0,0,"ATOMIC", 1, 2, 0);
	trans[0][94]	= settr(93,0,183,61,61,"action[11] = 0", 1, 2, 0); /* m: 95 -> 0,183 */
	reached0[95] = 1;
	trans[0][95]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][110]	= settr(109,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][97]	= settr(96,0,100,62,0,"(((action[12]==0)&&(action[11]==1)))", 1, 2, 0);
	T = trans[ 0][100] = settr(99,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(99,2,98,0,0,"ATOMIC", 1, 2, 0);
	trans[0][98]	= settr(97,0,183,63,63,"action[11] = 0", 1, 2, 0); /* m: 99 -> 0,183 */
	reached0[99] = 1;
	trans[0][99]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][101]	= settr(100,0,104,64,0,"(((action[12]==1)&&(action[11]==1)))", 1, 2, 0);
	T = trans[ 0][104] = settr(103,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(103,2,102,0,0,"ATOMIC", 1, 2, 0);
	trans[0][102]	= settr(101,0,183,65,65,"action[11] = 0", 1, 2, 0); /* m: 103 -> 0,183 */
	reached0[103] = 1;
	trans[0][103]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][105]	= settr(104,0,108,66,0,"(((action[12]==0)&&(action[11]==1)))", 1, 2, 0);
	T = trans[ 0][108] = settr(107,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(107,2,106,0,0,"ATOMIC", 1, 2, 0);
	trans[0][106]	= settr(105,0,183,67,67,"action[11] = 0", 1, 2, 0); /* m: 107 -> 0,183 */
	reached0[107] = 1;
	trans[0][107]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][111]	= settr(110,0,120,68,0,"((state==changeuserNotEmpty))", 1, 2, 0);
	T = trans[0][120] = settr(119,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(119,0,112,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(119,0,116,0,0,"IF", 0, 2, 0);
	trans[0][112]	= settr(111,0,115,69,0,"((action[13]==1))", 1, 2, 0);
	T = trans[ 0][115] = settr(114,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(114,2,113,0,0,"ATOMIC", 1, 2, 0);
	trans[0][113]	= settr(112,0,183,70,70,"action[13] = 0", 1, 2, 0); /* m: 114 -> 0,183 */
	reached0[114] = 1;
	trans[0][114]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][121]	= settr(120,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][116]	= settr(115,0,119,71,0,"((action[13]==1))", 1, 2, 0);
	T = trans[ 0][119] = settr(118,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(118,2,117,0,0,"ATOMIC", 1, 2, 0);
	trans[0][117]	= settr(116,0,183,72,72,"action[13] = 0", 1, 2, 0); /* m: 118 -> 0,183 */
	reached0[118] = 1;
	trans[0][118]	= settr(0,0,0,0,0,"state = LoginScreen",0,0,0);
	trans[0][122]	= settr(121,0,131,73,0,"((state==changeAirplane_modeOFF))", 1, 2, 0);
	T = trans[0][131] = settr(130,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(130,0,123,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(130,0,127,0,0,"IF", 0, 2, 0);
	trans[0][123]	= settr(122,0,126,74,0,"((action[12]==1))", 1, 2, 0);
	T = trans[ 0][126] = settr(125,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(125,2,124,0,0,"ATOMIC", 1, 2, 0);
	trans[0][124]	= settr(123,0,183,75,75,"action[12] = 0", 1, 2, 0); /* m: 125 -> 0,183 */
	reached0[125] = 1;
	trans[0][125]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][132]	= settr(131,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][127]	= settr(126,0,130,76,0,"((action[12]==1))", 1, 2, 0);
	T = trans[ 0][130] = settr(129,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(129,2,128,0,0,"ATOMIC", 1, 2, 0);
	trans[0][128]	= settr(127,0,183,77,77,"action[12] = 0", 1, 2, 0); /* m: 129 -> 0,183 */
	reached0[129] = 1;
	trans[0][129]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][133]	= settr(132,0,162,78,0,"((state==changeAirplane_modeON))", 1, 2, 0);
	T = trans[0][162] = settr(161,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,138,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,143,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,148,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(161,0,152,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(161,0,157,0,0,"IF", 0, 2, 0);
	trans[0][134]	= settr(133,0,137,79,0,"((((action[12]==1)&&(action[10]==0))&&(action[11]==0)))", 1, 2, 0);
	T = trans[ 0][137] = settr(136,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(136,2,135,0,0,"ATOMIC", 1, 2, 0);
	trans[0][135]	= settr(134,0,183,80,80,"action[12] = 0", 1, 2, 0); /* m: 136 -> 0,183 */
	reached0[136] = 1;
	trans[0][136]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][163]	= settr(162,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][138]	= settr(137,0,142,81,0,"((action[10]==1))", 1, 2, 0);
	T = trans[ 0][142] = settr(141,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(141,2,139,0,0,"ATOMIC", 1, 2, 0);
	trans[0][139]	= settr(138,0,183,82,82,"Wifi = 0", 1, 2, 0); /* m: 140 -> 0,183 */
	reached0[140] = 1;
	trans[0][140]	= settr(0,0,0,0,0,"action[10] = 1",0,0,0);
	trans[0][141]	= settr(0,0,0,0,0,"state = changeWifiOFF",0,0,0);
	trans[0][143]	= settr(142,0,147,83,0,"((action[11]==1))", 1, 2, 0);
	T = trans[ 0][147] = settr(146,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(146,2,144,0,0,"ATOMIC", 1, 2, 0);
	trans[0][144]	= settr(143,0,183,84,84,"Bluetooth = 0", 1, 2, 0); /* m: 145 -> 0,183 */
	reached0[145] = 1;
	trans[0][145]	= settr(0,0,0,0,0,"action[11] = 1",0,0,0);
	trans[0][146]	= settr(0,0,0,0,0,"state = changeBluetoothOFF",0,0,0);
	trans[0][148]	= settr(147,0,151,85,0,"((((action[12]==1)&&(action[10]==0))&&(action[11]==0)))", 1, 2, 0);
	T = trans[ 0][151] = settr(150,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(150,2,149,0,0,"ATOMIC", 1, 2, 0);
	trans[0][149]	= settr(148,0,183,86,86,"action[12] = 0", 1, 2, 0); /* m: 150 -> 0,183 */
	reached0[150] = 1;
	trans[0][150]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][152]	= settr(151,0,156,87,0,"((action[10]==1))", 1, 2, 0);
	T = trans[ 0][156] = settr(155,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(155,2,153,0,0,"ATOMIC", 1, 2, 0);
	trans[0][153]	= settr(152,0,183,88,88,"Wifi = 0", 1, 2, 0); /* m: 154 -> 0,183 */
	reached0[154] = 1;
	trans[0][154]	= settr(0,0,0,0,0,"action[10] = 1",0,0,0);
	trans[0][155]	= settr(0,0,0,0,0,"state = changeWifiOFF",0,0,0);
	trans[0][157]	= settr(156,0,161,89,0,"((action[11]==1))", 1, 2, 0);
	T = trans[ 0][161] = settr(160,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(160,2,158,0,0,"ATOMIC", 1, 2, 0);
	trans[0][158]	= settr(157,0,183,90,90,"Bluetooth = 0", 1, 2, 0); /* m: 159 -> 0,183 */
	reached0[159] = 1;
	trans[0][159]	= settr(0,0,0,0,0,"action[11] = 1",0,0,0);
	trans[0][160]	= settr(0,0,0,0,0,"state = changeBluetoothOFF",0,0,0);
	trans[0][164]	= settr(163,0,181,91,0,"((state==changeWifiOFF))", 1, 2, 0);
	T = trans[0][181] = settr(180,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,169,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,173,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(180,0,177,0,0,"IF", 0, 2, 0);
	trans[0][165]	= settr(164,0,168,92,0,"(((action[12]==1)&&(action[10]==1)))", 1, 2, 0);
	T = trans[ 0][168] = settr(167,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(167,2,166,0,0,"ATOMIC", 1, 2, 0);
	trans[0][166]	= settr(165,0,183,93,93,"action[10] = 0", 1, 2, 0); /* m: 167 -> 0,183 */
	reached0[167] = 1;
	trans[0][167]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][182]	= settr(181,0,183,1,0,".(goto)", 0, 2, 0);
	trans[0][169]	= settr(168,0,172,94,0,"(((action[12]==0)&&(action[10]==1)))", 1, 2, 0);
	T = trans[ 0][172] = settr(171,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(171,2,170,0,0,"ATOMIC", 1, 2, 0);
	trans[0][170]	= settr(169,0,183,95,95,"action[10] = 0", 1, 2, 0); /* m: 171 -> 0,183 */
	reached0[171] = 1;
	trans[0][171]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][173]	= settr(172,0,176,96,0,"(((action[12]==1)&&(action[10]==1)))", 1, 2, 0);
	T = trans[ 0][176] = settr(175,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(175,2,174,0,0,"ATOMIC", 1, 2, 0);
	trans[0][174]	= settr(173,0,183,97,97,"action[10] = 0", 1, 2, 0); /* m: 175 -> 0,183 */
	reached0[175] = 1;
	trans[0][175]	= settr(0,0,0,0,0,"state = changeAirplane_modeON",0,0,0);
	trans[0][177]	= settr(176,0,180,98,0,"(((action[12]==0)&&(action[10]==1)))", 1, 2, 0);
	T = trans[ 0][180] = settr(179,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(179,2,178,0,0,"ATOMIC", 1, 2, 0);
	trans[0][178]	= settr(177,0,183,99,99,"action[10] = 0", 1, 2, 0); /* m: 179 -> 0,183 */
	reached0[179] = 1;
	trans[0][179]	= settr(0,0,0,0,0,"state = Setting",0,0,0);
	trans[0][185]	= settr(184,0,186,1,0,"break", 0, 2, 0);
	trans[0][186]	= settr(185,0,0,100,100,"-end-", 0, 3500, 0);
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
