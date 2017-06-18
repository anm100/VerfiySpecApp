#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={Setting,
changeBluetoothON,changeWifiON,changeBluetoothOFF,changeAirplane_modeOFF,changeAirplane_modeON,changeWifiOFF}

/*define flag for action */
byte action[3];

/*define params and default value*/
byte Airplane_mode=OFF;
byte Bluetooth=OFF;
byte Wifi=OFF;

active proctype vm(){
 do
	::(state==Setting)->
	  if
		 ::(Airplane_mode==ON)->atomic(Airplane_mode=OFF;action[2]=1;action[0]=1;action[1]=1;;state=changeAirplane_modeOFF);)
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[2]=1;state=changeAirplane_modeON);
		 ::(Bluetooth==ON)->atomic(Bluetooth=OFF;action[1]=1;;state=changeBluetoothOFF);)
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[1]=1;state=changeBluetoothON);
		 ::(Wifi==ON)->atomic(Wifi=OFF;action[0]=1;;state=changeWifiOFF);)
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[0]=1;state=changeWifiON);
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Setting////////////////////////////////////////////////
*/

	::(state==changeBluetoothON)->
	  if
		 ::(Myconditon)->atomic(actions;state=Setting)
	  fi
	::(state==changeWifiON)->
	  if
		 ::(Myconditon)->atomic(actions;state=Setting)
	  fi
	::(state==changeBluetoothOFF)->
	  if
		 ::(action[1]==1)->atomic(action[1]=0;;state=Setting)
	  fi
	::(state==changeAirplane_modeOFF)->
	  if
		 ::(action[2]==1action[0]==0&&action[1]==0)->atomic(action[2]=0;;state=Setting)
	  fi
	::(state==changeAirplane_modeON)->
	  if
		 ::(Myconditon)->atomic(actions;state=Setting)
	  fi
	::(state==changeWifiOFF)->
	  if
		 ::(action[0]==1)->atomic(action[0]=0;;state=Setting)
	  fi
od
}
