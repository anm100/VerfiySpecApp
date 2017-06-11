#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3

mtype = {LogIn,BoPo_MainSreen,ChangeName};
byte name=Empty;
mtype state=LogIn;
ltl r6 {[]((state==BoPo_MainSreen)->((name==NotEmpty)))}
active proctype vm()
{
do
:: {state==LogIn}->
	if 
	::	name==Empty -> atomic{name=NotEmpty;state=ChangeName}
	:: 	name==Empty -> atomic{state=BoPo_MainSreen}
	fi
::(state==ChangeName)->atomic{state=LogIn}
:: {state==BoPo_MainSreen}->break;
od
}



