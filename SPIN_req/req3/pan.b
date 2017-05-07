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
		
	case 8: /* STATE 17 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC vm */
;
		;
		
	case 10: /* STATE 2 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 11: /* STATE 4 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: /* STATE 9 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: /* STATE 14 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: /* STATE 20 */
		;
		now.state = trpt->bup.ovals[1];
		username = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 19: /* STATE 26 */
		;
		now.state = trpt->bup.ovals[1];
		email = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 21: /* STATE 31 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 22: /* STATE 38 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

