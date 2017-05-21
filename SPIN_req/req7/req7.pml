#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = {BoPo_MainSreen,ChangeName};
byte Name=Empty;
mtype state=ChangeName

ltl req7 {
[]((name==Empty)->(!<>((!(state==ChangeName))U(name!=Empty))))
}

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





