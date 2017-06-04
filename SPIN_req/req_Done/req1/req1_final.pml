mtype = { BoPo_MainSreen,CreateNewEvent,changeParamUserName}
	mtype state= BoPo_MainSreen ;
	ltl r1 {
	[]
	(
	((state==s1) -> ((!([]<> ((state==Ch1)||(state==Ch1))))-> <>((state !=s1)&&(state!=ch1))))
	&&((state==s1) -> ((!([]<> ((state==Ch1)&&(state==Ch1))))-> <>((state !=s1)&&(state!=ch1))))
	
	)
	}

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




 
