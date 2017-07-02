#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC vm */
	case 3: /* STATE 1 - test6.pml:30 - [((state==Setting))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - test6.pml:32 - [((Airplane_mode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.Airplane_mode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - test6.pml:32 - [Airplane_mode = 1] (0:131:5 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 1;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[12] = 1(131, 4, 131) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[12]);
		now.action[12] = 1;
#ifdef VAR_RANGES
		logval("action[12]", ((int)now.action[12]));
#endif
		;
		/* merge: action[10] = 1(131, 5, 131) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.action[10]);
		now.action[10] = 1;
#ifdef VAR_RANGES
		logval("action[10]", ((int)now.action[10]));
#endif
		;
		/* merge: action[11] = 1(131, 6, 131) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.action[11]);
		now.action[11] = 1;
#ifdef VAR_RANGES
		logval("action[11]", ((int)now.action[11]));
#endif
		;
		/* merge: state = changeAirplane_modeON(131, 7, 131) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[4] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 131) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 6: /* STATE 9 - test6.pml:33 - [((Airplane_mode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.Airplane_mode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 10 - test6.pml:33 - [Airplane_mode = 0] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 0;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[12] = 1(131, 11, 131) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[12]);
		now.action[12] = 1;
#ifdef VAR_RANGES
		logval("action[12]", ((int)now.action[12]));
#endif
		;
		/* merge: state = changeAirplane_modeOFF(131, 12, 131) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 131) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 8: /* STATE 14 - test6.pml:34 - [(((Bluetooth==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((((int)now.Bluetooth)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 15 - test6.pml:34 - [Bluetooth = 1] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 1;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[11] = 1(131, 16, 131) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[11]);
		now.action[11] = 1;
#ifdef VAR_RANGES
		logval("action[11]", ((int)now.action[11]));
#endif
		;
		/* merge: state = changeBluetoothON(131, 17, 131) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 131) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 10: /* STATE 19 - test6.pml:35 - [((Bluetooth==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.Bluetooth)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 20 - test6.pml:35 - [Bluetooth = 0] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[11] = 1(131, 21, 131) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[11]);
		now.action[11] = 1;
#ifdef VAR_RANGES
		logval("action[11]", ((int)now.action[11]));
#endif
		;
		/* merge: state = changeBluetoothOFF(131, 22, 131) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 131) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 12: /* STATE 24 - test6.pml:36 - [(((Wifi==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((int)now.Wifi)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 25 - test6.pml:36 - [Wifi = 1] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 1;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[10] = 1(131, 26, 131) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[10]);
		now.action[10] = 1;
#ifdef VAR_RANGES
		logval("action[10]", ((int)now.action[10]));
#endif
		;
		/* merge: state = changeWifiON(131, 27, 131) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 131) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 14: /* STATE 29 - test6.pml:37 - [((Wifi==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.Wifi)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 30 - test6.pml:37 - [Wifi = 0] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[10] = 1(131, 31, 131) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[10]);
		now.action[10] = 1;
#ifdef VAR_RANGES
		logval("action[10]", ((int)now.action[10]));
#endif
		;
		/* merge: state = changeWifiOFF(131, 32, 131) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 131) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: /* STATE 36 - test6.pml:43 - [((state==LoginScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		if (!((now.state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 37 - test6.pml:45 - [((pass==2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)now.pass)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 38 - test6.pml:45 - [pass = 3] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pass);
		now.pass = 3;
#ifdef VAR_RANGES
		logval("pass", ((int)now.pass));
#endif
		;
		/* merge: action[14] = 1(131, 39, 131) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[14]);
		now.action[14] = 1;
#ifdef VAR_RANGES
		logval("action[14]", ((int)now.action[14]));
#endif
		;
		/* merge: state = changepassNotEmpty(131, 40, 131) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 6;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 51, 131) */
		reached[0][51] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 19: /* STATE 42 - test6.pml:46 - [(((user==3)&&(pass==3)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		if (!(((((int)now.user)==3)&&(((int)now.pass)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 43 - test6.pml:46 - [state = MainScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 9;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 45 - test6.pml:47 - [((user==2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((int)now.user)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 46 - test6.pml:47 - [user = 3] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.user);
		now.user = 3;
#ifdef VAR_RANGES
		logval("user", ((int)now.user));
#endif
		;
		/* merge: action[13] = 1(131, 47, 131) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[13]);
		now.action[13] = 1;
#ifdef VAR_RANGES
		logval("action[13]", ((int)now.action[13]));
#endif
		;
		/* merge: state = changeuserNotEmpty(131, 48, 131) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 51, 131) */
		reached[0][51] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 23: /* STATE 52 - test6.pml:53 - [((state==MainScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][52] = 1;
		if (!((now.state==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 53 - test6.pml:55 - [state = MainScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 9;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 57 - test6.pml:61 - [((state==changeBluetoothON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][57] = 1;
		if (!((now.state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 58 - test6.pml:63 - [(((action[12]==0)&&(action[11]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][58] = 1;
		if (!(((((int)now.action[12])==0)&&(((int)now.action[11])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 59 - test6.pml:63 - [action[11] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[11]);
		now.action[11] = 0;
#ifdef VAR_RANGES
		logval("action[11]", ((int)now.action[11]));
#endif
		;
		/* merge: state = Setting(131, 60, 131) */
		reached[0][60] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 63, 131) */
		reached[0][63] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 28: /* STATE 64 - test6.pml:65 - [((state==changeWifiON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 65 - test6.pml:67 - [(((action[12]==0)&&(action[10]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][65] = 1;
		if (!(((((int)now.action[12])==0)&&(((int)now.action[10])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 66 - test6.pml:67 - [action[10] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][66] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[10]);
		now.action[10] = 0;
#ifdef VAR_RANGES
		logval("action[10]", ((int)now.action[10]));
#endif
		;
		/* merge: state = Setting(131, 67, 131) */
		reached[0][67] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 70, 131) */
		reached[0][70] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 31: /* STATE 71 - test6.pml:69 - [((state==changepassNotEmpty))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		if (!((now.state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 72 - test6.pml:71 - [((action[14]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][72] = 1;
		if (!((((int)now.action[14])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 73 - test6.pml:71 - [action[14] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][73] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[14]);
		now.action[14] = 0;
#ifdef VAR_RANGES
		logval("action[14]", ((int)now.action[14]));
#endif
		;
		/* merge: state = LoginScreen(131, 74, 131) */
		reached[0][74] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 77, 131) */
		reached[0][77] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 34: /* STATE 78 - test6.pml:73 - [((state==changeBluetoothOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 79 - test6.pml:75 - [(((action[12]==1)&&(action[11]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][79] = 1;
		if (!(((((int)now.action[12])==1)&&(((int)now.action[11])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 80 - test6.pml:75 - [action[11] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[11]);
		now.action[11] = 0;
#ifdef VAR_RANGES
		logval("action[11]", ((int)now.action[11]));
#endif
		;
		/* merge: state = changeAirplane_modeON(131, 81, 131) */
		reached[0][81] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 88, 131) */
		reached[0][88] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 37: /* STATE 83 - test6.pml:76 - [(((action[12]==0)&&(action[11]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][83] = 1;
		if (!(((((int)now.action[12])==0)&&(((int)now.action[11])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 84 - test6.pml:76 - [action[11] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[11]);
		now.action[11] = 0;
#ifdef VAR_RANGES
		logval("action[11]", ((int)now.action[11]));
#endif
		;
		/* merge: state = Setting(131, 85, 131) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 88, 131) */
		reached[0][88] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 39: /* STATE 89 - test6.pml:78 - [((state==changeuserNotEmpty))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][89] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 90 - test6.pml:80 - [((action[13]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][90] = 1;
		if (!((((int)now.action[13])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 91 - test6.pml:80 - [action[13] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[13]);
		now.action[13] = 0;
#ifdef VAR_RANGES
		logval("action[13]", ((int)now.action[13]));
#endif
		;
		/* merge: state = LoginScreen(131, 92, 131) */
		reached[0][92] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 95, 131) */
		reached[0][95] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 42: /* STATE 96 - test6.pml:82 - [((state==changeAirplane_modeOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][96] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 97 - test6.pml:84 - [((action[12]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][97] = 1;
		if (!((((int)now.action[12])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 98 - test6.pml:84 - [action[12] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][98] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[12]);
		now.action[12] = 0;
#ifdef VAR_RANGES
		logval("action[12]", ((int)now.action[12]));
#endif
		;
		/* merge: state = Setting(131, 99, 131) */
		reached[0][99] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 102, 131) */
		reached[0][102] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 45: /* STATE 103 - test6.pml:86 - [((state==changeAirplane_modeON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][103] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 104 - test6.pml:88 - [((((action[12]==1)&&(action[10]==0))&&(action[11]==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][104] = 1;
		if (!((((((int)now.action[12])==1)&&(((int)now.action[10])==0))&&(((int)now.action[11])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 105 - test6.pml:88 - [action[12] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][105] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[12]);
		now.action[12] = 0;
#ifdef VAR_RANGES
		logval("action[12]", ((int)now.action[12]));
#endif
		;
		/* merge: state = Setting(131, 106, 131) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 119, 131) */
		reached[0][119] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 48: /* STATE 108 - test6.pml:89 - [((action[10]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][108] = 1;
		if (!((((int)now.action[10])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 109 - test6.pml:89 - [Wifi = 0] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][109] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[10] = 1(131, 110, 131) */
		reached[0][110] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[10]);
		now.action[10] = 1;
