#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = {BoPo_MainSreen,ChangeName,CreateNewEvent};
byte Name=Empty;
mtype state=ChangeName

ltl req7 {
[]((name==Empty)->(!X((!(state==ChangeName))U(name!=Empty))))
}

active proctype vm()
{
do
:: {state==BoPo_MainSreen}->
	if 
	::	Name==Empty -> atomic{Name=Empty;state=ChangeName}
	:: 	Name==NotEmpty -> atomic{state=CreateNewEvent}
	fi
:: {state==ChangeName}->atomic{Name=NotEmpty;state=BoPo_MainSreen}
:: {state==CreateNewEvent}->
atomic{state=CreateNewEvent}
od
}





