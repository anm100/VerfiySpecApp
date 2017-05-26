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
		reached[0][1] = 1;
		if (!(( !( !((((int)now.airplaneMode)==1)))&& !((((int)now.wifiParam)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [((((!(!((airplaneMode==1)))&&!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam))))&&!((bluParam==0)))||((!(!((airplaneMode==1)))&&!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam))))&&!((wifiParam==0)))))] (0:0:0 - 1) */
		
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
		reached[0][3] = 1;
		if (!(((( !( !((((int)now.airplaneMode)==1)))&& !((((now.state==3)||(now.state==2))||(now.state==1))))&& !((((int)now.bluParam)==0)))||(( !( !((((int)now.airplaneMode)==1)))&& !((((now.state==3)||(now.state==2))||(now.state==1))))&& !((((int)now.wifiParam)==0))))))
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
		reached[0][5] = 1;
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
		reached[0][11] = 1;
		if (!( !((((int)now.wifiParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 13 - _spin_nvr.tmp:11 - [((!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam)))&&!((wifiParam==0))))] (0:0:0 - 1) */
		
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
		reached[0][13] = 1;
		if (!(( !((((now.state==3)||(now.state==2))||(now.state==1)))&& !((((int)now.wifiParam)==0)))))
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
		reached[0][17] = 1;
		if (!( !((((int)now.bluParam)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 19 - _spin_nvr.tmp:16 - [((!((((state==ChangeAirplaneMode)||(state==ChangeWifi))||(state==changebluParam)))&&!((bluParam==0))))] (0:0:0 - 1) */
		
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
		reached[0][19] = 1;
		if (!(( !((((now.state==3)||(now.state==2))||(now.state==1)))&& !((((int)now.bluParam)==0)))))
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
		reached[0][24] = 1;
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

