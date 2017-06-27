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

		 /* CLAIM req8 */
	case 3: /* STATE 1 - _spin_nvr.tmp:20 - [((!(!((Airplane_mode==1)))&&!((Wifi==0))))] (0:0:0 - 1) */
		
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
		reached[2][1] = 1;
		if (!(( !( !((((int)now.Airplane_mode)==1)))&& !((((int)now.Wifi)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:21 - [((((!(!((Airplane_mode==1)))&&!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF))))&&!((Bluetooth==0)))||((!(!((Airplane_mode==1)))&&!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF))))&&!((Wifi==0)))))] (0:0:0 - 1) */
		
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
		reached[2][3] = 1;
		if (!(((( !( !((((int)now.Airplane_mode)==1)))&& !((((now.state==3)||(now.state==2))||(now.state==5))))&& !((((int)now.Bluetooth)==0)))||(( !( !((((int)now.Airplane_mode)==1)))&& !((((now.state==3)||(now.state==2))||(now.state==5))))&& !((((int)now.Wifi)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - _spin_nvr.tmp:22 - [((!(!((Airplane_mode==1)))&&!((Bluetooth==0))))] (0:0:0 - 1) */
		
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
		reached[2][5] = 1;
		if (!(( !( !((((int)now.Airplane_mode)==1)))&& !((((int)now.Bluetooth)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 11 - _spin_nvr.tmp:27 - [(!((Wifi==0)))] (0:0:0 - 1) */
		
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
		reached[2][11] = 1;
		if (!( !((((int)now.Wifi)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 13 - _spin_nvr.tmp:28 - [((!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF)))&&!((Wifi==0))))] (0:0:0 - 1) */
		
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
		reached[2][13] = 1;
		if (!(( !((((now.state==3)||(now.state==2))||(now.state==5)))&& !((((int)now.Wifi)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 17 - _spin_nvr.tmp:32 - [(!((Bluetooth==0)))] (0:0:0 - 1) */
		
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
		reached[2][17] = 1;
		if (!( !((((int)now.Bluetooth)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 19 - _spin_nvr.tmp:33 - [((!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF)))&&!((Bluetooth==0))))] (0:0:0 - 1) */
		
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
		reached[2][19] = 1;
		if (!(( !((((now.state==3)||(now.state==2))||(now.state==5)))&& !((((int)now.Bluetooth)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 24 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1) */
		
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
		reached[2][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req1 */
	case 11: /* STATE 1 - _spin_nvr.tmp:3 - [(((!(!((state==Setting)))&&!(((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changeBluetoothOFF))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=Setting))))] (0:0:0 - 1) */
		
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
		if (!((( !( !((now.state==8)))&& !(((((((now.state==7)||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))))&& !((now.state!=8)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 3 - _spin_nvr.tmp:4 - [((!(!((state==Setting)))&&!((state!=Setting))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==8)))&& !((now.state!=8)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 9 - _spin_nvr.tmp:9 - [((!(((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changeBluetoothOFF))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported9)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][9] = 1;
		if (!(( !(((((((now.state==7)||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2)))&& !((now.state!=8)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 13 - _spin_nvr.tmp:13 - [((!(((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changeBluetoothOFF))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))] (0:0:0 - 1) */
		
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
		if (!(( !(((((((now.state==7)||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2)))&& !((now.state!=8)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 15 - _spin_nvr.tmp:14 - [(!((state!=Setting)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported15)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][15] = 1;
		if (!( !((now.state!=8))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 19 - _spin_nvr.tmp:16 - [-end-] (0:0:0 - 1) */
		
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
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC vm */
	case 17: /* STATE 1 - test4.pml:24 - [((state==Setting))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 2 - test4.pml:26 - [((Airplane_mode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.Airplane_mode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 3 - test4.pml:26 - [Airplane_mode = 1] (0:101:5 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 1;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[2] = 1(101, 4, 101) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[2]);
		now.action[2] = 1;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: action[0] = 1(101, 5, 101) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: action[1] = 1(101, 6, 101) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeAirplane_modeON(101, 7, 101) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[4] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 101) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 20: /* STATE 9 - test4.pml:27 - [((Airplane_mode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.Airplane_mode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 10 - test4.pml:27 - [Airplane_mode = 0] (0:101:3 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 0;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[2] = 1(101, 11, 101) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[2]);
		now.action[2] = 1;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = changeAirplane_modeOFF(101, 12, 101) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 101) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 22: /* STATE 14 - test4.pml:28 - [(((Bluetooth==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((((int)now.Bluetooth)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 15 - test4.pml:28 - [Bluetooth = 1] (0:101:3 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 1;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(101, 16, 101) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothON(101, 17, 101) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 101) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 24: /* STATE 19 - test4.pml:29 - [((Bluetooth==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.Bluetooth)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 20 - test4.pml:29 - [Bluetooth = 0] (0:101:3 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(101, 21, 101) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothOFF(101, 22, 101) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 101) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 26: /* STATE 24 - test4.pml:30 - [(((Wifi==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((int)now.Wifi)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 25 - test4.pml:30 - [Wifi = 1] (0:101:3 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 1;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(101, 26, 101) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiON(101, 27, 101) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 6;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 101) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: /* STATE 29 - test4.pml:31 - [((Wifi==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.Wifi)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 30 - test4.pml:31 - [Wifi = 0] (0:101:3 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(101, 31, 101) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiOFF(101, 32, 101) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 35, 101) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 30: /* STATE 36 - test4.pml:35 - [((state==MainScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 37 - test4.pml:37 - [state = MainScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 41 - test4.pml:43 - [((state==changeBluetoothON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 42 - test4.pml:45 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 43 - test4.pml:45 - [action[1] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(101, 44, 101) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 47, 101) */
		reached[0][47] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 35: /* STATE 48 - test4.pml:47 - [((state==changeWifiON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][48] = 1;
		if (!((now.state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 49 - test4.pml:49 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 50 - test4.pml:49 - [action[0] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(101, 51, 101) */
		reached[0][51] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 54, 101) */
		reached[0][54] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 38: /* STATE 55 - test4.pml:51 - [((state==changeBluetoothOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 56 - test4.pml:53 - [(((action[2]==1)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][56] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 57 - test4.pml:53 - [action[1] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][57] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeAirplane_modeON(101, 58, 101) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 65, 101) */
		reached[0][65] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 41: /* STATE 60 - test4.pml:54 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][60] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 61 - test4.pml:54 - [action[1] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(101, 62, 101) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 65, 101) */
		reached[0][65] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 43: /* STATE 66 - test4.pml:56 - [((state==changeAirplane_modeOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][66] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 67 - test4.pml:58 - [((action[2]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][67] = 1;
		if (!((((int)now.action[2])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 68 - test4.pml:58 - [action[2] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(101, 69, 101) */
		reached[0][69] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 72, 101) */
		reached[0][72] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 46: /* STATE 73 - test4.pml:60 - [((state==changeAirplane_modeON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][73] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 74 - test4.pml:62 - [((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][74] = 1;
		if (!((((((int)now.action[2])==1)&&(((int)now.action[0])==0))&&(((int)now.action[1])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 75 - test4.pml:62 - [action[2] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][75] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(101, 76, 101) */
		reached[0][76] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 89, 101) */
		reached[0][89] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 49: /* STATE 78 - test4.pml:63 - [((action[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		if (!((((int)now.action[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 79 - test4.pml:63 - [Wifi = 0] (0:101:3 - 1) */
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(101, 80, 101) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiOFF(101, 81, 101) */
		reached[0][81] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 89, 101) */
		reached[0][89] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 51: /* STATE 83 - test4.pml:64 - [((action[1]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][83] = 1;
		if (!((((int)now.action[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 84 - test4.pml:64 - [Bluetooth = 0] (0:101:3 - 1) */
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(101, 85, 101) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothOFF(101, 86, 101) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 89, 101) */
		reached[0][89] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 53: /* STATE 90 - test4.pml:66 - [((state==changeWifiOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][90] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 91 - test4.pml:68 - [(((action[2]==1)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][91] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 92 - test4.pml:68 - [action[0] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeAirplane_modeON(101, 93, 101) */
		reached[0][93] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 100, 101) */
		reached[0][100] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 56: /* STATE 95 - test4.pml:69 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][95] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: /* STATE 96 - test4.pml:69 - [action[0] = 0] (0:101:2 - 1) */
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(101, 97, 101) */
		reached[0][97] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 100, 101) */
		reached[0][100] = 1;
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 58: /* STATE 104 - test4.pml:72 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][104] = 1;
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

