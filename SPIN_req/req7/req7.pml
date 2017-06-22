#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = {BoPo_MainSreen,ChangeName,CreateNewEvent};
byte name=Empty;
mtype state=ChangeName

ltl req7 {
[]((name==Empty)->(!X((!(state==ChangeName))U(name==NotEmpty))))
}

active proctype vm()
{
do
:: {state==BoPo_MainSreen}->
	if 
	::	name==Empty -> atomic{name=NotEmpty;state=ChangeName}
	:: 	name==NotEmpty -> atomic{state=CreateNewEvent}
	fi
:: {state==ChangeName}->atomic{state=BoPo_MainSreen}


:: {state==CreateNewEvent}->
if
::
::

atomic{state=CreateNewEvent}
od
}





