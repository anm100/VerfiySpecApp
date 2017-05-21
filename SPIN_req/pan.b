	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC vm1 */
;
		;
		
	case 4: /* STATE 3 */
		;
		now.actions[0] = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 5: /* STATE 5 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 8: /* STATE 15 */
		;
		bluParam = trpt->bup.ovals[4];
		wifiParam = trpt->bup.ovals[3];
		now.airplaneMode = trpt->bup.ovals[2];
		now.actions[0] = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 9: /* STATE 17 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 12: /* STATE 24 */
		;
		wifiParam = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 13: /* STATE 26 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 16: /* STATE 34 */
		;
		bluParam = trpt->bup.ovals[2];
		now.actions[0] = trpt->bup.ovals[1];
		now.state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 17: /* STATE 36 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: /* STATE 41 */
		;
		now.state = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 47 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 21: /* STATE 1 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: /* STATE 2 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

