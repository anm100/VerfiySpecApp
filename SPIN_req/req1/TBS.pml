

ltl  R1  ([]((state=BoPo-MainSreen)-><>!(state=CreatNewEventScreenð))]
mtype = { BoPo-MainSreen,
CreatNewEventScreen}
mtype state= BoPo-MainSreen ;
active proctype vm()
{
Do
if
:: state== BoPo-MainSreen ->
atomic{ state= CreatNewEventScreen
}
:: state== CreatNewEventScreen ->
atomic{ state= BoPo-MainSreen }
fi
od
}


