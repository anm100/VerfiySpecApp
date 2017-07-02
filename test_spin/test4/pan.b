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

		 /* CLAIM req1 */
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
		
	case 16: /* STATE 19 */
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
		
	case 19: /* STATE 7 */
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
		
	case 21: /* STATE 12 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[2] = trpt->bup.ovals[1];
		now.Airplane_mode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 23: /* STATE 17 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 25: /* STATE 22 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[1] = trpt->bup.ovals[1];
		now.Bluetooth = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 27: /* STATE 27 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 29: /* STATE 32 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 31: /* STATE 37 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 34: /* STATE 44 */
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
		
	case 37: /* STATE 51 */
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
		
	case 40: /* STATE 58 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 42: /* STATE 62 */
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
		
	case 45: /* STATE 69 */
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
		
	case 48: /* STATE 76 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 50: /* STATE 81 */
		;
		now.state = trpt->bup.ovals[2];
		now.action[0] = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 52: /* STATE 86 */
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
		
	case 55: /* STATE 93 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 57: /* STATE 97 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 58: /* STATE 104 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

