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

		 /* PROC vm1 */
	case 3: /* STATE 1 - example.pml:22 - [((state==LoginScreen))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!((now.state==28)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - example.pml:24 - [state = ChangeAirplaneMode] (0:44:2 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 3;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: actions[0] = 1(44, 3, 44) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.actions[0]);
		now.actions[0] = 1;
#ifdef VAR_RANGES
		logval("actions[0]", ((int)now.actions[0]));
#endif
		;
		/* merge: .(goto)(0, 8, 44) */
		reached[1][8] = 1;
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 5: /* STATE 5 - example.pml:25 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 9 - example.pml:28 - [((state==ChangeAirplaneMode))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][9] = 1;
		if (!((now.state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 10 - example.pml:30 - [((airplaneMode==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)now.airplaneMode)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 11 - example.pml:30 - [state = ChangeWifi] (0:44:5 - 1) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 2;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: actions[0] = 1(44, 12, 44) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.actions[0]);
		now.actions[0] = 1;
#ifdef VAR_RANGES
		logval("actions[0]", ((int)now.actions[0]));
#endif
		;
		/* merge: airplaneMode = 1(44, 13, 44) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.airplaneMode);
		now.airplaneMode = 1;
#ifdef VAR_RANGES
		logval("airplaneMode", ((int)now.airplaneMode));
#endif
		;
		/* merge: wifiParam = 0(44, 14, 44) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[3] = ((int)wifiParam);
		wifiParam = 0;
#ifdef VAR_RANGES
		logval("wifiParam", ((int)wifiParam));
#endif
		;
		/* merge: bluParam = 0(44, 15, 44) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[4] = ((int)bluParam);
		bluParam = 0;
#ifdef VAR_RANGES
		logval("bluParam", ((int)bluParam));
#endif
		;
		/* merge: .(goto)(0, 20, 44) */
		reached[1][20] = 1;
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 9: /* STATE 17 - example.pml:31 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 21 - example.pml:34 - [((state==ChangeWifi))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		if (!((now.state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 22 - example.pml:36 - [((actions[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		if (!((((int)now.actions[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 23 - example.pml:36 - [state = changebluParam] (0:44:2 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 1;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: wifiParam = 0(44, 24, 44) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals[1] = ((int)wifiParam);
		wifiParam = 0;
#ifdef VAR_RANGES
		logval("wifiParam", ((int)wifiParam));
#endif
		;
		/* merge: .(goto)(0, 29, 44) */
		reached[1][29] = 1;
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: /* STATE 26 - example.pml:37 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 30 - example.pml:40 - [((state==changebluParam))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][30] = 1;
		if (!((now.state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 31 - example.pml:42 - [((actions[0]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((int)now.actions[0])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 32 - example.pml:42 - [state = LoginScreen] (0:44:3 - 1) */
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state;
		now.state = 28;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		/* merge: actions[0] = 0(44, 33, 44) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.actions[0]);
		now.actions[0] = 0;
#ifdef VAR_RANGES
		logval("actions[0]", ((int)now.actions[0]));
#endif
		;
		/* merge: bluParam = 0(44, 34, 44) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[2] = ((int)bluParam);
		bluParam = 0;
#ifdef VAR_RANGES
		logval("bluParam", ((int)bluParam));
#endif
		;
		/* merge: .(goto)(0, 39, 44) */
		reached[1][39] = 1;
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 17: /* STATE 36 - example.pml:43 - [state = CreateNewEvent] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 10;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 40 - example.pml:46 - [((state==CreateNewEvent))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][40] = 1;
		if (!((now.state==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 41 - example.pml:46 - [state = LoginScreen] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = now.state;
		now.state = 28;
#ifdef VAR_RANGES
		logval("state", now.state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 47 - example.pml:48 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][47] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 21: /* STATE 1 - example.pml:16 - [(run vm1())] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!(addproc(II, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 2 - example.pml:17 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
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

