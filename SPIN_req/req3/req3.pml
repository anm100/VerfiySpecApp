#define Empty 0
#define NotEmpty 1 
mtype = { BoPo_MainSreen,SignIn,changeParamUserName,changeParamEmail,enterWuser,enterWemail,CreateNewEvent}
mtype state=SignIn;
byte username=Empty;
byte email=Empty;
ltl r3 {[]((state==SignIn)->((state==SignIn)U(state!=SignIn)&&(!(state!=changeParamUserName U(state==BoPo_MainSreen)))))}
active proctype vm()
{
do
:: state== SignIn ->
	if
	::atomic{state=enterWuser}	
	::atomic{ state=enterWemail}
	fi
::state == enterWuser->
	if
	::atomic{state=changeParamUserName}	
	fi
::state == enterWemail->
	if
	::atomic{state=changeParamEmail}	
	fi
		
::state == changeParamUserName->
	if
	::atomic{ username=NotEmpty;state=BoPo_MainSreen}
	fi
	
::state == changeParamEmail->
	if
	::atomic{ email=NotEmpty;state=changeParamUserName}
	fi
:: state== BoPo_MainSreen ->
	if	
	::atomic{ state=CreateNewEvent}
	fi
od
}




 
