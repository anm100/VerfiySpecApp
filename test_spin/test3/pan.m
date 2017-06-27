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

		 /* CLAIM req1 */
	case 3: /* STATE 1 - _spin_nvr.tmp:24 - [(((!(!((state==Setting)))&&!(((((((state==changeBluetoothON)&&(state==changeWifiON))&&(state==changeBluetoothOFF))&&(state==changeAirplane_modeOFF))&&(state==changeAirplane_modeON))&&(state==changeWifiOFF))))&&!(((state!=Setting)&&((((((state!=changeBluetoothON)&&(state!=changeWifiON))&&(state!=changeBluetoothOFF))&&(state!=changeAirplane_modeOFF))&&(state!=changeAirplane_modeON))&&(state!=changeWifiOFF))))))] (0:0:0 - 1) */
		
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
		if (!((( !( !((now.state==8)))&& !(((((((now.state==6)&&(now.state==5))&&(now.state==4))&&(now.state==3))&&(now.state==2))&&(now.state==1))))&& !(((now.state!=8)&&((((((now.state!=6)&&(now.state!=5))&&(now.state!=4))&&(now.state!=3))&&(now.state!=2))&&(now.state!=1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:25 - [((!(!((state==Setting)))&&!(((state!=Setting)&&((((((state!=changeBluetoothON)&&(state!=changeWifiON))&&(state!=changeBluetoothOFF))&&(state!=changeAirplane_modeOFF))&&(state!=changeAirplane_modeON))&&(state!=changeWifiOFF))))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==8)))&& !(((now.state!=8)&&((((((now.state!=6)&&(now.state!=5))&&(now.state!=4))&&(now.state!=3))&&(now.state!=2))&&(now.state!=1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 9 - _spin_nvr.tmp:30 - [((!(((((((state==changeBluetoothON)&&(state==changeWifiON))&&(state==changeBluetoothOFF))&&(state==changeAirplane_modeOFF))&&(state==changeAirplane_modeON))&&(state==changeWifiOFF)))&&!(((state!=Setting)&&((((((state!=changeBluetoothON)&&(state!=changeWifiON))&&(state!=changeBluetoothOFF))&&(state!=changeAirplane_modeOFF))&&(state!=changeAirplane_modeON))&&(state!=changeWifiOFF))))))] (0:0:0 - 1) */
		
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
		reached[2][9] = 1;
		if (!(( !(((((((now.state==6)&&(now.state==5))&&(now.state==4))&&(now.state==3))&&(now.state==2))&&(now.state==1)))&& !(((now.state!=8)&&((((((now.state!=6)&&(now.state!=5))&&(now.state!=4))&&(now.state!=3))&&(now.state!=2))&&(now.state!=1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 13 - _spin_nvr.tmp:34 - [((!(((((((state==changeBluetoothON)&&(state==changeWifiON))&&(state==changeBluetoothOFF))&&(state==changeAirplane_modeOFF))&&(state==changeAirplane_modeON))&&(state==changeWifiOFF)))&&!(((state!=Setting)&&((((((state!=changeBluetoothON)&&(state!=changeWifiON))&&(state!=changeBluetoothOFF))&&(state!=changeAirplane_modeOFF))&&(state!=changeAirplane_modeON))&&(state!=changeWifiOFF))))))] (0:0:0 - 1) */
		
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
		if (!(( !(((((((now.state==6)&&(now.state==5))&&(now.state==4))&&(now.state==3))&&(now.state==2))&&(now.state==1)))&& !(((now.state!=8)&&((((((now.state!=6)&&(now.state!=5))&&(now.state!=4))&&(now.state!=3))&&(now.state!=2))&&(now.state!=1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 15 - _spin_nvr.tmp:35 - [(!(((state!=Setting)&&((((((state!=changeBluetoothON)&&(state!=changeWifiON))&&(state!=changeBluetoothOFF))&&(state!=changeAirplane_modeOFF))&&(state!=changeAirplane_modeON))&&(state!=changeWifiOFF)))))] (0:0:0 - 1) */
		
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
		reached[2][15] = 1;
		if (!( !(((now.state!=8)&&((((((now.state!=6)&&(now.state!=5))&&(now.state!=4))&&(now.state!=3))&&(now.state!=2))&&(now.state!=1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 19 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1) */
		
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
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req8 */
	case 9: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((Airplane_mode==1)))&&!((Wifi==0))))] (0:0:0 - 1) */
		
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
	case 10: /* STATE 3 - _spin_nvr.tmp:4 - [((((!(!((Airplane_mode==1)))&&!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF))))&&!((Bluetooth==0)))||((!(!((Airplane_mode==1)))&&!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF))))&&!((Wifi==0)))))] (0:0:0 - 1) */
		
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
		if (!(((( !( !((((int)now.Airplane_mode)==1)))&& !((((now.state==2)||(now.state==1))||(now.state==4))))&& !((((int)now.Bluetooth)==0)))||(( !( !((((int)now.Airplane_mode)==1)))&& !((((now.state==2)||(now.state==1))||(now.state==4))))&& !((((int)now.Wifi)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 5 - _spin_nvr.tmp:5 - [((!(!((Airplane_mode==1)))&&!((Bluetooth==0))))] (0:0:0 - 1) */
		
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
	case 12: /* STATE 11 - _spin_nvr.tmp:10 - [(!((Wifi==0)))] (0:0:0 - 1) */
		
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
	case 13: /* STATE 13 - _spin_nvr.tmp:11 - [((!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF)))&&!((Wifi==0))))] (0:0:0 - 1) */
		
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
		if (!(( !((((now.state==2)||(now.state==1))||(now.state==4)))&& !((((int)now.Wifi)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 17 - _spin_nvr.tmp:15 - [(!((Bluetooth==0)))] (0:0:0 - 1) */
		
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
	case 15: /* STATE 19 - _spin_nvr.tmp:16 - [((!((((state==changeAirplane_modeON)||(state==changeWifiOFF))||(state==changeBluetoothOFF)))&&!((Bluetooth==0))))] (0:0:0 - 1) */
		
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
		if (!(( !((((now.state==2)||(now.state==1))||(now.state==4)))&& !((((int)now.Bluetooth)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 24 - _spin_nvr.tmp:20 - [-end-] (0:0:0 - 1) */
		
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
	case 17: /* STATE 1 - ex.pml:27 - [((state==Setting))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 2 - ex.pml:29 - [((Airplane_mode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.Airplane_mode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 3 - ex.pml:29 - [Airplane_mode = 1] (0:102:5 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 1;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[2] = 1(102, 4, 102) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[2]);
		now.action[2] = 1;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: action[0] = 1(102, 5, 102) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: action[1] = 1(102, 6, 102) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeAirplane_modeON(102, 7, 102) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[4] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 102) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 20: /* STATE 9 - ex.pml:30 - [((Airplane_mode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.Airplane_mode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 10 - ex.pml:30 - [Airplane_mode = 0] (0:102:3 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Airplane_mode);
		now.Airplane_mode = 0;
#ifdef VAR_RANGES
		logval("Airplane_mode", ((int)now.Airplane_mode));
#endif
		;
		/* merge: action[2] = 1(102, 11, 102) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[2]);
		now.action[2] = 1;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = changeAirplane_modeOFF(102, 12, 102) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 102) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 22: /* STATE 14 - ex.pml:31 - [(((Bluetooth==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((((int)now.Bluetooth)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 15 - ex.pml:31 - [Bluetooth = 1] (0:102:3 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 1;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(102, 16, 102) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothON(102, 17, 102) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 6;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 102) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 24: /* STATE 19 - ex.pml:32 - [((Bluetooth==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.Bluetooth)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 20 - ex.pml:32 - [Bluetooth = 0] (0:102:3 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(102, 21, 102) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothOFF(102, 22, 102) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 102) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 26: /* STATE 24 - ex.pml:33 - [(((Wifi==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((int)now.Wifi)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 25 - ex.pml:33 - [Wifi = 1] (0:102:3 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 1;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(102, 26, 102) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiON(102, 27, 102) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 5;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 102) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: /* STATE 29 - ex.pml:34 - [((Wifi==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.Wifi)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 30 - ex.pml:34 - [Wifi = 0] (0:102:3 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: action[0] = 1(102, 31, 102) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[0]);
		now.action[0] = 1;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeWifiOFF(102, 32, 102) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 37, 102) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 30: /* STATE 34 - ex.pml:35 - [state = LoginScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 38 - ex.pml:37 - [((state==LoginScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 39 - ex.pml:39 - [state = LoginScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 43 - ex.pml:45 - [((state==changeBluetoothON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 44 - ex.pml:47 - [((action[1]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		if (!((((int)now.action[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 45 - ex.pml:47 - [action[1] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(102, 46, 102) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 49, 102) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 36: /* STATE 50 - ex.pml:49 - [((state==changeWifiON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 51 - ex.pml:51 - [((action[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		if (!((((int)now.action[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 52 - ex.pml:51 - [action[0] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(102, 53, 102) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 56, 102) */
		reached[0][56] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 39: /* STATE 57 - ex.pml:53 - [((state==changeBluetoothOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][57] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 58 - ex.pml:55 - [(((action[2]==1)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][58] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 59 - ex.pml:55 - [action[1] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeAirplane_modeON(102, 60, 102) */
		reached[0][60] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 67, 102) */
		reached[0][67] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 42: /* STATE 62 - ex.pml:56 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][62] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 63 - ex.pml:56 - [action[1] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[1]);
		now.action[1] = 0;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = Setting(102, 64, 102) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 67, 102) */
		reached[0][67] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 44: /* STATE 68 - ex.pml:58 - [((state==changeAirplane_modeOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 69 - ex.pml:60 - [((action[2]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][69] = 1;
		if (!((((int)now.action[2])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 70 - ex.pml:60 - [action[2] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(102, 71, 102) */
		reached[0][71] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 74, 102) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 47: /* STATE 75 - ex.pml:62 - [((state==changeAirplane_modeON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][75] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 76 - ex.pml:64 - [((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][76] = 1;
		if (!((((((int)now.action[2])==1)&&(((int)now.action[0])==0))&&(((int)now.action[1])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 77 - ex.pml:64 - [action[2] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][77] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[2]);
		now.action[2] = 0;
#ifdef VAR_RANGES
		logval("action[2]", ((int)now.action[2]));
#endif
		;
		/* merge: state = Setting(102, 78, 102) */
		reached[0][78] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 90, 102) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 50: /* STATE 80 - ex.pml:65 - [(((action[2]==1)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][80] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 81 - ex.pml:65 - [Wifi = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][81] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.Wifi);
		now.Wifi = 0;
#ifdef VAR_RANGES
		logval("Wifi", ((int)now.Wifi));
#endif
		;
		/* merge: state = changeWifiOFF(102, 82, 102) */
		reached[0][82] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 90, 102) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 52: /* STATE 84 - ex.pml:66 - [(((action[2]==1)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][84] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: /* STATE 85 - ex.pml:66 - [Bluetooth = 0] (0:102:3 - 1) */
		IfNotBlocked
		reached[0][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.Bluetooth);
		now.Bluetooth = 0;
#ifdef VAR_RANGES
		logval("Bluetooth", ((int)now.Bluetooth));
#endif
		;
		/* merge: action[1] = 1(102, 86, 102) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.action[1]);
		now.action[1] = 1;
#ifdef VAR_RANGES
		logval("action[1]", ((int)now.action[1]));
#endif
		;
		/* merge: state = changeBluetoothOFF(102, 87, 102) */
		reached[0][87] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 90, 102) */
		reached[0][90] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 54: /* STATE 91 - ex.pml:68 - [((state==changeWifiOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][91] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 92 - ex.pml:70 - [(((action[2]==1)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][92] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: /* STATE 93 - ex.pml:70 - [action[0] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = changeAirplane_modeON(102, 94, 102) */
		reached[0][94] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 101, 102) */
		reached[0][101] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 57: /* STATE 96 - ex.pml:71 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][96] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 97 - ex.pml:71 - [action[0] = 0] (0:102:2 - 1) */
		IfNotBlocked
		reached[0][97] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.action[0]);
		now.action[0] = 0;
#ifdef VAR_RANGES
		logval("action[0]", ((int)now.action[0]));
#endif
		;
		/* merge: state = Setting(102, 98, 102) */
		reached[0][98] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 8;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 101, 102) */
		reached[0][101] = 1;
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 59: /* STATE 105 - ex.pml:74 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][105] = 1;
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

