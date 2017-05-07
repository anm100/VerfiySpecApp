	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM r3 */
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
		;
		;
		
	case 25: /* STATE 58 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC vm */
;
		;
		
	case 27: /* STATE 2 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 28: /* STATE 4 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 30: /* STATE 9 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: /* STATE 14 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: /* STATE 20 */
		;
		now.state = trpt->bup.ovals[1];
		username = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 36: /* STATE 26 */
		;
		now.state = trpt->bup.ovals[1];
		email = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 38: /* STATE 31 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 39: /* STATE 38 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

