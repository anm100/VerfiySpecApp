mtype = { BoPo_MainSreen,CreateNewEvent,change2,change1,change3}
	mtype state= BoPo_MainSreen ;
ltl r1 {[]((state==BoPo_MainSreen) ->(!([]<> ((state==change1)||([]<>(state==change2))||([]<>(state==change3)))))-> <>((state !=BoPo_MainSreen)
 && (state!=change1) && (state!=change2)&&(state!=change3)))}

active proctype vm()
{
do
:: state== BoPo_MainSreen ->
	if	
	::atomic{ state=change1}
	::atomic{ state=change2}
	::atomic{ state= CreateNewEvent} 
	fi
::state==change1->
	if
	::atomic{state=BoPo_MainSreen}
	::atomic{state=change3}
	fi
::state==change2->
	if
	::atomic{state=BoPo_MainSreen}
	fi
::state==change3->
	if
	::atomic{state=change1}
	fi

od
}




 
