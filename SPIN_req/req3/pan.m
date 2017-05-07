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

		 /* CLAIM r3 */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!((state==SignIn))||(state==BoPo_MainSreen)))] (0:0:0 - 1) */
		
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
		if (!(( !((now.state==6))||(now.state==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [((state==changeParamUserName))] (0:0:0 - 1) */
		
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
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - _spin_nvr.tmp:5 - [((!(!((state==SignIn)))&&(state==BoPo_MainSreen)))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==6)))&&(now.state==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 7 - _spin_nvr.tmp:6 - [((!(!((state==SignIn)))&&(state==changeParamUserName)))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==6)))&&(now.state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 11 - _spin_nvr.tmp:10 - [((!((state==SignIn))||(state==BoPo_MainSreen)))] (0:0:0 - 1) */
		
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
		if (!(( !((now.state==6))||(now.state==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 13 - _spin_nvr.tmp:11 - [((state==changeParamUserName))] (0:0:0 - 1) */
		
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
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 15 - _spin_nvr.tmp:12 - [((!(!((state==SignIn)))&&(state==BoPo_MainSreen)))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==6)))&&(now.state==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 17 - _spin_nvr.tmp:13 - [((!(!((state==SignIn)))&&(state==changeParamUserName)))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==6)))&&(now.state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 21 - _spin_nvr.tmp:17 - [((state==BoPo_MainSreen))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported21 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported21)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported21 = 0;
			if (verbose && !reported21)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][21] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 23 - _spin_nvr.tmp:18 - [((state==changeParamUserName))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported23)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][23] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 25 - _spin_nvr.tmp:19 - [((!(!((state==SignIn)))&&(state==BoPo_MainSreen)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported25)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][25] = 1;
		if (!(( !( !((now.state==6)))&&(now.state==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 27 - _spin_nvr.tmp:20 - [((!(!((state==SignIn)))&&(state==changeParamUserName)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported27)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][27] = 1;
		if (!(( !( !((now.state==6)))&&(now.state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 31 - _spin_nvr.tmp:24 - [((state==BoPo_MainSreen))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported31)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][31] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 33 - _spin_nvr.tmp:25 - [((state==changeParamUserName))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported33)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][33] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 37 - _spin_nvr.tmp:29 - [((state==BoPo_MainSreen))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported37 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported37)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported37 = 0;
			if (verbose && !reported37)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][37] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 39 - _spin_nvr.tmp:30 - [((state==changeParamUserName))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported39)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][39] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 41 - _spin_nvr.tmp:31 - [(((state==BoPo_MainSreen)&&(state==changeParamUserName)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported41)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][41] = 1;
		if (!(((now.state==7)&&(now.state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 43 - _spin_nvr.tmp:32 - [((!(!((state==SignIn)))&&(state==BoPo_MainSreen)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported43)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][43] = 1;
		if (!(( !( !((now.state==6)))&&(now.state==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 45 - _spin_nvr.tmp:33 - [(((!(!((state==SignIn)))&&(state==BoPo_MainSreen))&&(state==changeParamUserName)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported45 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported45)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported45 = 0;
			if (verbose && !reported45)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][45] = 1;
		if (!((( !( !((now.state==6)))&&(now.state==7))&&(now.state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 47 - _spin_nvr.tmp:34 - [((!(!((state==SignIn)))&&(state==changeParamUserName)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported47 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported47)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported47 = 0;
			if (verbose && !reported47)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][47] = 1;
		if (!(( !( !((now.state==6)))&&(now.state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 51 - _spin_nvr.tmp:38 - [((state==BoPo_MainSreen))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported51 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported51)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported51 = 0;
			if (verbose && !reported51)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][51] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 53 - _spin_nvr.tmp:39 - [((state==changeParamUserName))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported53 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported53)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported53 = 0;
			if (verbose && !reported53)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][53] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 58 - _spin_nvr.tmp:43 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported58)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][58] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC vm */
	case 26: /* STATE 1 - req3.pml:11 - [((state==SignIn))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 2 - req3.pml:13 - [state = enterWuser] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 4 - req3.pml:14 - [state = enterWemail] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 8 - req3.pml:16 - [((state==enterWuser))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 9 - req3.pml:18 - [state = BoPo_MainSreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 13 - req3.pml:20 - [((state==enterWemail))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 14 - req3.pml:22 - [state = changeParamEmail] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 4;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 18 - req3.pml:27 - [((state==changeParamUserName))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 19 - req3.pml:29 - [username = 1] (0:35:2 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)username);
		username = 1;
#ifdef VAR_RANGES
		logval("username", ((int)username));
#endif
		;
		/* merge: state = BoPo_MainSreen(35, 20, 35) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 23, 35) */
		reached[0][23] = 1;
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 35: /* STATE 24 - req3.pml:32 - [((state==changeParamEmail))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 25 - req3.pml:34 - [email = 1] (0:35:2 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)email);
		email = 1;
#ifdef VAR_RANGES
		logval("email", ((int)email));
#endif
		;
		/* merge: state = BoPo_MainSreen(35, 26, 35) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 7;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: .(goto)(0, 29, 35) */
		reached[0][29] = 1;
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 37: /* STATE 30 - req3.pml:36 - [((state==BoPo_MainSreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 31 - req3.pml:38 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 38 - req3.pml:42 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
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

