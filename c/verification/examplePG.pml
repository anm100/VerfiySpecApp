#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mtype={Setting,LoginScreen,MainScreen,
changeBluetoothON,changeWifiON,changepassNotEmpty,changeBluetoothOFF,changeuserNotEmpty,changeAirplane_modeOFF,changeAirplane_modeON,changeWifiOFF}
mtype state=LoginScreen;
/*define flag for action */
byte action[5];

/*define params and default value*/
byte Airplane_mode=OFF;
byte Bluetooth=OFF;
byte pass=Empty;
byte Wifi=OFF;
byte user=Empty;

ltl  req8_1{[]((Airplane_mode==ON)->((((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Wifi==OFF))&&(((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Bluetooth==OFF))))}
ltl  req8_2{[](((Wifi!=OFF)&&((state!=changeWifiON)&&(state!=changeWifiOFF)(state!=changeBluetoothON)&&(state!=changeBluetoothOFF)))||((Bluetooth!=OFF)&&((state!=changeWifiON)&&(state!=changeWifiOFF)(state!=changeBluetoothON)&&(state!=changeBluetoothOFF)))->(Airplane_mode!=ON))}
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
