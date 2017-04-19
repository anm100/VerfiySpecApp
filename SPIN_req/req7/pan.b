	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM r2 */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM r1 */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 12: /* STATE 16 */
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
		
	case 15: /* STATE 5 */
		;
		now.state = trpt->bup.ovals[1];
		now.Name = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 17: /* STATE 9 */
		;
		now.state = trpt->bup.ovals[1];
		now.Name = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 19: /* STATE 15 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 20 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

