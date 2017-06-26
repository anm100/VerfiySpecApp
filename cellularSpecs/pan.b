	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

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
		
	case 8: /* STATE 19 */
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
		
	case 14: /* STATE 19 */
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
		
	case 20: /* STATE 19 */
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
		
	case 23: /* STATE 7 */
		;
		now.state = trpt->bup.ovals[4];
		now.action[11] = trpt->bup.ovals[3];
		now.action[10] = trpt->bup.ovals[2];
		now.action[12] = trpt->bup.ovals[1];
		now.Airplane_mode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 25: /* STATE 12 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[12] = trpt->bup.ovals[1];
		now.Airplane_mode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 27: /* STATE 17 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[11] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 29: /* STATE 22 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[11] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 31: /* STATE 27 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[10] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 33: /* STATE 32 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[10] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 34: /* STATE 34 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 37: /* STATE 42 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[14] = trpt->bup.ovals[1];
		now.pass = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 39: /* STATE 45 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: /* STATE 50 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[13] = trpt->bup.ovals[1];
		now.user = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 43: /* STATE 55 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 46: /* STATE 62 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 48: /* STATE 66 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 51: /* STATE 73 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 53: /* STATE 77 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 56: /* STATE 84 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[14] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 58: /* STATE 88 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[14] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 61: /* STATE 95 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 63: /* STATE 99 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 65: /* STATE 103 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 67: /* STATE 107 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[11] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 70: /* STATE 114 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[13] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 72: /* STATE 118 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[13] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 75: /* STATE 125 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 77: /* STATE 129 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 80: /* STATE 136 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 82: /* STATE 141 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[10] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 84: /* STATE 146 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[11] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 86: /* STATE 150 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[12] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 88: /* STATE 155 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[10] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 90: /* STATE 160 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[11] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 93: /* STATE 167 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 95: /* STATE 171 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 97: /* STATE 175 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 99: /* STATE 179 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[10] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 100: /* STATE 186 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

