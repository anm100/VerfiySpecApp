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

		 /* CLAIM req8_1 */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((Airplane_mode==1)))&&!((Wifi==0))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!(( !( !((((int)now.Airplane_mode)==1)))&& !((((int)now.Wifi)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [((((!(!((Airplane_mode==1)))&&!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF))))&&!((Bluetooth==0)))||((!(!((Airplane_mode==1)))&&!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF))))&&!((Wifi==0)))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported3)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][3] = 1;
		if (!(((( !( !((((int)now.Airplane_mode)==1)))&& !((((now.state==2)||(now.state==1))||(now.state==5))))&& !((((int)now.Bluetooth)==0)))||(( !( !((((int)now.Airplane_mode)==1)))&& !((((now.state==2)||(now.state==1))||(now.state==5))))&& !((((int)now.Wifi)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - _spin_nvr.tmp:5 - [((!(!((Airplane_mode==1)))&&!((Bluetooth==0))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported5)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][5] = 1;
		if (!(( !( !((((int)now.Airplane_mode)==1)))&& !((((int)now.Bluetooth)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 11 - _spin_nvr.tmp:10 - [(!((Wifi==0)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported11)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][11] = 1;
		if (!( !((((int)now.Wifi)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 13 - _spin_nvr.tmp:11 - [((!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF)))&&!((Wifi==0))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported13)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][13] = 1;
		if (!(( !((((now.state==2)||(now.state==1))||(now.state==5)))&& !((((int)now.Wifi)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 17 - _spin_nvr.tmp:15 - [(!((Bluetooth==0)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported17)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][17] = 1;
		if (!( !((((int)now.Bluetooth)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 19 - _spin_nvr.tmp:16 - [((!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF)))&&!((Bluetooth==0))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported19)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][19] = 1;
		if (!(( !((((now.state==2)||(now.state==1))||(now.state==5)))&& !((((int)now.Bluetooth)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 24 - _spin_nvr.tmp:20 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported24)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC vm */
	case 11: /* STATE 1 - examplePG.pml:26 - [((state==Setting))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 2 - examplePG.pml:28 - [((Airplane_mode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.Airplane_mode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 3 - examplePG.pml:28 - [Airplane_mode = 1] (0:183:5 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 1;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[2] = 1(183, 4, 183) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[2]);
		now.action[2] = 1;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: action[0] = 1(183, 5, 183) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: action[1] = 1(183, 6, 183) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeAirplane_modeON(183, 7, 183) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[4] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 183) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 14: /* STATE 9 - examplePG.pml:29 - [((Airplane_mode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.Airplane_mode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 10 - examplePG.pml:29 - [Airplane_mode = 0] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 0;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[2] = 1(183, 11, 183) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[2]);
		now.action[2] = 1;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = changeAirplane_modeOFF(183, 12, 183) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 183) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: /* STATE 14 - examplePG.pml:30 - [(((Bluetooth==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((((int)now.Bluetooth)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 15 - examplePG.pml:30 - [Bluetooth = 1] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 1;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(183, 16, 183) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothON(183, 17, 183) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 183) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 18: /* STATE 19 - examplePG.pml:31 - [((Bluetooth==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.Bluetooth)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 20 - examplePG.pml:31 - [Bluetooth = 0] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(183, 21, 183) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothOFF(183, 22, 183) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 183) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 20: /* STATE 24 - examplePG.pml:32 - [(((Wifi==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((int)now.Wifi)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 25 - examplePG.pml:32 - [Wifi = 1] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 1;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(183, 26, 183) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiON(183, 27, 183) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 183) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 22: /* STATE 29 - examplePG.pml:33 - [((Wifi==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.Wifi)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 30 - examplePG.pml:33 - [Wifi = 0] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(183, 31, 183) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiOFF(183, 32, 183) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 183) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 24: /* STATE 34 - examplePG.pml:34 - [state = Setting] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 38 - examplePG.pml:40 - [((state==LoginScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 39 - examplePG.pml:42 - [((pass==2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		if (!((((int)now.pass)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 40 - examplePG.pml:42 - [pass = 3] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.pass);
		now.pass = 3;
#ifdef VAR_RANGES
		logval("pass", ((int)now.pass));
#endif
		;
		/* merge: action[4] = 1(183, 41, 183) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[4]);
		now.action[4] = 1;
#ifdef VAR_RANGES
		logval("action[4]", ((int)now.action[4]));
#endif
		;
		/* merge: state = changepassNotEmpty(183, 42, 183) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 6;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 53, 183) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: /* STATE 44 - examplePG.pml:43 - [(((user==3)&&(pass==3)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		if (!(((((int)now.user)==3)&&(((int)now.pass)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 45 - examplePG.pml:43 - [state = MainScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 9;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 47 - examplePG.pml:44 - [((user==2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((int)now.user)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 48 - examplePG.pml:44 - [user = 3] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.user);
		now.user = 3;
#ifdef VAR_RANGES
		logval("user", ((int)now.user));
#endif
		;
		/* merge: action[3] = 1(183, 49, 183) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[3]);
		now.action[3] = 1;
#ifdef VAR_RANGES
		logval("action[3]", ((int)now.action[3]));
#endif
		;
		/* merge: state = changeuserNotEmpty(183, 50, 183) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 53, 183) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 32: /* STATE 54 - examplePG.pml:50 - [((state==MainScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		if (!((now.state==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 55 - examplePG.pml:52 - [state = MainScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 9;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 59 - examplePG.pml:54 - [((state==changeBluetoothON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][59] = 1;
		if (!((now.state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 60 - examplePG.pml:56 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][60] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 61 - examplePG.pml:56 - [action[1] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(183, 62, 183) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 69, 183) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 37: /* STATE 64 - examplePG.pml:57 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 65 - examplePG.pml:57 - [action[1] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(183, 66, 183) */
		reached[0][66] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 69, 183) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 39: /* STATE 70 - examplePG.pml:59 - [((state==changeWifiON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][70] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 71 - examplePG.pml:61 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 72 - examplePG.pml:61 - [action[0] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(183, 73, 183) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 80, 183) */
		reached[0][80] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 42: /* STATE 75 - examplePG.pml:62 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][75] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 76 - examplePG.pml:62 - [action[0] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(183, 77, 183) */
		reached[0][77] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 80, 183) */
		reached[0][80] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 44: /* STATE 81 - examplePG.pml:64 - [((state==changepassNotEmpty))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][81] = 1;
		if (!((now.state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 82 - examplePG.pml:66 - [((action[4]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((int)now.action[4])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 83 - examplePG.pml:66 - [action[4] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][83] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[4]);
		now.action[4] = 0;
#ifdef VAR_RANGES
		logval("action[4]", ((int)now.action[4]));
#endif
		;
		/* merge: state = LoginScreen(183, 84, 183) */
		reached[0][84] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 91, 183) */
		reached[0][91] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 47: /* STATE 86 - examplePG.pml:67 - [((action[4]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][86] = 1;
		if (!((((int)now.action[4])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 87 - examplePG.pml:67 - [action[4] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[4]);
		now.action[4] = 0;
#ifdef VAR_RANGES
		logval("action[4]", ((int)now.action[4]));
#endif
		;
		/* merge: state = LoginScreen(183, 88, 183) */
		reached[0][88] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 91, 183) */
		reached[0][91] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 49: /* STATE 92 - examplePG.pml:69 - [((state==changeBluetoothOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][92] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 93 - examplePG.pml:71 - [(((action[2]==1)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 94 - examplePG.pml:71 - [action[1] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][94] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeAirplane_modeON(183, 95, 183) */
		reached[0][95] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 110, 183) */
		reached[0][110] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 52: /* STATE 97 - examplePG.pml:72 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][97] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: /* STATE 98 - examplePG.pml:72 - [action[1] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][98] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(183, 99, 183) */
		reached[0][99] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 110, 183) */
		reached[0][110] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 54: /* STATE 101 - examplePG.pml:73 - [(((action[2]==1)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][101] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 102 - examplePG.pml:73 - [action[1] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][102] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeAirplane_modeON(183, 103, 183) */
		reached[0][103] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 110, 183) */
		reached[0][110] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 56: /* STATE 105 - examplePG.pml:74 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][105] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: /* STATE 106 - examplePG.pml:74 - [action[1] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][106] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(183, 107, 183) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 110, 183) */
		reached[0][110] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 58: /* STATE 111 - examplePG.pml:76 - [((state==changeuserNotEmpty))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][111] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: /* STATE 112 - examplePG.pml:78 - [((action[3]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][112] = 1;
		if (!((((int)now.action[3])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: /* STATE 113 - examplePG.pml:78 - [action[3] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][113] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[3]);
		now.action[3] = 0;
#ifdef VAR_RANGES
		logval("action[3]", ((int)now.action[3]));
#endif
		;
		/* merge: state = LoginScreen(183, 114, 183) */
		reached[0][114] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 121, 183) */
		reached[0][121] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 61: /* STATE 116 - examplePG.pml:79 - [((action[3]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][116] = 1;
		if (!((((int)now.action[3])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: /* STATE 117 - examplePG.pml:79 - [action[3] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][117] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[3]);
		now.action[3] = 0;
#ifdef VAR_RANGES
		logval("action[3]", ((int)now.action[3]));
#endif
		;
		/* merge: state = LoginScreen(183, 118, 183) */
		reached[0][118] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 121, 183) */
		reached[0][121] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 63: /* STATE 122 - examplePG.pml:81 - [((state==changeAirplane_modeOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][122] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: /* STATE 123 - examplePG.pml:83 - [((action[2]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][123] = 1;
		if (!((((int)now.action[2])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: /* STATE 124 - examplePG.pml:83 - [action[2] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][124] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(183, 125, 183) */
		reached[0][125] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 132, 183) */
		reached[0][132] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 66: /* STATE 127 - examplePG.pml:84 - [((action[2]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][127] = 1;
		if (!((((int)now.action[2])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: /* STATE 128 - examplePG.pml:84 - [action[2] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][128] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(183, 129, 183) */
		reached[0][129] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 132, 183) */
		reached[0][132] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 68: /* STATE 133 - examplePG.pml:86 - [((state==changeAirplane_modeON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][133] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: /* STATE 134 - examplePG.pml:88 - [((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][134] = 1;
		if (!((((((int)now.action[2])==1)&&(((int)now.action[0])==0))&&(((int)now.action[1])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: /* STATE 135 - examplePG.pml:88 - [action[2] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][135] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(183, 136, 183) */
		reached[0][136] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 163, 183) */
		reached[0][163] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 71: /* STATE 138 - examplePG.pml:89 - [((action[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][138] = 1;
		if (!((((int)now.action[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: /* STATE 139 - examplePG.pml:89 - [Wifi = 0] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][139] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(183, 140, 183) */
		reached[0][140] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiOFF(183, 141, 183) */
		reached[0][141] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 163, 183) */
		reached[0][163] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 73: /* STATE 143 - examplePG.pml:90 - [((action[1]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][143] = 1;
		if (!((((int)now.action[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: /* STATE 144 - examplePG.pml:90 - [Bluetooth = 0] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][144] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(183, 145, 183) */
		reached[0][145] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothOFF(183, 146, 183) */
		reached[0][146] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 163, 183) */
		reached[0][163] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 75: /* STATE 148 - examplePG.pml:91 - [((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][148] = 1;
		if (!((((((int)now.action[2])==1)&&(((int)now.action[0])==0))&&(((int)now.action[1])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: /* STATE 149 - examplePG.pml:91 - [action[2] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][149] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(183, 150, 183) */
		reached[0][150] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 163, 183) */
		reached[0][163] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 77: /* STATE 152 - examplePG.pml:92 - [((action[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][152] = 1;
		if (!((((int)now.action[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: /* STATE 153 - examplePG.pml:92 - [Wifi = 0] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][153] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(183, 154, 183) */
		reached[0][154] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiOFF(183, 155, 183) */
		reached[0][155] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 163, 183) */
		reached[0][163] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 79: /* STATE 157 - examplePG.pml:93 - [((action[1]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][157] = 1;
		if (!((((int)now.action[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: /* STATE 158 - examplePG.pml:93 - [Bluetooth = 0] (0:183:3 - 1) */
		IfNotBlocked
		reached[0][158] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(183, 159, 183) */
		reached[0][159] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothOFF(183, 160, 183) */
		reached[0][160] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 163, 183) */
		reached[0][163] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 81: /* STATE 164 - examplePG.pml:95 - [((state==changeWifiOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][164] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: /* STATE 165 - examplePG.pml:97 - [(((action[2]==1)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][165] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: /* STATE 166 - examplePG.pml:97 - [action[0] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][166] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeAirplane_modeON(183, 167, 183) */
		reached[0][167] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 182, 183) */
		reached[0][182] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 84: /* STATE 169 - examplePG.pml:98 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][169] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: /* STATE 170 - examplePG.pml:98 - [action[0] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][170] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(183, 171, 183) */
		reached[0][171] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 182, 183) */
		reached[0][182] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 86: /* STATE 173 - examplePG.pml:99 - [(((action[2]==1)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][173] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: /* STATE 174 - examplePG.pml:99 - [action[0] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][174] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeAirplane_modeON(183, 175, 183) */
		reached[0][175] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 182, 183) */
		reached[0][182] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 88: /* STATE 177 - examplePG.pml:100 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][177] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: /* STATE 178 - examplePG.pml:100 - [action[0] = 0] (0:183:2 - 1) */
		IfNotBlocked
		reached[0][178] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(183, 179, 183) */
		reached[0][179] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 182, 183) */
		reached[0][182] = 1;
		;
		/* merge: .(goto)(0, 184, 183) */
		reached[0][184] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 90: /* STATE 186 - examplePG.pml:103 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][186] = 1;
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

