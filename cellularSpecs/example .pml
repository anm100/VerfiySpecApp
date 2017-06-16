#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={Setting
ChangeSettingAirplane_mode,ChangeSettingBluetooth,ChangeSettingWifi}

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
		 ::(Airplane_mode==ON)->atomic(Airplane_mode=OFF;action[2]=1;state=changeSettingAirplane_mode);
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[2]=1;state=changeSettingAirplane_mode);
		 ::(Bluetooth==ON)->atomic(Bluetooth=OFF;action[1]=1;state=changeSettingBluetooth);
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[1]=1;state=changeSettingBluetooth);
		 ::(Wifi==ON)->atomic(Wifi=OFF;action[0]=1;state=changeSettingWifi);
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[0]=1;state=changeSettingWifi);
	  fi
	::(state==changeSettingBluetooth)->
	  if
		 ::(cond)->atomic(actions;state=Setting)
	  fi
	::(state==changeSettingAirplane_mode)->
	  if
		 ::(cond)->atomic(actions;state=Setting)
	  fi
	::(state==changeSettingWifi)->
	  if
		 ::(cond)->atomic(actions;state=Setting)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Setting////////////////////////////////////////////////
*/

od
}
