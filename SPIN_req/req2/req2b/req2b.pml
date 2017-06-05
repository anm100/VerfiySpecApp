/*Reachability
Each screen is reachable from screeni:
*/

#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = { screen1,screen2,ChangeName,ChangeAge,screen3}
mtype state=screen1
byte name =Empty;
byte age=Empty;

ltl req2b{[](
(state==screen1)->(
(<>(state==screen2)) && (<>(state==screen3))
)
)}

active proctype vm()
{
do
:: state== screen1 ->
	if	
	::(name==Empty)->atomic{name=NotEmpty;state=ChangeName}
	::(name==NotEmpty)->atomic{state=screen2}
	fi
::state==ChangeName->
	if
	::atomic{state=screen1}
	fi
:: state== screen2 ->
	if
	::(age==Empty &&name==NotEmpty )->atomic{age=NotEmpty;state=ChangeAge} 
	::(age==NotEmpty)->atomic{state=screen3}
	fi
::state==ChangeAge->
	if
	::atomic{state=screen2}
	fi
:: state== screen3 ->
	if
	::atomic{state=screen1}
	fi
od
}




 

