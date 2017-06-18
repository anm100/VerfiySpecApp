#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={Setting,
changeSettingBluetoothON,changeSettingWifiON,changeSettingAirplane_modeON,changeSettingBluetoothOFF,changeSettingWifiOFF,changeSettingAirplane_modeOFF}

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
		 ::(Airplane_mode==ON)->atomic(Airplane_mode=OFF;action[2]=1;state=changeSettingAirplane_modeOFF);
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[2]=1;state=changeSettingAirplane_modeON);
		 ::(Bluetooth==ON)->atomic(Bluetooth=OFF;action[1]=1;state=changeSettingBluetoothOFF);
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[1]=1;state=changeSettingBluetoothON);
		 ::(Wifi==ON)->atomic(Wifi=OFF;action[0]=1;state=changeSettingWifiOFF);
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[0]=1;state=changeSettingWifiON);
	  fi
	::(state==changeSettingBluetoothON)->
	  if
		 ::(Myconditon)->atomic(actions;state=Setting)
	  fi
	::(state==changeSettingWifiON)->
	  if
		 ::(Myconditon)->atomic(actions;state=Setting)
	  fi
	::(state==changeSettingAirplane_modeON)->
	  if
		 ::(Myconditon)->atomic(actions;state=Setting)
	  fi
	::(state==changeSettingBluetoothOFF)->
	  if
		 ::(Myconditon11)->atomic(I dont have action;state=Setting)
	  fi
	::(state==changeSettingWifiOFF)->
	  if
		 ::(Myconditon11)->atomic(I dont have action;state=Setting)
	  fi
	::(state==changeSettingAirplane_modeOFF)->
	  if
		 ::(Myconditon11)->atomic(I have action;state=Setting)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Setting////////////////////////////////////////////////
*/

od
}
