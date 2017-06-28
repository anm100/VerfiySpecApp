	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM req7_8 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 8: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req7_7 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 14: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req7_6 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 20: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req7_5 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 26: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req7_4 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 32: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req7_3 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 38: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req7_2 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 44: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req7_1 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 50: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req6 */
;
		;
		
	case 52: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req4_5 */
;
		;
		;
		;
		;
		;
		
	case 56: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req4_4 */
;
		;
		;
		;
		;
		;
		
	case 60: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req4_3 */
;
		;
		;
		;
		;
		;
		
	case 64: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req4_2 */
;
		;
		;
		;
		;
		;
		
	case 68: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req4_1 */
;
		;
		;
		;
		;
		;
		
	case 72: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req3 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 94: /* STATE 58 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req1_3 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 100: /* STATE 19 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req1_2 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 106: /* STATE 19 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM req1_1 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 112: /* STATE 19 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC vm */
;
		;
		;
		;
		
	case 115: /* STATE 7 */
		;
		now.state = trpt->bup.ovals[4];
		now.action[1] = trpt->bup.ovals[3];
		now.action[0] = trpt->bup.ovals[2];
		now.action[2] = trpt->bup.ovals[1];
		now.Airplane_mode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 117: /* STATE 12 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[2] = trpt->bup.ovals[1];
		now.Airplane_mode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 119: /* STATE 17 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 121: /* STATE 22 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 123: /* STATE 27 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 125: /* STATE 32 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 126: /* STATE 34 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 129: /* STATE 42 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[4] = trpt->bup.ovals[1];
		now.pass = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 131: /* STATE 45 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 133: /* STATE 50 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[3] = trpt->bup.ovals[1];
		now.user = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 135: /* STATE 55 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 138: /* STATE 62 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 140: /* STATE 66 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 143: /* STATE 73 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 145: /* STATE 77 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 148: /* STATE 84 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 150: /* STATE 88 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[4] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 153: /* STATE 95 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 155: /* STATE 99 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 157: /* STATE 103 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 159: /* STATE 107 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 162: /* STATE 114 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 164: /* STATE 118 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 167: /* STATE 125 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 169: /* STATE 129 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 172: /* STATE 136 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 174: /* STATE 141 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 176: /* STATE 146 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 178: /* STATE 150 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 180: /* STATE 155 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 182: /* STATE 160 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 185: /* STATE 167 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 187: /* STATE 171 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 189: /* STATE 175 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 191: /* STATE 179 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 192: /* STATE 186 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

