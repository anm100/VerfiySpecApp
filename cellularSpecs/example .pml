#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mtype={Setting,LoginScreen,MainScreen,
changeLoginScreenuser,changeBluetoothON,changeWifiON,changeuser,changeLoginScreenpass,changeBluetoothOFF,changepass,changeAirplane_modeOFF,changeAirplane_modeON,changeWifiOFF}
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
ltl  req8 {[]((Airplane_mode==ON)->((((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Wifi==OFF))&&(((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Bluetooth==OFF))))}
active proctype vm(){
 do
	::(state==Setting)->
	  if
		 ::(Airplane_mode==OFF)->atomic{Airplane_mode=ON;action[12]=1;action[10]=1;action[11]=1;state=changeAirplane_modeON};
		 ::(Airplane_mode==ON)->atomic{Airplane_mode=OFF;action[12]=1;state=changeAirplane_modeOFF};
		 ::(Bluetooth==OFF && Airplane_mode==OFF)->atomic{Bluetooth=ON;action[11]=1;state=changeBluetoothON};
		 ::(Bluetooth==ON)->atomic{Bluetooth=OFF;action[11]=1;state=changeBluetoothOFF};
		 ::(Wifi==OFF && Airplane_mode==OFF)->atomic{Wifi=ON;action[10]=1;state=changeWifiON};
		 ::(Wifi==ON)->atomic{Wifi=OFF;action[10]=1;state=changeWifiOFF};
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Setting////////////////////////////////////////////////
*/

	::(state==LoginScreen)->
	  if
		 ::(pass==Empty)->atomic(pass=NotEmpty;action[14]=1;state=changeLoginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=MainScreen); /* Log_in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;action[13]=1;state=changeLoginScreenuser);
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen LoginScreen////////////////////////////////////////////////
*/

	::(state==MainScreen)->
	  if
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen MainScreen////////////////////////////////////////////////
*/

	::(state==changeLoginScreenuser)->
	  if
		 ::(action[13]==1)->atomic{action[13]=0state=LoginScreen};
	  fi
	::(state==changeBluetoothON)->
	  if
		 ::(action[12]==0 && action[11]==1)->atomic{action[11]=0;state=Setting};
		 ::(action[12]==0 && action[11]==1)->atomic{action[11]=0;state=Setting};
	  fi
	::(state==changeWifiON)->
	  if
		 ::(action[12]==0 && action[10]==1)->atomic{action[10]=0;state=Setting};
		 ::(action[12]==0 && action[10]==1)->atomic{action[10]=0;state=Setting};
	  fi
	::(state==changeuser)->
	  if
	  fi
	::(state==changeLoginScreenpass)->
	  if
		 ::(action[14]==1)->atomic{action[14]=0state=LoginScreen};
	  fi
	::(state==changeBluetoothOFF)->
	  if
		 ::(action[12]==1 && action[11]==1)->atomic{action[11]=0;state=changeAirplane_modeON};
		 ::(action[12]==0 && action[11]==1)->atomic{action[11]=0;state=Setting};
		 ::(action[12]==1 && action[11]==1)->atomic{action[11]=0;state=changeAirplane_modeON};
		 ::(action[12]==0 && action[11]==1)->atomic{action[11]=0;state=Setting};
	  fi
	::(state==changepass)->
	  if
	  fi
	::(state==changeAirplane_modeOFF)->
	  if
		 ::(action[12]==1)->atomic{action[12]=0;state=Setting};
		 ::(action[12]==1)->atomic{action[12]=0;state=Setting};
	  fi
	::(state==changeAirplane_modeON)->
	  if
		 ::(action[12]==1 && action[10]==0 && action[11]==0)->atomic{action[12]=0;state=Setting};
		 ::(action[10]==1)->atomic{Wifi=OFF;action[10]=1;state=changeWifiOFF};
		 ::(action[11]==1)->atomic{Bluetooth=OFF;action[11]=1;state=changeBluetoothOFF};
		 ::(action[12]==1 && action[10]==0 && action[11]==0)->atomic{action[12]=0;state=Setting};
		 ::(action[10]==1)->atomic{Wifi=OFF;action[10]=1;state=changeWifiOFF};
		 ::(action[11]==1)->atomic{Bluetooth=OFF;action[11]=1;state=changeBluetoothOFF};
	  fi
	::(state==changeWifiOFF)->
	  if
		 ::(action[12]==1 && action[10]==1)->atomic{action[10]=0;state=changeAirplane_modeON};
		 ::(action[12]==0 && action[10]==1)->atomic{action[10]=0;state=Setting};
		 ::(action[12]==1 && action[10]==1)->atomic{action[10]=0;state=changeAirplane_modeON};
		 ::(action[12]==0 && action[10]==1)->atomic{action[10]=0;state=Setting};
	  fi
od
}
