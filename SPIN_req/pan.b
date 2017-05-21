	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM r8 */
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

		 /* PROC vm1 */
;
		;
		;
		;
		
	case 13: /* STATE 5 */
		;
		now.actions[0] = trpt->bup.ovals[2];
		now.airplaneMode = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 15: /* STATE 8 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 18: /* STATE 16 */
		;
		now.actions[1] = trpt->bup.ovals[2];
		now.wifiParam = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 21: /* STATE 25 */
		;
		now.actions[2] = trpt->bup.ovals[3];
		now.actions[1] = trpt->bup.ovals[2];
		now.bluParam = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 23: /* STATE 28 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: /* STATE 31 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 28: /* STATE 39 */
		;
		now.actions[2] = trpt->bup.ovals[2];
		now.actions[0] = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 30: /* STATE 44 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 31: /* STATE 50 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

