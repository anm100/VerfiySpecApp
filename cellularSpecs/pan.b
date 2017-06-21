	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM req8 */
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
		
	case 10: /* STATE 24 */
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
		
	case 13: /* STATE 7 */
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
		
	case 15: /* STATE 12 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[2] = trpt->bup.ovals[1];
		now.Airplane_mode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 17: /* STATE 17 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 19: /* STATE 22 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 21: /* STATE 27 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 23: /* STATE 32 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 26: /* STATE 39 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 28: /* STATE 43 */
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
		
	case 31: /* STATE 50 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 33: /* STATE 54 */
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
		
	case 36: /* STATE 61 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 38: /* STATE 65 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 40: /* STATE 69 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 42: /* STATE 73 */
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
		
	case 45: /* STATE 80 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 47: /* STATE 84 */
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
		
	case 50: /* STATE 91 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 52: /* STATE 96 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 54: /* STATE 101 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 56: /* STATE 105 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 58: /* STATE 110 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 60: /* STATE 115 */
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
		
	case 63: /* STATE 122 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 65: /* STATE 126 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 67: /* STATE 130 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 69: /* STATE 134 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 70: /* STATE 141 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

