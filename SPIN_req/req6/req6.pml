#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = {CreateNewEvent,BoPo_MainSreen,ChangeTitle,ChangeMax,ChangCategory};
byte title=Empty;
byte max=Empty;
byte chooseCategory=Empty;
byte approve =OFF;
mtype state=CreateNewEvent;
ltl r1 {[]((state==BoPo_MainSreen)->((title==NotEmpty)&&(max==NotEmpty)&&(chooseCategory==NotEmpty)))}
active proctype vm()
{
do
:: {state==CreateNewEvent}->
	if 
	::	title==Empty -> atomic{title=NotEmpty;state=ChangeTitle};state=CreateNewEvent
	:: 	max==Empty -> atomic{max=NotEmpty;state=ChangeMax};state=CreateNewEvent
	:: 	chooseCategory==Empty -> atomic{chooseCategory=NotEmpty; state=ChangCategory};state=CreateNewEvent
	::	((title==NotEmpty)&&(max==NotEmpty)&&(chooseCategory==NotEmpty))->atomic{state=BoPo_MainSreen};
	fi
:: {state==BoPo_MainSreen}->break;
od
}



