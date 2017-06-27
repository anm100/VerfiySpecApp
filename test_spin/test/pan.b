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
		;
		;
		
	case 29: /* STATE 46 */
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
		
	case 32: /* STATE 53 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 34: /* STATE 57 */
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
		
	case 37: /* STATE 64 */
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
		
	case 40: /* STATE 71 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 42: /* STATE 75 */
		;
		now.state = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 44: /* STATE 80 */
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
		
	case 47: /* STATE 87 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 49: /* STATE 91 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 50: /* STATE 98 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

