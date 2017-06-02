mytype={mainScreen,loginScreen,createNewEvent,CahngecreateNewEventdate,CahngecreateNewEventsave,CahngecreateNewEventmore details,CahngecreateNewEventdescription,CahngecreateNewEventtime,CahngecreateNewEventtitle,,active proctype vm()
{
do
::(state==mainScreen)->
if



fi
::(state==loginScreen)->
if

::(user==NotEmpty&&pass==NotEmpty)->atomic(state=mainScreen);

fi
::(state==createNewEvent)->
if

::(title==NotEmpty&&description==NotEmpty&&date==NotEmpty&&time==NotEmpty)->atomic(state=mainScreen);




fi
od
}
