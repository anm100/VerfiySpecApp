mytype={screen2,loginScreen,createNewEvent,changeParam};
active proctype vm()
{
do
::(state==screen2)->
if



fi
::(state==loginScreen)->
if
::(airplane_mode=ON)->atomic(state=screen2);

::atomic(state=screen2);

fi
::(state==createNewEvent)->
if
fi
od
}
