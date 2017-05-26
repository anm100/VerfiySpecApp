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
	case 3: /* STATE 1 - _spin_nvr.tmp:22 - [((!(!((airplaneMode==1)))&&!((wifiParam==0))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((((int)now.airplaneMode)==1)))&& !((((int)now.wifiParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:23 - [((((!(!((airplaneMode==1)))&&!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam))))&&!((bluParam==0)))||((!(!((airplaneMode==1)))&&!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam))))&&!((wifiParam==0)))))] (0:0:0 - 1) */
		
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
		if (!(((( !( !((((int)now.airplaneMode)==1)))&& !((((now.state==4)||(now.state==3))||(now.state==2))))&& !((((int)now.bluParam)==0)))||(( !( !((((int)now.airplaneMode)==1)))&& !((((now.state==4)||(now.state==3))||(now.state==2))))&& !((((int)now.wifiParam)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - _spin_nvr.tmp:24 - [((!(!((airplaneMode==1)))&&!((bluParam==0))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((((int)now.airplaneMode)==1)))&& !((((int)now.bluParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 11 - _spin_nvr.tmp:29 - [(!((wifiParam==0)))] (0:0:0 - 1) */
		
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
		if (!( !((((int)now.wifiParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 13 - _spin_nvr.tmp:30 - [((!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam)))&&!((wifiParam==0))))] (0:0:0 - 1) */
		
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
		if (!(( !((((now.state==4)||(now.state==3))||(now.state==2)))&& !((((int)now.wifiParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 17 - _spin_nvr.tmp:34 - [(!((bluParam==0)))] (0:0:0 - 1) */
		
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
		if (!( !((((int)now.bluParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 19 - _spin_nvr.tmp:35 - [((!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam)))&&!((bluParam==0))))] (0:0:0 - 1) */
		
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
		if (!(( !((((now.state==4)||(now.state==3))||(now.state==2)))&& !((((int)now.bluParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 24 - _spin_nvr.tmp:39 - [-end-] (0:0:0 - 1) */
		
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

		 /* CLAIM r7 */
	case 11: /* STATE 1 - _spin_nvr.tmp:3 - [(!(!((wifiParam==1))))] (0:0:0 - 1) */
		
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
		if (!( !( !((((int)now.wifiParam)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 7 - _spin_nvr.tmp:8 - [((wifiParam==0))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported7)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][7] = 1;
		if (!((((int)now.wifiParam)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 9 - _spin_nvr.tmp:9 - [((state!=ChangeWifi))] (0:0:0 - 1) */
		
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
		if (!((now.state!=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 13 - _spin_nvr.tmp:13 - [((wifiParam==0))] (0:0:0 - 1) */
		
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
		if (!((((int)now.wifiParam)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 15 - _spin_nvr.tmp:14 - [((state!=ChangeWifi))] (0:0:0 - 1) */
		
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
		if (!((now.state!=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 20 - _spin_nvr.tmp:18 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported20)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC vm1 */
	case 17: /* STATE 1 - req8_error.pml:24 - [((state==LoginScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==29)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 2 - req8_error.pml:26 - [((airplaneMode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.airplaneMode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 3 - req8_error.pml:26 - [state = ChangeAirplaneMode] (0:46:3 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: airplaneMode = 1(46, 4, 46) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.airplaneMode);
		now.airplaneMode = 1;
#ifdef VAR_RANGES
		logval("airplaneMode", ((int)now.airplaneMode));
#endif
		;
		/* merge: actions[0] = 1(46, 5, 46) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.actions[0]);
		now.actions[0] = 1;
#ifdef VAR_RANGES
		logval("actions[0]", ((int)now.actions[0]));
#endif
		;
		/* merge: .(goto)(0, 11, 46) */
		reached[0][11] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[0][47] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 20: /* STATE 7 - req8_error.pml:27 - [((airplaneMode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((int)now.airplaneMode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 8 - req8_error.pml:27 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 12 - req8_error.pml:30 - [((state==ChangeAirplaneMode))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 13 - req8_error.pml:32 - [((airplaneMode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)now.airplaneMode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 14 - req8_error.pml:32 - [state = ChangeWifi] (0:46:3 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: wifiParam = 0(46, 15, 46) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.wifiParam);
		now.wifiParam = 0;
#ifdef VAR_RANGES
		logval("wifiParam", ((int)now.wifiParam));
#endif
		;
		/* merge: actions[1] = 1(46, 16, 46) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.actions[1]);
		now.actions[1] = 1;
#ifdef VAR_RANGES
		logval("actions[1]", ((int)now.actions[1]));
#endif
		;
		/* merge: .(goto)(0, 19, 46) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[0][47] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 25: /* STATE 20 - req8_error.pml:35 - [((state==ChangeWifi))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 21 - req8_error.pml:37 - [(((actions[0]==1)&&(actions[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][21] = 1;
		if (!(((((int)now.actions[0])==1)&&(((int)now.actions[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 22 - req8_error.pml:37 - [state = changebluParam] (0:46:4 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: bluParam = 1(46, 23, 46) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.bluParam);
		now.bluParam = 1;
#ifdef VAR_RANGES
		logval("bluParam", ((int)now.bluParam));
#endif
		;
		/* merge: actions[1] = 0(46, 24, 46) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.actions[1]);
		now.actions[1] = 0;
#ifdef VAR_RANGES
		logval("actions[1]", ((int)now.actions[1]));
#endif
		;
		/* merge: actions[2] = 1(46, 25, 46) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.actions[2]);
		now.actions[2] = 1;
#ifdef VAR_RANGES
		logval("actions[2]", ((int)now.actions[2]));
#endif
		;
		/* merge: .(goto)(0, 34, 46) */
		reached[0][34] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[0][47] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 28: /* STATE 27 - req8_error.pml:38 - [((((actions[0]==0)&&(actions[1]==1))&&(wifiParam==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((((int)now.actions[0])==0)&&(((int)now.actions[1])==1))&&(((int)now.wifiParam)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 28 - req8_error.pml:38 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 30 - req8_error.pml:39 - [((((actions[0]==0)&&(actions[1]==1))&&(wifiParam==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((((int)now.actions[0])==0)&&(((int)now.actions[1])==1))&&(((int)now.wifiParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 31 - req8_error.pml:39 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 35 - req8_error.pml:42 - [((state==changebluParam))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][35] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 36 - req8_error.pml:44 - [((((actions[0]==1)&&(actions[1]==1))&&(actions[2]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		if (!((((((int)now.actions[0])==1)&&(((int)now.actions[1])==1))&&(((int)now.actions[2])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 37 - req8_error.pml:44 - [actions[0] = 0] (0:46:3 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.actions[0]);
		now.actions[0] = 0;
#ifdef VAR_RANGES
		logval("actions[0]", ((int)now.actions[0]));
#endif
		;
		/* merge: actions[2] = 0(46, 38, 46) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.actions[2]);
		now.actions[2] = 0;
#ifdef VAR_RANGES
		logval("actions[2]", ((int)now.actions[2]));
#endif
		;
		/* merge: state = LoginScreen(46, 39, 46) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[2] = now.state;
		now.state = 29;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 42, 46) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[0][47] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 35: /* STATE 43 - req8_error.pml:47 - [((state==CreateNewEvent))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.state==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 44 - req8_error.pml:47 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 49 - req8_error.pml:49 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
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

