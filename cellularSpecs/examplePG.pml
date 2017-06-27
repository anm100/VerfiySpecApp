#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mtype={Setting,LoginScreen,MainScreen,
changeBluetoothON,changeWifiON,changepassNotEmpty,changeBluetoothOFF,changeuserNotEmpty,changeAirplane_modeOFF,changeAirplane_modeON,changeWifiOFF}
mtype state=Setting;
/*define flag for action */
byte action[5];

/*define params and default value*/
byte Airplane_mode=OFF;
byte Bluetooth=OFF;
byte pass=Empty;
byte Wifi=OFF;
byte user=Empty;

ltl  req1_1{[](((state==Setting)->((!([]<>((state==changeBluetoothON)||(state==changeWifiON)||(state==changepassNotEmpty)||(state==changeBluetoothOFF)||(state==changeuserNotEmpty)||(state==changeAirplane_modeOFF)||(state==changeAirplane_modeON)||(state==changeWifiOFF))))-><>((state !=Setting)))))}
ltl  req1_2{[](((state==LoginScreen)->((!([]<>((state==changeBluetoothON)||(state==changeWifiON)||(state==changepassNotEmpty)||(state==changeBluetoothOFF)||(state==changeuserNotEmpty)||(state==changeAirplane_modeOFF)||(state==changeAirplane_modeON)||(state==changeWifiOFF))))-><>((state !=LoginScreen)))))}
ltl  req1_3{[](((state==MainScreen)->((!([]<>((state==changeBluetoothON)||(state==changeWifiON)||(state==changepassNotEmpty)||(state==changeBluetoothOFF)||(state==changeuserNotEmpty)||(state==changeAirplane_modeOFF)||(state==changeAirplane_modeON)||(state==changeWifiOFF))))-><>((state !=MainScreen)))))}

ltl  req2_1{[](((state==Setting)->((!([]<>((state==changeBluetoothON)||(state==changeWifiON)||(state==changepassNotEmpty)||(state==changeBluetoothOFF)||(state==changeuserNotEmpty)||(state==changeAirplane_modeOFF)||(state==changeAirplane_modeON)||(state==changeWifiOFF))))-><>((state ==LoginScreen)))))}
ltl  req2_2{[](((state==Setting)->((!([]<>((state==changeBluetoothON)||(state==changeWifiON)||(state==changepassNotEmpty)||(state==changeBluetoothOFF)||(state==changeuserNotEmpty)||(state==changeAirplane_modeOFF)||(state==changeAirplane_modeON)||(state==changeWifiOFF))))-><>((state ==MainScreen)))))}

ltl  req3 {[]((state==Setting)->((state==Setting)U((state!=Setting)&&(!((state!=changepassNotEmpty)&&(state!=changeuserNotEmpty)U(state==Setting))))))}
ltl  req4_1{[]((Airplane_mode==ON||Airplane_mode==OFF)->(!(<>(Airplane_mode!=ON&&Airplane_mode!=OFF))))}
ltl  req4_2{[]((Bluetooth==ON||Bluetooth==OFF)->(!(<>(Bluetooth!=ON&&Bluetooth!=OFF))))}
ltl  req4_3{[]((Wifi==ON||Wifi==OFF)->(!(<>(Wifi!=ON&&Wifi!=OFF))))}
ltl  req4_4{[]((pass==Empty||pass==NotEmpty)->(!(<>(pass!=Empty&&pass!=NotEmpty))))}
ltl  req4_5{[]((user==Empty||user==NotEmpty)->(!(<>(user!=Empty&&user!=NotEmpty))))}

 
ltl  req6 {[]((state==LoginScreen)->((pass==NotEmpty)&&(user==NotEmpty)))}
ltl  req7_1{[](((Airplane_mode==ON)->(!(X((state!=changeAirplane_modeOFF)U((Airplane_mode==OFF) &&(state!=changeAirplane_modeOFF)))))))}
ltl  req7_2{[](((Airplane_mode==OFF)->(!(X((state!=changeAirplane_modeON)U((Airplane_mode==ON) &&(state!=changeAirplane_modeON)))))))}
ltl  req7_3{[](((Bluetooth==ON)->(!(X((state!=changeBluetoothOFF)U((Bluetooth==OFF) &&(state!=changeBluetoothOFF)))))))}
ltl  req7_4{[](((Bluetooth==OFF)->(!(X((state!=changeBluetoothON)U((Bluetooth==ON) &&(state!=changeBluetoothON)))))))}
ltl  req7_5{[](((Wifi==ON)->(!(X((state!=changeWifiOFF)U((Wifi==OFF) &&(state!=changeWifiOFF)))))))}
ltl  req7_6{[](((Wifi==OFF)->(!(X((state!=changeWifiON)U((Wifi==ON) &&(state!=changeWifiON)))))))}
ltl  req7_7{[](((pass==Empty)->(!(X((state!=changepassNotEmpty)U((pass==NotEmpty) &&(state!=changepassNotEmpty)))))))}
ltl  req7_8{[](((user==Empty)->(!(X((state!=changeuserNotEmpty)U((user==NotEmpty) &&(state!=changeuserNotEmpty)))))))}