#ifdef VAR_RANGES
		logval("action[10]", ((int)now.action[10]));
#endif
		;
		/* merge: state = changeWifiOFF(131, 111, 131) */
		reached[0][111] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 119, 131) */
		reached[0][119] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 50: /* STATE 113 - test6.pml:90 - [((action[11]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][113] = 1;
		if (!((((int)now.action[11])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 114 - test6.pml:90 - [Bluetooth = 0] (0:131:3 - 1) */
		IfNotBlocked
		reached[0][114] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[11] = 1(131, 115, 131) */
		reached[0][115] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[11]);
		now.action[11] = 1;
#ifdef VAR_RANGES
		logval("action[11]", ((int)now.action[11]));
#endif
		;
		/* merge: state = changeBluetoothOFF(131, 116, 131) */
		reached[0][116] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 119, 131) */
		reached[0][119] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 52: /* STATE 120 - test6.pml:92 - [((state==changeWifiOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][120] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: /* STATE 121 - test6.pml:94 - [(((action[12]==1)&&(action[10]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][121] = 1;
		if (!(((((int)now.action[12])==1)&&(((int)now.action[10])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 122 - test6.pml:94 - [action[10] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][122] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[10]);
		now.action[10] = 0;
#ifdef VAR_RANGES
		logval("action[10]", ((int)now.action[10]));
#endif
		;
		/* merge: state = changeAirplane_modeON(131, 123, 131) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 130, 131) */
		reached[0][130] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 55: /* STATE 125 - test6.pml:95 - [(((action[12]==0)&&(action[10]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][125] = 1;
		if (!(((((int)now.action[12])==0)&&(((int)now.action[10])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: /* STATE 126 - test6.pml:95 - [action[10] = 0] (0:131:2 - 1) */
		IfNotBlocked
		reached[0][126] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[10]);
		now.action[10] = 0;
#ifdef VAR_RANGES
		logval("action[10]", ((int)now.action[10]));
#endif
		;
		/* merge: state = Setting(131, 127, 131) */
		reached[0][127] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 130, 131) */
		reached[0][130] = 1;
		;
		/* merge: .(goto)(0, 132, 131) */
		reached[0][132] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 57: /* STATE 134 - test6.pml:98 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][134] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

