mtype = { BoPo_MainSreen,CreateNewEvent}
	mtype state= BoPo_MainSreen ;
ltl r2 {[]((state==BoPo_MainSreen) -> (<>(!(state==BoPo_MainSreen))))}
active proctype vm()
{
do
:: state== BoPo_MainSreen ->
	if	
	::atomic{ state=CreateNewEvent}
	fi
:: state== CreateNewEvent ->
	if
	::atomic{ state= BoPo_MainSreen} 
	fi 
od
}




 
