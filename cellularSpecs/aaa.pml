mytype={createnewevent,main,createNewEvent,changeParam};
ltl req1 {[]((state==BoPo_MainSreen) -> (<>(!(state==BoPo_MainSreen))))}
active proctype vm()
{
do
::(state==createnewevent)->
if
fi
::(state==main)->
if
::(Goto=null)->atomic(state=createnewevent);
fi
::(state==createNewEvent)->
if
::(null=null)->atomic(state=createNewEvent);
fi
od
}
