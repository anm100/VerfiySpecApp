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

		 /* CLAIM req7_8 */
	case 3: /* STATE 1 - _spin_nvr.tmp:315 - [(!(!((user==2))))] (0:0:0 - 1) */
		
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
		reached[18][1] = 1;
		if (!( !( !((((int)now.user)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:320 - [(((user==3)&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[18][7] = 1;
		if (!(((((int)now.user)==3)&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 9 - _spin_nvr.tmp:321 - [((state!=changeuserNotEmpty))] (0:0:0 - 1) */
		
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
		reached[18][9] = 1;
		if (!((now.state!=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 13 - _spin_nvr.tmp:325 - [(((user==3)&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[18][13] = 1;
		if (!(((((int)now.user)==3)&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 15 - _spin_nvr.tmp:326 - [((state!=changeuserNotEmpty))] (0:0:0 - 1) */
		
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
		reached[18][15] = 1;
		if (!((now.state!=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 20 - _spin_nvr.tmp:330 - [-end-] (0:0:0 - 1) */
		
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
		reached[18][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req7_7 */
	case 9: /* STATE 1 - _spin_nvr.tmp:296 - [(!(!((pass==2))))] (0:0:0 - 1) */
		
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
		reached[17][1] = 1;
		if (!( !( !((((int)now.pass)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 7 - _spin_nvr.tmp:301 - [(((pass==3)&&(state!=changepassNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[17][7] = 1;
		if (!(((((int)now.pass)==3)&&(now.state!=6))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 9 - _spin_nvr.tmp:302 - [((state!=changepassNotEmpty))] (0:0:0 - 1) */
		
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
		reached[17][9] = 1;
		if (!((now.state!=6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 13 - _spin_nvr.tmp:306 - [(((pass==3)&&(state!=changepassNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[17][13] = 1;
		if (!(((((int)now.pass)==3)&&(now.state!=6))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 15 - _spin_nvr.tmp:307 - [((state!=changepassNotEmpty))] (0:0:0 - 1) */
		
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
		reached[17][15] = 1;
		if (!((now.state!=6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 20 - _spin_nvr.tmp:311 - [-end-] (0:0:0 - 1) */
		
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
		reached[17][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req7_6 */
	case 15: /* STATE 1 - _spin_nvr.tmp:277 - [(!(!((Wifi==0))))] (0:0:0 - 1) */
		
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
		reached[16][1] = 1;
		if (!( !( !((((int)now.Wifi)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 7 - _spin_nvr.tmp:282 - [(((Wifi==1)&&(state!=changeWifiON)))] (0:0:0 - 1) */
		
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
		reached[16][7] = 1;
		if (!(((((int)now.Wifi)==1)&&(now.state!=7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 9 - _spin_nvr.tmp:283 - [((state!=changeWifiON))] (0:0:0 - 1) */
		
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
		reached[16][9] = 1;
		if (!((now.state!=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 13 - _spin_nvr.tmp:287 - [(((Wifi==1)&&(state!=changeWifiON)))] (0:0:0 - 1) */
		
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
		reached[16][13] = 1;
		if (!(((((int)now.Wifi)==1)&&(now.state!=7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 15 - _spin_nvr.tmp:288 - [((state!=changeWifiON))] (0:0:0 - 1) */
		
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
		reached[16][15] = 1;
		if (!((now.state!=7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 20 - _spin_nvr.tmp:292 - [-end-] (0:0:0 - 1) */
		
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
		reached[16][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req7_5 */
	case 21: /* STATE 1 - _spin_nvr.tmp:258 - [(!(!((Wifi==1))))] (0:0:0 - 1) */
		
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
		reached[15][1] = 1;
		if (!( !( !((((int)now.Wifi)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 7 - _spin_nvr.tmp:263 - [(((Wifi==0)&&(state!=changeWifiOFF)))] (0:0:0 - 1) */
		
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
		reached[15][7] = 1;
		if (!(((((int)now.Wifi)==0)&&(now.state!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 9 - _spin_nvr.tmp:264 - [((state!=changeWifiOFF))] (0:0:0 - 1) */
		
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
		reached[15][9] = 1;
		if (!((now.state!=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 13 - _spin_nvr.tmp:268 - [(((Wifi==0)&&(state!=changeWifiOFF)))] (0:0:0 - 1) */
		
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
		reached[15][13] = 1;
		if (!(((((int)now.Wifi)==0)&&(now.state!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 15 - _spin_nvr.tmp:269 - [((state!=changeWifiOFF))] (0:0:0 - 1) */
		
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
		reached[15][15] = 1;
		if (!((now.state!=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 20 - _spin_nvr.tmp:273 - [-end-] (0:0:0 - 1) */
		
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
		reached[15][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req7_4 */
	case 27: /* STATE 1 - _spin_nvr.tmp:239 - [(!(!((Bluetooth==0))))] (0:0:0 - 1) */
		
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
		reached[14][1] = 1;
		if (!( !( !((((int)now.Bluetooth)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 7 - _spin_nvr.tmp:244 - [(((Bluetooth==1)&&(state!=changeBluetoothON)))] (0:0:0 - 1) */
		
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
		reached[14][7] = 1;
		if (!(((((int)now.Bluetooth)==1)&&(now.state!=8))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 9 - _spin_nvr.tmp:245 - [((state!=changeBluetoothON))] (0:0:0 - 1) */
		
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
		reached[14][9] = 1;
		if (!((now.state!=8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 13 - _spin_nvr.tmp:249 - [(((Bluetooth==1)&&(state!=changeBluetoothON)))] (0:0:0 - 1) */
		
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
		reached[14][13] = 1;
		if (!(((((int)now.Bluetooth)==1)&&(now.state!=8))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 15 - _spin_nvr.tmp:250 - [((state!=changeBluetoothON))] (0:0:0 - 1) */
		
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
		reached[14][15] = 1;
		if (!((now.state!=8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 20 - _spin_nvr.tmp:254 - [-end-] (0:0:0 - 1) */
		
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
		reached[14][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req7_3 */
	case 33: /* STATE 1 - _spin_nvr.tmp:220 - [(!(!((Bluetooth==1))))] (0:0:0 - 1) */
		
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
		reached[13][1] = 1;
		if (!( !( !((((int)now.Bluetooth)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 7 - _spin_nvr.tmp:225 - [(((Bluetooth==0)&&(state!=changeBluetoothOFF)))] (0:0:0 - 1) */
		
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
		reached[13][7] = 1;
		if (!(((((int)now.Bluetooth)==0)&&(now.state!=5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 9 - _spin_nvr.tmp:226 - [((state!=changeBluetoothOFF))] (0:0:0 - 1) */
		
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
		reached[13][9] = 1;
		if (!((now.state!=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 13 - _spin_nvr.tmp:230 - [(((Bluetooth==0)&&(state!=changeBluetoothOFF)))] (0:0:0 - 1) */
		
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
		reached[13][13] = 1;
		if (!(((((int)now.Bluetooth)==0)&&(now.state!=5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 15 - _spin_nvr.tmp:231 - [((state!=changeBluetoothOFF))] (0:0:0 - 1) */
		
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
		reached[13][15] = 1;
		if (!((now.state!=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 20 - _spin_nvr.tmp:235 - [-end-] (0:0:0 - 1) */
		
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
		reached[13][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req7_2 */
	case 39: /* STATE 1 - _spin_nvr.tmp:201 - [(!(!((Airplane_mode==0))))] (0:0:0 - 1) */
		
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
		reached[12][1] = 1;
		if (!( !( !((((int)now.Airplane_mode)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 7 - _spin_nvr.tmp:206 - [(((Airplane_mode==1)&&(state!=changeAirplane_modeON)))] (0:0:0 - 1) */
		
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
		reached[12][7] = 1;
		if (!(((((int)now.Airplane_mode)==1)&&(now.state!=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 9 - _spin_nvr.tmp:207 - [((state!=changeAirplane_modeON))] (0:0:0 - 1) */
		
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
		reached[12][9] = 1;
		if (!((now.state!=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 13 - _spin_nvr.tmp:211 - [(((Airplane_mode==1)&&(state!=changeAirplane_modeON)))] (0:0:0 - 1) */
		
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
		reached[12][13] = 1;
		if (!(((((int)now.Airplane_mode)==1)&&(now.state!=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 15 - _spin_nvr.tmp:212 - [((state!=changeAirplane_modeON))] (0:0:0 - 1) */
		
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
		reached[12][15] = 1;
		if (!((now.state!=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 20 - _spin_nvr.tmp:216 - [-end-] (0:0:0 - 1) */
		
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
		reached[12][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req7_1 */
	case 45: /* STATE 1 - _spin_nvr.tmp:182 - [(!(!((Airplane_mode==1))))] (0:0:0 - 1) */
		
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
		reached[11][1] = 1;
		if (!( !( !((((int)now.Airplane_mode)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 7 - _spin_nvr.tmp:187 - [(((Airplane_mode==0)&&(state!=changeAirplane_modeOFF)))] (0:0:0 - 1) */
		
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
		reached[11][7] = 1;
		if (!(((((int)now.Airplane_mode)==0)&&(now.state!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 9 - _spin_nvr.tmp:188 - [((state!=changeAirplane_modeOFF))] (0:0:0 - 1) */
		
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
		reached[11][9] = 1;
		if (!((now.state!=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 13 - _spin_nvr.tmp:192 - [(((Airplane_mode==0)&&(state!=changeAirplane_modeOFF)))] (0:0:0 - 1) */
		
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
		reached[11][13] = 1;
		if (!(((((int)now.Airplane_mode)==0)&&(now.state!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 15 - _spin_nvr.tmp:193 - [((state!=changeAirplane_modeOFF))] (0:0:0 - 1) */
		
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
		reached[11][15] = 1;
		if (!((now.state!=3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 20 - _spin_nvr.tmp:197 - [-end-] (0:0:0 - 1) */
		
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
		reached[11][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req6 */
	case 51: /* STATE 1 - _spin_nvr.tmp:173 - [(!((!((state==MainScreen))||((pass==3)&&(user==3)))))] (0:0:0 - 1) */
		
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
		reached[10][1] = 1;
		if (!( !(( !((now.state==9))||((((int)now.pass)==3)&&(((int)now.user)==3))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 8 - _spin_nvr.tmp:178 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported8)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req4_5 */
	case 53: /* STATE 1 - _spin_nvr.tmp:158 - [((!(!(((user==2)||(user==3))))&&((user!=2)&&(user!=3))))] (0:0:0 - 1) */
		
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
		reached[9][1] = 1;
		if (!(( !( !(((((int)now.user)==2)||(((int)now.user)==3))))&&((((int)now.user)!=2)&&(((int)now.user)!=3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 3 - _spin_nvr.tmp:159 - [(!(!(((user==2)||(user==3)))))] (0:0:0 - 1) */
		
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
		reached[9][3] = 1;
		if (!( !( !(((((int)now.user)==2)||(((int)now.user)==3))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 9 - _spin_nvr.tmp:164 - [(((user!=2)&&(user!=3)))] (0:0:0 - 1) */
		
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
		reached[9][9] = 1;
		if (!(((((int)now.user)!=2)&&(((int)now.user)!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: /* STATE 16 - _spin_nvr.tmp:169 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported16)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req4_4 */
	case 57: /* STATE 1 - _spin_nvr.tmp:143 - [((!(!(((pass==2)||(pass==3))))&&((pass!=2)&&(pass!=3))))] (0:0:0 - 1) */
		
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
		reached[8][1] = 1;
		if (!(( !( !(((((int)now.pass)==2)||(((int)now.pass)==3))))&&((((int)now.pass)!=2)&&(((int)now.pass)!=3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 3 - _spin_nvr.tmp:144 - [(!(!(((pass==2)||(pass==3)))))] (0:0:0 - 1) */
		
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
		reached[8][3] = 1;
		if (!( !( !(((((int)now.pass)==2)||(((int)now.pass)==3))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: /* STATE 9 - _spin_nvr.tmp:149 - [(((pass!=2)&&(pass!=3)))] (0:0:0 - 1) */
		
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
		reached[8][9] = 1;
		if (!(((((int)now.pass)!=2)&&(((int)now.pass)!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: /* STATE 16 - _spin_nvr.tmp:154 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported16)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req4_3 */
	case 61: /* STATE 1 - _spin_nvr.tmp:128 - [((!(!(((Wifi==1)||(Wifi==0))))&&((Wifi!=1)&&(Wifi!=0))))] (0:0:0 - 1) */
		
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
		reached[7][1] = 1;
		if (!(( !( !(((((int)now.Wifi)==1)||(((int)now.Wifi)==0))))&&((((int)now.Wifi)!=1)&&(((int)now.Wifi)!=0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: /* STATE 3 - _spin_nvr.tmp:129 - [(!(!(((Wifi==1)||(Wifi==0)))))] (0:0:0 - 1) */
		
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
		reached[7][3] = 1;
		if (!( !( !(((((int)now.Wifi)==1)||(((int)now.Wifi)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: /* STATE 9 - _spin_nvr.tmp:134 - [(((Wifi!=1)&&(Wifi!=0)))] (0:0:0 - 1) */
		
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
		reached[7][9] = 1;
		if (!(((((int)now.Wifi)!=1)&&(((int)now.Wifi)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: /* STATE 16 - _spin_nvr.tmp:139 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported16)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req4_2 */
	case 65: /* STATE 1 - _spin_nvr.tmp:113 - [((!(!(((Bluetooth==1)||(Bluetooth==0))))&&((Bluetooth!=1)&&(Bluetooth!=0))))] (0:0:0 - 1) */
		
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
		reached[6][1] = 1;
		if (!(( !( !(((((int)now.Bluetooth)==1)||(((int)now.Bluetooth)==0))))&&((((int)now.Bluetooth)!=1)&&(((int)now.Bluetooth)!=0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: /* STATE 3 - _spin_nvr.tmp:114 - [(!(!(((Bluetooth==1)||(Bluetooth==0)))))] (0:0:0 - 1) */
		
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
		reached[6][3] = 1;
		if (!( !( !(((((int)now.Bluetooth)==1)||(((int)now.Bluetooth)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: /* STATE 9 - _spin_nvr.tmp:119 - [(((Bluetooth!=1)&&(Bluetooth!=0)))] (0:0:0 - 1) */
		
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
		reached[6][9] = 1;
		if (!(((((int)now.Bluetooth)!=1)&&(((int)now.Bluetooth)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: /* STATE 16 - _spin_nvr.tmp:124 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported16)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req4_1 */
	case 69: /* STATE 1 - _spin_nvr.tmp:98 - [((!(!(((Airplane_mode==1)||(Airplane_mode==0))))&&((Airplane_mode!=1)&&(Airplane_mode!=0))))] (0:0:0 - 1) */
		
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
		reached[5][1] = 1;
		if (!(( !( !(((((int)now.Airplane_mode)==1)||(((int)now.Airplane_mode)==0))))&&((((int)now.Airplane_mode)!=1)&&(((int)now.Airplane_mode)!=0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: /* STATE 3 - _spin_nvr.tmp:99 - [(!(!(((Airplane_mode==1)||(Airplane_mode==0)))))] (0:0:0 - 1) */
		
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
		reached[5][3] = 1;
		if (!( !( !(((((int)now.Airplane_mode)==1)||(((int)now.Airplane_mode)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: /* STATE 9 - _spin_nvr.tmp:104 - [(((Airplane_mode!=1)&&(Airplane_mode!=0)))] (0:0:0 - 1) */
		
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
		reached[5][9] = 1;
		if (!(((((int)now.Airplane_mode)!=1)&&(((int)now.Airplane_mode)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: /* STATE 16 - _spin_nvr.tmp:109 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported16)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req3 */
	case 73: /* STATE 1 - _spin_nvr.tmp:54 - [(((!(!((state==LoginScreen)))&&!((state!=LoginScreen)))||((!(!((state==LoginScreen)))&&(state!=changepassNotEmpty))&&(state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][1] = 1;
		if (!((( !( !((now.state==10)))&& !((now.state!=10)))||(( !( !((now.state==10)))&&(now.state!=6))&&(now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: /* STATE 3 - _spin_nvr.tmp:55 - [(((!(!((state==LoginScreen)))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[4][3] = 1;
		if (!((( !( !((now.state==10)))&&(now.state!=6))&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: /* STATE 5 - _spin_nvr.tmp:56 - [((((!(!((state==LoginScreen)))&&!((state==LoginScreen)))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[4][5] = 1;
		if (!(((( !( !((now.state==10)))&& !((now.state==10)))&&(now.state!=6))&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: /* STATE 7 - _spin_nvr.tmp:57 - [(((!(!((state==LoginScreen)))&&!((state!=LoginScreen)))&&!((state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][7] = 1;
		if (!((( !( !((now.state==10)))&& !((now.state!=10)))&& !((now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: /* STATE 13 - _spin_nvr.tmp:62 - [(((!((state!=LoginScreen))&&(state==LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][13] = 1;
		if (!((( !((now.state!=10))&&(now.state==10))||((now.state!=6)&&(now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: /* STATE 15 - _spin_nvr.tmp:63 - [(((!((state!=LoginScreen))&&(state!=changeuserNotEmpty))||((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty))))] (0:0:0 - 1) */
		
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
		reached[4][15] = 1;
		if (!((( !((now.state!=10))&&(now.state!=4))||((now.state!=6)&&(now.state!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: /* STATE 17 - _spin_nvr.tmp:64 - [((((!((state!=LoginScreen))&&!((state==LoginScreen)))&&(state!=changeuserNotEmpty))||((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty))))] (0:0:0 - 1) */
		
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
		reached[4][17] = 1;
		if (!(((( !((now.state!=10))&& !((now.state==10)))&&(now.state!=4))||(( !((now.state==10))&&(now.state!=6))&&(now.state!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: /* STATE 21 - _spin_nvr.tmp:68 - [((!((state!=LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][21] = 1;
		if (!(( !((now.state!=10))||((now.state!=6)&&(now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: /* STATE 23 - _spin_nvr.tmp:69 - [(((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[4][23] = 1;
		if (!(((now.state!=6)&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: /* STATE 25 - _spin_nvr.tmp:70 - [(((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[4][25] = 1;
		if (!((( !((now.state==10))&&(now.state!=6))&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: /* STATE 27 - _spin_nvr.tmp:71 - [((!((state!=LoginScreen))&&!((state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][27] = 1;
		if (!(( !((now.state!=10))&& !((now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: /* STATE 31 - _spin_nvr.tmp:75 - [(((!((state!=LoginScreen))&&(state==LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][31] = 1;
		if (!((( !((now.state!=10))&&(now.state==10))||((now.state!=6)&&(now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: /* STATE 33 - _spin_nvr.tmp:76 - [(((!((state!=LoginScreen))&&(state!=changeuserNotEmpty))||((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty))))] (0:0:0 - 1) */
		
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
		reached[4][33] = 1;
		if (!((( !((now.state!=10))&&(now.state!=4))||((now.state!=6)&&(now.state!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: /* STATE 35 - _spin_nvr.tmp:77 - [((((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty))&&(state==LoginScreen)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported35 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported35)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported35 = 0;
			if (verbose && !reported35)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][35] = 1;
		if (!((((now.state!=6)&&(now.state!=4))&&(now.state==10))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: /* STATE 37 - _spin_nvr.tmp:78 - [((((!((state!=LoginScreen))&&!((state==LoginScreen)))&&(state!=changeuserNotEmpty))||((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty))))] (0:0:0 - 1) */
		
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
		reached[4][37] = 1;
		if (!(((( !((now.state!=10))&& !((now.state==10)))&&(now.state!=4))||(( !((now.state==10))&&(now.state!=6))&&(now.state!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: /* STATE 41 - _spin_nvr.tmp:82 - [((!((state!=LoginScreen))||((state!=changepassNotEmpty)&&(state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][41] = 1;
		if (!(( !((now.state!=10))||((now.state!=6)&&(now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: /* STATE 43 - _spin_nvr.tmp:83 - [(((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[4][43] = 1;
		if (!(((now.state!=6)&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: /* STATE 45 - _spin_nvr.tmp:84 - [(((!((state==LoginScreen))&&(state!=changepassNotEmpty))&&(state!=changeuserNotEmpty)))] (0:0:0 - 1) */
		
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
		reached[4][45] = 1;
		if (!((( !((now.state==10))&&(now.state!=6))&&(now.state!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: /* STATE 47 - _spin_nvr.tmp:85 - [((!((state!=LoginScreen))&&!((state==LoginScreen))))] (0:0:0 - 1) */
		
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
		reached[4][47] = 1;
		if (!(( !((now.state!=10))&& !((now.state==10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: /* STATE 51 - _spin_nvr.tmp:89 - [((state==LoginScreen))] (0:0:0 - 1) */
		
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
		reached[4][51] = 1;
		if (!((now.state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: /* STATE 53 - _spin_nvr.tmp:90 - [((state!=changeuserNotEmpty))] (0:0:0 - 1) */
		
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
		reached[4][53] = 1;
		if (!((now.state!=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: /* STATE 58 - _spin_nvr.tmp:94 - [-end-] (0:0:0 - 1) */
		
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
		reached[4][58] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req1_3 */
	case 95: /* STATE 1 - _spin_nvr.tmp:37 - [(((!(!((state==MainScreen)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=MainScreen))))] (0:0:0 - 1) */
		
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
		reached[3][1] = 1;
		if (!((( !( !((now.state==9)))&& !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1))))&& !((now.state!=9)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: /* STATE 3 - _spin_nvr.tmp:38 - [((!(!((state==MainScreen)))&&!((state!=MainScreen))))] (0:0:0 - 1) */
		
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
		reached[3][3] = 1;
		if (!(( !( !((now.state==9)))&& !((now.state!=9)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: /* STATE 9 - _spin_nvr.tmp:43 - [((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=MainScreen))))] (0:0:0 - 1) */
		
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
		reached[3][9] = 1;
		if (!(( !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1)))&& !((now.state!=9)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: /* STATE 13 - _spin_nvr.tmp:47 - [((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=MainScreen))))] (0:0:0 - 1) */
		
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
		reached[3][13] = 1;
		if (!(( !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1)))&& !((now.state!=9)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: /* STATE 15 - _spin_nvr.tmp:48 - [(!((state!=MainScreen)))] (0:0:0 - 1) */
		
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
		reached[3][15] = 1;
		if (!( !((now.state!=9))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: /* STATE 19 - _spin_nvr.tmp:50 - [-end-] (0:0:0 - 1) */
		
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
		reached[3][19] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM req1_2 */
	case 101: /* STATE 1 - _spin_nvr.tmp:20 - [(((!(!((state==LoginScreen)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=LoginScreen))))] (0:0:0 - 1) */
		
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
		if (!((( !( !((now.state==10)))&& !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1))))&& !((now.state!=10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: /* STATE 3 - _spin_nvr.tmp:21 - [((!(!((state==LoginScreen)))&&!((state!=LoginScreen))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==10)))&& !((now.state!=10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: /* STATE 9 - _spin_nvr.tmp:26 - [((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=LoginScreen))))] (0:0:0 - 1) */
		
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
		if (!(( !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1)))&& !((now.state!=10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: /* STATE 13 - _spin_nvr.tmp:30 - [((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=LoginScreen))))] (0:0:0 - 1) */
		
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
		if (!(( !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1)))&& !((now.state!=10)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: /* STATE 15 - _spin_nvr.tmp:31 - [(!((state!=LoginScreen)))] (0:0:0 - 1) */
		
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
		if (!( !((now.state!=10))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: /* STATE 19 - _spin_nvr.tmp:33 - [-end-] (0:0:0 - 1) */
		
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

		 /* CLAIM req1_1 */
	case 107: /* STATE 1 - _spin_nvr.tmp:3 - [(((!(!((state==Setting)))&&!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF))))&&!((state!=Setting))))] (0:0:0 - 1) */
		
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
		if (!((( !( !((now.state==11)))&& !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1))))&& !((now.state!=11)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: /* STATE 3 - _spin_nvr.tmp:4 - [((!(!((state==Setting)))&&!((state!=Setting))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((now.state==11)))&& !((now.state!=11)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: /* STATE 9 - _spin_nvr.tmp:9 - [((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))] (0:0:0 - 1) */
		
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
		if (!(( !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1)))&& !((now.state!=11)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: /* STATE 13 - _spin_nvr.tmp:13 - [((!(((((((((state==changeBluetoothON)||(state==changeWifiON))||(state==changepassNotEmpty))||(state==changeBluetoothOFF))||(state==changeuserNotEmpty))||(state==changeAirplane_modeOFF))||(state==changeAirplane_modeON))||(state==changeWifiOFF)))&&!((state!=Setting))))] (0:0:0 - 1) */
		
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
		if (!(( !(((((((((now.state==8)||(now.state==7))||(now.state==6))||(now.state==5))||(now.state==4))||(now.state==3))||(now.state==2))||(now.state==1)))&& !((now.state!=11)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: /* STATE 15 - _spin_nvr.tmp:14 - [(!((state!=Setting)))] (0:0:0 - 1) */
		
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
		if (!( !((now.state!=11))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: /* STATE 19 - _spin_nvr.tmp:16 - [-end-] (0:0:0 - 1) */
		
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
	case 113: /* STATE 1 - examplePG.pml:46 - [((state==Setting))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: /* STATE 2 - examplePG.pml:48 - [((Airplane_mode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.Airplane_mode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: /* STATE 3 - examplePG.pml:48 - [Airplane_mode = 1] (0:183:5 - 1) */
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
	case 116: /* STATE 9 - examplePG.pml:49 - [((Airplane_mode==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.Airplane_mode)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: /* STATE 10 - examplePG.pml:49 - [Airplane_mode = 0] (0:183:3 - 1) */
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
	case 118: /* STATE 14 - examplePG.pml:50 - [(((Bluetooth==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((((int)now.Bluetooth)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: /* STATE 15 - examplePG.pml:50 - [Bluetooth = 1] (0:183:3 - 1) */
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
	case 120: /* STATE 19 - examplePG.pml:51 - [((Bluetooth==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.Bluetooth)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: /* STATE 20 - examplePG.pml:51 - [Bluetooth = 0] (0:183:3 - 1) */
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
	case 122: /* STATE 24 - examplePG.pml:52 - [(((Wifi==0)&&(Airplane_mode==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((((int)now.Wifi)==0)&&(((int)now.Airplane_mode)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: /* STATE 25 - examplePG.pml:52 - [Wifi = 1] (0:183:3 - 1) */
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
	case 124: /* STATE 29 - examplePG.pml:53 - [((Wifi==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.Wifi)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: /* STATE 30 - examplePG.pml:53 - [Wifi = 0] (0:183:3 - 1) */
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
	case 126: /* STATE 34 - examplePG.pml:54 - [state = Setting] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 11;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: /* STATE 38 - examplePG.pml:60 - [((state==LoginScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: /* STATE 39 - examplePG.pml:62 - [((pass==2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		if (!((((int)now.pass)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: /* STATE 40 - examplePG.pml:62 - [pass = 3] (0:183:3 - 1) */
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
	case 130: /* STATE 44 - examplePG.pml:63 - [(((user==3)&&(pass==3)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		if (!(((((int)now.user)==3)&&(((int)now.pass)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: /* STATE 45 - examplePG.pml:63 - [state = MainScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 9;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: /* STATE 47 - examplePG.pml:64 - [((user==2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((int)now.user)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: /* STATE 48 - examplePG.pml:64 - [user = 3] (0:183:3 - 1) */
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
	case 134: /* STATE 54 - examplePG.pml:70 - [((state==MainScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		if (!((now.state==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: /* STATE 55 - examplePG.pml:72 - [state = MainScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 9;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: /* STATE 59 - examplePG.pml:74 - [((state==changeBluetoothON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][59] = 1;
		if (!((now.state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: /* STATE 60 - examplePG.pml:76 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][60] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: /* STATE 61 - examplePG.pml:76 - [action[1] = 0] (0:183:2 - 1) */
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
	case 139: /* STATE 64 - examplePG.pml:77 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: /* STATE 65 - examplePG.pml:77 - [action[1] = 0] (0:183:2 - 1) */
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
	case 141: /* STATE 70 - examplePG.pml:79 - [((state==changeWifiON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][70] = 1;
		if (!((now.state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: /* STATE 71 - examplePG.pml:81 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: /* STATE 72 - examplePG.pml:81 - [action[0] = 0] (0:183:2 - 1) */
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
	case 144: /* STATE 75 - examplePG.pml:82 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][75] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 145: /* STATE 76 - examplePG.pml:82 - [action[0] = 0] (0:183:2 - 1) */
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
	case 146: /* STATE 81 - examplePG.pml:84 - [((state==changepassNotEmpty))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][81] = 1;
		if (!((now.state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: /* STATE 82 - examplePG.pml:86 - [((action[4]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((int)now.action[4])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: /* STATE 83 - examplePG.pml:86 - [action[4] = 0] (0:183:2 - 1) */
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
	case 149: /* STATE 86 - examplePG.pml:87 - [((action[4]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][86] = 1;
		if (!((((int)now.action[4])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: /* STATE 87 - examplePG.pml:87 - [action[4] = 0] (0:183:2 - 1) */
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
	case 151: /* STATE 92 - examplePG.pml:89 - [((state==changeBluetoothOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][92] = 1;
		if (!((now.state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: /* STATE 93 - examplePG.pml:91 - [(((action[2]==1)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: /* STATE 94 - examplePG.pml:91 - [action[1] = 0] (0:183:2 - 1) */
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
	case 154: /* STATE 97 - examplePG.pml:92 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][97] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: /* STATE 98 - examplePG.pml:92 - [action[1] = 0] (0:183:2 - 1) */
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
	case 156: /* STATE 101 - examplePG.pml:93 - [(((action[2]==1)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][101] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 157: /* STATE 102 - examplePG.pml:93 - [action[1] = 0] (0:183:2 - 1) */
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
	case 158: /* STATE 105 - examplePG.pml:94 - [(((action[2]==0)&&(action[1]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][105] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[1])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 159: /* STATE 106 - examplePG.pml:94 - [action[1] = 0] (0:183:2 - 1) */
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
	case 160: /* STATE 111 - examplePG.pml:96 - [((state==changeuserNotEmpty))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][111] = 1;
		if (!((now.state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: /* STATE 112 - examplePG.pml:98 - [((action[3]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][112] = 1;
		if (!((((int)now.action[3])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: /* STATE 113 - examplePG.pml:98 - [action[3] = 0] (0:183:2 - 1) */
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
	case 163: /* STATE 116 - examplePG.pml:99 - [((action[3]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][116] = 1;
		if (!((((int)now.action[3])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: /* STATE 117 - examplePG.pml:99 - [action[3] = 0] (0:183:2 - 1) */
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
	case 165: /* STATE 122 - examplePG.pml:101 - [((state==changeAirplane_modeOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][122] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 166: /* STATE 123 - examplePG.pml:103 - [((action[2]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][123] = 1;
		if (!((((int)now.action[2])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: /* STATE 124 - examplePG.pml:103 - [action[2] = 0] (0:183:2 - 1) */
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
	case 168: /* STATE 127 - examplePG.pml:104 - [((action[2]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][127] = 1;
		if (!((((int)now.action[2])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: /* STATE 128 - examplePG.pml:104 - [action[2] = 0] (0:183:2 - 1) */
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
	case 170: /* STATE 133 - examplePG.pml:106 - [((state==changeAirplane_modeON))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][133] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 171: /* STATE 134 - examplePG.pml:108 - [((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][134] = 1;
		if (!((((((int)now.action[2])==1)&&(((int)now.action[0])==0))&&(((int)now.action[1])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 172: /* STATE 135 - examplePG.pml:108 - [action[2] = 0] (0:183:2 - 1) */
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
	case 173: /* STATE 138 - examplePG.pml:109 - [((action[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][138] = 1;
		if (!((((int)now.action[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: /* STATE 139 - examplePG.pml:109 - [Wifi = 0] (0:183:3 - 1) */
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
	case 175: /* STATE 143 - examplePG.pml:110 - [((action[1]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][143] = 1;
		if (!((((int)now.action[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: /* STATE 144 - examplePG.pml:110 - [Bluetooth = 0] (0:183:3 - 1) */
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
	case 177: /* STATE 148 - examplePG.pml:111 - [((((action[2]==1)&&(action[0]==0))&&(action[1]==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][148] = 1;
		if (!((((((int)now.action[2])==1)&&(((int)now.action[0])==0))&&(((int)now.action[1])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: /* STATE 149 - examplePG.pml:111 - [action[2] = 0] (0:183:2 - 1) */
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
	case 179: /* STATE 152 - examplePG.pml:112 - [((action[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][152] = 1;
		if (!((((int)now.action[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: /* STATE 153 - examplePG.pml:112 - [Wifi = 0] (0:183:3 - 1) */
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
	case 181: /* STATE 157 - examplePG.pml:113 - [((action[1]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][157] = 1;
		if (!((((int)now.action[1])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: /* STATE 158 - examplePG.pml:113 - [Bluetooth = 0] (0:183:3 - 1) */
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
	case 183: /* STATE 164 - examplePG.pml:115 - [((state==changeWifiOFF))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][164] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: /* STATE 165 - examplePG.pml:117 - [(((action[2]==1)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][165] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: /* STATE 166 - examplePG.pml:117 - [action[0] = 0] (0:183:2 - 1) */
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
	case 186: /* STATE 169 - examplePG.pml:118 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][169] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 187: /* STATE 170 - examplePG.pml:118 - [action[0] = 0] (0:183:2 - 1) */
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
	case 188: /* STATE 173 - examplePG.pml:119 - [(((action[2]==1)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][173] = 1;
		if (!(((((int)now.action[2])==1)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: /* STATE 174 - examplePG.pml:119 - [action[0] = 0] (0:183:2 - 1) */
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
	case 190: /* STATE 177 - examplePG.pml:120 - [(((action[2]==0)&&(action[0]==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][177] = 1;
		if (!(((((int)now.action[2])==0)&&(((int)now.action[0])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: /* STATE 178 - examplePG.pml:120 - [action[0] = 0] (0:183:2 - 1) */
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
	case 192: /* STATE 186 - examplePG.pml:123 - [-end-] (0:0:0 - 1) */
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

