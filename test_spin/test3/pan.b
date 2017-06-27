	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

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
		
	case 8: /* STATE 19 */
		;
		p_restor(II);
		;
		;
		goto R999;

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
		
	case 16: /* STATE 24 */
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

	case 30: /* STATE 34 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: /* STATE 39 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 35: /* STATE 46 */
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
		
	case 38: /* STATE 53 */
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
		
	case 41: /* STATE 60 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 43: /* STATE 64 */
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
		
	case 46: /* STATE 71 */
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
		
	case 49: /* STATE 78 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 51: /* STATE 82 */
		;
		now.state = trpt->bup.ovals[1];
		now.Wifi = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 53: /* STATE 87 */
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
		
	case 56: /* STATE 94 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 58: /* STATE 98 */
		;
		now.state = trpt->bup.ovals[1];
		now.action[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 59: /* STATE 105 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

