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

		 /* CLAIM r8 */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((airplaneMode==1)))&&!((wifiParam==0))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((((int)now.airplaneMode)==1)))&& !((((int)now.wifiParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [((((!(!((airplaneMode==1)))&&!((bluParam==0)))&&!((state==ChangeAirplaneMode)))||((!(!((airplaneMode==1)))&&!((state==ChangeAirplaneMode)))&&!((wifiParam==0)))))] (0:0:0 - 1) */
		
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
		if (!(((( !( !((((int)now.airplaneMode)==1)))&& !((((int)now.bluParam)==0)))&& !((now.state==3)))||(( !( !((((int)now.airplaneMode)==1)))&& !((now.state==3)))&& !((((int)now.wifiParam)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - _spin_nvr.tmp:5 - [((!(!((airplaneMode==1)))&&!((bluParam==0))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((((int)now.airplaneMode)==1)))&& !((((int)now.bluParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 11 - _spin_nvr.tmp:10 - [(!((wifiParam==0)))] (0:0:0 - 1) */
		
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
		if (!( !((((int)now.wifiParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 13 - _spin_nvr.tmp:11 - [((!((state==ChangeAirplaneMode))&&!((wifiParam==0))))] (0:0:0 - 1) */
		
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
		if (!(( !((now.state==3))&& !((((int)now.wifiParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 17 - _spin_nvr.tmp:15 - [(!((bluParam==0)))] (0:0:0 - 1) */
		
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
		if (!( !((((int)now.bluParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 19 - _spin_nvr.tmp:16 - [((!((bluParam==0))&&!((state==ChangeAirplaneMode))))] (0:0:0 - 1) */
		
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
		if (!(( !((((int)now.bluParam)==0))&& !((now.state==3)))))
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

		 /* PROC vm1 */
	case 11: /* STATE 1 - example.pml:22 - [((state==LoginScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==28)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 2 - example.pml:24 - [((airplaneMode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.airplaneMode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 3 - example.pml:24 - [state = ChangeAirplaneMode] (0:47:3 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: airplaneMode = 1(47, 4, 47) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.airplaneMode);
		now.airplaneMode = 1;
#ifdef VAR_RANGES
		logval("airplaneMode", ((int)now.airplaneMode));
#endif
		;
		/* merge: actions[0] = 1(47, 5, 47) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.actions[0]);
		now.actions[0] = 1;
#ifdef VAR_RANGES
		logval("actions[0]", ((int)now.actions[0]));
#endif
		;
		/* merge: .(goto)(0, 11, 47) */
		reached[0][11] = 1;
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 14: /* STATE 7 - example.pml:25 - [((airplaneMode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((int)now.airplaneMode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 8 - example.pml:25 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 12 - example.pml:28 - [((state==ChangeAirplaneMode))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 13 - example.pml:30 - [((airplaneMode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)now.airplaneMode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 14 - example.pml:30 - [state = ChangeWifi] (0:47:3 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: wifiParam = 0(47, 15, 47) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.wifiParam);
		now.wifiParam = 0;
#ifdef VAR_RANGES
		logval("wifiParam", ((int)now.wifiParam));
#endif
		;
		/* merge: actions[1] = 1(47, 16, 47) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.actions[1]);
		now.actions[1] = 1;
#ifdef VAR_RANGES
		logval("actions[1]", ((int)now.actions[1]));
#endif
		;
		/* merge: .(goto)(0, 19, 47) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 19: /* STATE 20 - example.pml:33 - [((state==ChangeWifi))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 21 - example.pml:35 - [(((actions[0]==1)&&(actions[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][21] = 1;
		if (!(((((int)now.actions[0])==1)&&(((int)now.actions[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 22 - example.pml:35 - [state = changebluParam] (0:47:4 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: bluParam = 0(47, 23, 47) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.bluParam);
		now.bluParam = 0;
#ifdef VAR_RANGES
		logval("bluParam", ((int)now.bluParam));
#endif
		;
		/* merge: actions[1] = 0(47, 24, 47) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.actions[1]);
		now.actions[1] = 0;
#ifdef VAR_RANGES
		logval("actions[1]", ((int)now.actions[1]));
#endif
		;
		/* merge: actions[2] = 1(47, 25, 47) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.actions[2]);
		now.actions[2] = 1;
#ifdef VAR_RANGES
		logval("actions[2]", ((int)now.actions[2]));
#endif
		;
		/* merge: .(goto)(0, 34, 47) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 22: /* STATE 27 - example.pml:36 - [((((actions[0]==0)&&(actions[1]==1))&&(wifiParam==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((((int)now.actions[0])==0)&&(((int)now.actions[1])==1))&&(((int)now.wifiParam)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 28 - example.pml:36 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 30 - example.pml:37 - [((((actions[0]==0)&&(actions[1]==1))&&(wifiParam==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((((int)now.actions[0])==0)&&(((int)now.actions[1])==1))&&(((int)now.wifiParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 31 - example.pml:37 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 35 - example.pml:40 - [((state==changebluParam))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][35] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 36 - example.pml:42 - [((((actions[0]==1)&&(actions[1]==1))&&(actions[2]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		if (!((((((int)now.actions[0])==1)&&(((int)now.actions[1])==1))&&(((int)now.actions[2])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 37 - example.pml:42 - [state = LoginScreen] (0:47:3 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 28;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: actions[0] = 0(47, 38, 47) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.actions[0]);
		now.actions[0] = 0;
#ifdef VAR_RANGES
		logval("actions[0]", ((int)now.actions[0]));
#endif
		;
		/* merge: actions[2] = 0(47, 39, 47) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.actions[2]);
		now.actions[2] = 0;
#ifdef VAR_RANGES
		logval("actions[2]", ((int)now.actions[2]));
#endif
		;
		/* merge: .(goto)(0, 42, 47) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 29: /* STATE 43 - example.pml:45 - [((state==CreateNewEvent))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 44 - example.pml:45 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 50 - example.pml:47 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
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

