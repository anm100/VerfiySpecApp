	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM r1 */
;
		;
		;
		;
		;
		;
		
	case 6: /* STATE 16 */
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
		
	case 9: /* STATE 5 */
		;
		now.state = trpt->bup.ovals[1];
		now.ack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: /* STATE 7 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 12: /* STATE 10 */
		;
		now.state = trpt->bup.ovals[1];
		now.ack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 13: /* STATE 12 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 14: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

