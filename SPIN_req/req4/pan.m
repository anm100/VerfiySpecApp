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

		 /* CLAIM r1 */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!(((ack==1)||(ack==0))))&&(!((ack==0))&&!((ack==1)))))] (0:0:0 - 1) */
		
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
		if (!(( !( !(((((int)now.ack)==1)||(((int)now.ack)==0))))&&( !((((int)now.ack)==0))&& !((((int)now.ack)==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [(!(!(((ack==1)||(ack==0)))))] (0:0:0 - 1) */
		
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
		if (!( !( !(((((int)now.ack)==1)||(((int)now.ack)==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 9 - _spin_nvr.tmp:9 - [((!((ack==0))&&!((ack==1))))] (0:0:0 - 1) */
		
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
		if (!(( !((((int)now.ack)==0))&& !((((int)now.ack)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 16 - _spin_nvr.tmp:14 - [-end-] (0:0:0 - 1) */
		
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
		reached[1][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC vm */
	case 7: /* STATE 1 - req4withErorr.pml:11 - [((state==CreateNewEvent))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 3 - req4withErorr.pml:13 - [((ack==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.ack)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 4 - req4withErorr.pml:13 - [ack = 5] (0:7:2 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.ack);
		now.ack = 5;
#ifdef VAR_RANGES
		logval("ack", ((int)now.ack));
#endif
		;
		/* merge: state = ChangeAck(7, 5, 7) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: /* STATE 7 - req4withErorr.pml:13 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 8 - req4withErorr.pml:14 - [((ack==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)now.ack)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 9 - req4withErorr.pml:14 - [ack = 0] (0:12:2 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.ack);
		now.ack = 0;
#ifdef VAR_RANGES
		logval("ack", ((int)now.ack));
#endif
		;
		/* merge: state = ChangeAck(12, 10, 12) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 13: /* STATE 12 - req4withErorr.pml:14 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 18 - req4withErorr.pml:17 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
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

