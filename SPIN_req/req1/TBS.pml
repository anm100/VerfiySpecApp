

ltl  R1  ([]((state=BoPo-MainSreen)-><>!(state=CreatNewEventScreenð))]
mtype = { BoPo-MainSreen,
CreatNewEventScreen}
mtype state= BoPo-MainSreen ;
active proctype vm()
{
do
:: state== BoPo-MainSreen ->
if
::atomic{ state= CreatNewEventScreen}
fi
:: state== CreatNewEventScreen ->
if
::atomic{ state= BoPo-MainSreen }
fi
od
}


