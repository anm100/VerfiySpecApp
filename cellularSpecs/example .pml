#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mtype={Setting,LoginScreen,MainScreen,
changeBluetoothON,changeWifiON,changepassNotEmpty,changeBluetoothOFF,changeuserNotEmpty,changeAirplane_modeOFF,changeAirplane_modeON,changeWifiOFF}
mtype state= Setting;
/*define flag for action */
byte action[15];

/*define params and default value*/
byte Bluetooth=OFF;
byte pass=Empty;
byte onOff_0=OFF;
byte Airplane_mode=OFF;
byte onOff_2=OFF;
byte onOff_1=OFF;
byte onOff_4=OFF;
byte onOff_3=OFF;
byte onOff_6=OFF;
byte onOff_5=OFF;
byte onOff_8=OFF;
byte onOff_7=OFF;
byte onOff_9=OFF;
byte Wifi=OFF;
byte user=Empty;

active proctype vm(){
 do
/*
*/////////////////////////////////////// ---screen: Setting////////////////////////////////////////////////
*/

	::(state==Setting)->
	  if
		 ::(Airplane_mode==OFF)->atomic{Airplane_mode=ON;action[27]=1;action[25]=1;action[26]=1;state=changeAirplane_modeON};
		 ::(Airplane_mode==ON)->atomic{Airplane_mode=OFF;action[27]=1;state=changeAirplane_modeOFF};
		 ::(Bluetooth==OFF && Airplane_mode==OFF)->atomic{Bluetooth=ON;action[26]=1;state=changeBluetoothON};
		 ::(Bluetooth==ON)->atomic{Bluetooth=OFF;action[26]=1;state=changeBluetoothOFF};
		 ::(Wifi==OFF && Airplane_mode==OFF)->atomic{Wifi=ON;action[25]=1;state=changeWifiON};
		 ::(Wifi==ON)->atomic{Wifi=OFF;action[25]=1;state=changeWifiOFF};
		 ::atomic{state=Setting};
	  fi
/*
*/////////////////////////////////////// ---screen: LoginScreen////////////////////////////////////////////////
*/

	::(state==LoginScreen)->
	  if
		 ::(pass==Empty)->atomic{pass=NotEmpty;action[29]=1;state=changepassNotEmpty};
		 ::(user==NotEmpty && pass==NotEmpty)->atomic{state=MainScreen}; /* Log_in Button */
		 ::(user==Empty)->atomic{user=NotEmpty;action[28]=1;state=changeuserNotEmpty};
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
		 ::(action[27]==0 && action[26]==1)->atomic{action[26]=0;state=Setting};
	  fi
	::(state==changeWifiON)->
	  if
		 ::(action[27]==0 && action[25]==1)->atomic{action[25]=0;state=Setting};
	  fi
	::(state==changepassNotEmpty)->
	  if
		 ::(action[29]==1)->atomic{action[29]=0;state=LoginScreen};
	  fi
	::(state==changeBluetoothOFF)->
	  if
		 ::(action[27]==1 && action[26]==1)->atomic{action[26]=0;state=changeAirplane_modeON};
		 ::(action[27]==0 && action[26]==1)->atomic{action[26]=0;state=Setting};
	  fi
	::(state==changeuserNotEmpty)->
	  if
		 ::(action[28]==1)->atomic{action[28]=0;state=LoginScreen};
	  fi
	::(state==changeAirplane_modeOFF)->
	  if
		 ::(action[27]==1)->atomic{action[27]=0;state=Setting};
	  fi
	::(state==changeAirplane_modeON)->
	  if
		 ::(action[27]==1 && action[25]==0 && action[26]==0)->atomic{action[27]=0;state=Setting};
		 ::(action[25]==1)->atomic{Wifi=OFF;action[25]=1;state=changeWifiOFF};
		 ::(action[26]==1)->atomic{Bluetooth=OFF;action[26]=1;state=changeBluetoothOFF};
	  fi
	::(state==changeWifiOFF)->
	  if
		 ::(action[27]==1 && action[25]==1)->atomic{action[25]=0;state=changeAirplane_modeON};
		 ::(action[27]==0 && action[25]==1)->atomic{action[25]=0;state=Setting};
	  fi
od
}