active proctype vm(){
 do
/*
*/////////////////////////////////////// ---screen: Setting////////////////////////////////////////////////
*/

	::(state==Setting)->
	  if
		 ::(Airplane_mode==OFF)->atomic{Airplane_mode=ON;action[2]=1;action[0]=1;action[1]=1;state=changeAirplane_modeON};
		 ::(Airplane_mode==ON)->atomic{Airplane_mode=OFF;action[2]=1;state=changeAirplane_modeOFF};
		 ::(Bluetooth==OFF && Airplane_mode==OFF)->atomic{Bluetooth=ON;action[1]=1;state=changeBluetoothON};
		 ::(Bluetooth==ON)->atomic{Bluetooth=OFF;action[1]=1;state=changeBluetoothOFF};
		 ::(Wifi==OFF && Airplane_mode==OFF)->atomic{Wifi=ON;action[0]=1;state=changeWifiON};
		 ::(Wifi==ON)->atomic{Wifi=OFF;action[0]=1;state=changeWifiOFF};
		 ::atomic{state=Setting};
	  fi
/*
*/////////////////////////////////////// ---screen: LoginScreen////////////////////////////////////////////////
*/

	::(state==LoginScreen)->
	  if
		 ::(pass==Empty)->atomic{pass=NotEmpty;action[4]=1;state=changepassNotEmpty};
		 ::(user==NotEmpty && pass==NotEmpty)->atomic{state=MainScreen}; /* Log_in Button */
		 ::(user==Empty)->atomic{user=NotEmpty;action[3]=1;state=changeuserNotEmpty};
	  fi
/*
*/////////////////////////////////////// ---screen: MainScreen////////////////////////////////////////////////
*/

	::(state==MainScreen)->
	  if
		 ::atomic{state=MainScreen};
	  fi
	::(state==changeBluetoothON)->
	  if
		 ::(action[2]==0 && action[1]==1)->atomic{action[1]=0;state=Setting};
		 ::(action[2]==0 && action[1]==1)->atomic{action[1]=0;state=Setting};
	  fi
	::(state==changeWifiON)->
	  if
		 ::(action[2]==0 && action[0]==1)->atomic{action[0]=0;state=Setting};
		 ::(action[2]==0 && action[0]==1)->atomic{action[0]=0;state=Setting};
	  fi
	::(state==changepassNotEmpty)->
	  if
		 ::(action[4]==1)->atomic{action[4]=0;state=LoginScreen};
		 ::(action[4]==1)->atomic{action[4]=0;state=LoginScreen};
	  fi
	::(state==changeBluetoothOFF)->
	  if
		 ::(action[2]==1 && action[1]==1)->atomic{action[1]=0;state=changeAirplane_modeON};
		 ::(action[2]==0 && action[1]==1)->atomic{action[1]=0;state=Setting};
		 ::(action[2]==1 && action[1]==1)->atomic{action[1]=0;state=changeAirplane_modeON};
		 ::(action[2]==0 && action[1]==1)->atomic{action[1]=0;state=Setting};
	  fi
	::(state==changeuserNotEmpty)->
	  if
		 ::(action[3]==1)->atomic{action[3]=0;state=LoginScreen};
		 ::(action[3]==1)->atomic{action[3]=0;state=LoginScreen};
	  fi
	::(state==changeAirplane_modeOFF)->
	  if
		 ::(action[2]==1)->atomic{action[2]=0;state=Setting};
		 ::(action[2]==1)->atomic{action[2]=0;state=Setting};
	  fi
	::(state==changeAirplane_modeON)->
	  if
		 ::(action[2]==1 && action[0]==0 && action[1]==0)->atomic{action[2]=0;state=Setting};
		 ::(action[0]==1)->atomic{Wifi=OFF;action[0]=1;state=changeWifiOFF};
		 ::(action[1]==1)->atomic{Bluetooth=OFF;action[1]=1;state=changeBluetoothOFF};
		 ::(action[2]==1 && action[0]==0 && action[1]==0)->atomic{action[2]=0;state=Setting};
		 ::(action[0]==1)->atomic{Wifi=OFF;action[0]=1;state=changeWifiOFF};
		 ::(action[1]==1)->atomic{Bluetooth=OFF;action[1]=1;state=changeBluetoothOFF};
	  fi
	::(state==changeWifiOFF)->
	  if
		 ::(action[2]==1 && action[0]==1)->atomic{action[0]=0;state=changeAirplane_modeON};
		 ::(action[2]==0 && action[0]==1)->atomic{action[0]=0;state=Setting};
		 ::(action[2]==1 && action[0]==1)->atomic{action[0]=0;state=changeAirplane_modeON};
		 ::(action[2]==0 && action[0]==1)->atomic{action[0]=0;state=Setting};
	  fi
od
}
