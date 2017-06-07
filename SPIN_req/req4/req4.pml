/*
Parameter cannot accept value that is not defined in the
 list of the possible values.
*/

#define Empty 0
#define NotEmpty 1 
#define ON 2
#define OFF 3

mtype = { BoPo_MainSreen,SignIn,changeParamUserName,changeParamEmail,enterWuser,enterWemail,CreateNewEvent}
mtype state=SignIn;

byte username=Empty;
byte email=Empty;
byte wifi=ON;
ltl r4 {[]((username==Empty) ||(username==NotEmpty))->!(<>((username!=Empty) && (username!=NotEmpty)))}
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




 
