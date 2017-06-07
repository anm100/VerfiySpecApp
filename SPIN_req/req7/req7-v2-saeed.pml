#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = {BoPo_MainSreen,ChangeName,CreateNewEvent};
byte name=Empty;
mtype state=BoPo_MainSreen

ltl req7 {
[]((name==Empty)->!(X((state!=ChangeName)U((name!=Empty)&&(state!=ChangeName)))))
}

active proctype vm()
{
do
:: {state==BoPo_MainSreen}->
	if 
	::	name==Empty -> atomic{state=ChangeName;name=NotEmpty}
	:: 	name==NotEmpty -> atomic{state=CreateNewEvent}
	fi
:: {state==ChangeName}->atomic{state=BoPo_MainSreen}
:: {state==CreateNewEvent}->
atomic{state=CreateNewEvent}
od
}





