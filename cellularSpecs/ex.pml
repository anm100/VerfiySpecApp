#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mtype={Setting,LoginScreen
changeBluetoothON,changeWifiON,changeBluetoothOFF,changeAirplane_modeOFF,changeAirplane_modeON,changeWifiOFF}

mtype state=Setting;
/*define flag for action */
byte action[3];

/*define params and default value*/
byte Airplane_mode=OFF;
byte Bluetooth=ON;
byte Wifi=ON;
ltl  req8 {[]((Airplane_mode==ON)->((((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Wifi==OFF))&&(((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Bluetooth==OFF))))}
ltl  req1 {[](((state==Setting)->((!([]<>((state==changeBluetoothON)&&(state==changeWifiON)&&(state==changeBluetoothOFF)&&(state==changeAirplane_modeOFF)&&(state==changeAirplane_modeON)&&(state==changeWifiOFF))))-><>((state !=Setting)&&((state!=changeBluetoothON)&&(state!=changeWifiON)&&(state!=changeBluetoothOFF)&&(state!=changeAirplane_modeOFF)&&(state!=changeAirplane_modeON)&&(state!=changeWifiOFF))))))}

/*
index 2 : Airplane_mode
index 1 : Bluetooth
index 0 : Wifi

*/
active proctype vm(){
 do
	::(state==Setting)->
	  if
		 ::(Airplane_mode==OFF)->atomic{Airplane_mode=ON;action[2]=1;action[0]=1;action[1]=1;state=changeAirplane_modeON};
		 ::(Airplane_mode==ON)->atomic{Airplane_mode=OFF;action[2]=1;state=changeAirplane_modeOFF};
		 ::(Bluetooth==OFF && Airplane_mode==OFF)->atomic{Bluetooth=ON;action[1]=1;state=changeBluetoothON};
		 ::(Bluetooth==ON)->atomic{Bluetooth=OFF;action[1]=1;state=changeBluetoothOFF};
		 ::(Wifi==OFF && Airplane_mode==OFF)->atomic{Wifi=ON;action[0]=1;state=changeWifiON};
		 ::(Wifi==ON)->atomic{Wifi=OFF;action[0]=1;state=changeWifiOFF};
		 ::atomic{state=LoginScreen}
	  fi
	 ::(state==LoginScreen)->
	 if
		::atomic{state=LoginScreen}
	 fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Setting////////////////////////////////////////////////
*/

	::(state==changeBluetoothON)->
	  if
		 ::(action[1]==1)->atomic{action[1]=0;state=Setting};
	  fi
	::(state==changeWifiON)->
	  if
		 ::(action[0]==1)->atomic{action[0]=0;state=Setting};
	  fi
	::(state==changeBluetoothOFF)->
	  if
		 ::(action[2]==1 && action[1]==1)->atomic{action[1]=0;state=changeAirplane_modeON};
		 ::(action[2]==0 && action[1]==1)->atomic{action[1]=0;state=Setting};
	  fi
	::(state==changeAirplane_modeOFF)->
	  if
		 ::(action[2]==1)->atomic{action[2]=0;state=Setting};
	  fi
	::(state==changeAirplane_modeON)->
	  if
		 ::(action[2]==1 && action[0]==0 && action[1]==0)->atomic{action[2]=0;state=Setting};
		 ::(action[2]==1 && action[0]==1)->atomic{Wifi=OFF;state=changeWifiOFF}; /* eclipse action[0]=1*/
		 ::(action[2]==1 && action[1]==1)->atomic{Bluetooth=OFF;action[1]=1;state=changeBluetoothOFF};
	  fi
	::(state==changeWifiOFF)->
	  if
		 ::(action[2]==1 && action[0]==1)->atomic{action[0]=0;state=changeAirplane_modeON};
		 ::(action[2]==0 && action[0]==1)->atomic{action[0]=0;state=Setting};/*eclipse  action[2]==0*/
	  fi
od
}
