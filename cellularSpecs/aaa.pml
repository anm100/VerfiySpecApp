mytype={aaa,a,create,main,};
ltl req1 {[]((state==BoPo_MainSreen) -> (<>(!(state==BoPo_MainSreen))))}
do::(state==aaa)->
if
::(null=null)->atomic(state=aaa);

fi
::(state==a)->
if

::(wifi=ON)->atomic(state=aaa);
fi
::(state==create)->
if

fi
::(state==main)->
if
::(name=Not Empty)->atomic(state=main);
fi
od
