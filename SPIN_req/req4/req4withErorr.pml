#define ON 1
#define OFF 0
#define d 5;
mtype = {CreateNewEvent,ChangeAck};
byte  ack=OFF;
mtype state=CreateNewEvent;
ltl r4 {[](((ack==ON) ||(ack==OFF))->(!<>((!(ack==OFF))&&(!(ack==ON)))))}
active proctype vm()
{
do
:: {state==CreateNewEvent}->
if 
:: ack==OFF -> atomic{ack=d; state=ChangeAck};state=CreateNewEvent
:: ack==ON -> atomic{ack=OFF; state=ChangeAck};state=CreateNewEvent
fi
od
}



