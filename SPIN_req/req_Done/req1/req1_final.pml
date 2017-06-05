mtype = { BoPo_MainSreen,CreateNewEvent,changeParamUserName}
ltl r1 {[]((state==BoPo_MainSreen) -> ((!([]<> (state==changeParamUserName)))-> <>(state !=BoPo_MainSreen) && (state!=changeParamUserName)))}

active proctype vm()
{
do
:: state== BoPo_MainSreen ->
	if	
	::atomic{ state=changeParamUserName}
	::atomic{ state= CreateNewEvent} 


	fi
::state==changeParamUserName->
	if
	::atomic{state=BoPo_MainSreen}
	fi
:: state== CreateNewEvent ->
	if
	::atomic{ state= BoPo_MainSreen} 
	fi 
od
}




 
