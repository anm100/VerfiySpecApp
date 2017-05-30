mytype={screen2,loginScreen,createNewEvent,changeParam};
active proctype vm()
{
do
::(state==screen2)->
if
fi
::(state==loginScreen)->
if
::atomic(state=screen2);
::(userNot Empty=)->atomic(state=screen2);

fi
::(state==createNewEvent)->
if
fi
od
}
