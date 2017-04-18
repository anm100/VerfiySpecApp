#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = {BoPo_MainSreen,ChangeName};
byte Name=Empty;
mtype state=ChangeName
ltl r1 {[]((!(state==ChangeName))U(state==ChangeName))}
ltl r2 {[]((Name==Empty)->((Name==Empty)U(state==ChangeName)))}
active proctype vm()
{
do
:: {state==BoPo_MainSreen}->
	if 
	::	Name==Empty -> atomic{Name=NotEmpty;state=ChangeName}
	:: 	Name==NotEmpty -> atomic{Name=NotEmpty;state=ChangeName}
	fi
:: {state==ChangeName}->atomic{state=BoPo_MainSreen}
od
}





