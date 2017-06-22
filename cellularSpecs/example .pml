#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={Setting,LoginScreen,MainScreen,
changeLoginScreenuser,changeuser,changeBluetoothOFF,changeAirplane_modeON,changeWifiOFF,changeBluetoothON,changesaeedOFF,changeWifiON,changeahmadOFF,changeahmadON,changesaeedON,changeLoginScreenpass,changepass,changeAirplane_modeOFF}

/*define flag for action */
byte action[17];

/*define params and default value*/
byte Bluetooth=OFF;
byte pass=Empty;
byte ahmad=OFF;
byte onOff_0=OFF;
byte Airplane_mode=OFF;
byte onOff_2=OFF;
byte onOff_1=OFF;
byte onOff_4=OFF;
byte saeed=OFF;
byte onOff_3=OFF;
byte onOff_6=OFF;
byte onOff_5=OFF;
byte onOff_8=OFF;
byte onOff_7=OFF;
byte onOff_9=OFF;
byte Wifi=OFF;
byte user=Empty;

ltl  req1 {[](((state==Setting)->((!([]<>((state==changeBluetoothON)&&(state==changesaeedOFF)&&(state==changeWifiON)&&(state==changeahmadOFF)&&(state==changeahmadON)&&(state==changeuser)&&(state==changesaeedON)&&(state==changeBluetoothOFF)&&(state==changepass)&&(state==changeAirplane_modeOFF)&&(state==changeAirplane_modeON)&&(state==changeWifiOFF))))-><>((state !=Setting)&&((state!=changeBluetoothON)&&(state!=changesaeedOFF)&&(state!=changeWifiON)&&(state!=changeahmadOFF)&&(state!=changeahmadON)&&(state!=changeuser)&&(state!=changesaeedON)&&(state!=changeBluetoothOFF)&&(state!=changepass)&&(state!=changeAirplane_modeOFF)&&(state!=changeAirplane_modeON)&&(state!=changeWifiOFF)))))&&((state==LoginScreen)->((!([]<>((state==changeBluetoothON)&&(state==changesaeedOFF)&&(state==changeWifiON)&&(state==changeahmadOFF)&&(state==changeahmadON)&&(state==changeuser)&&(state==changesaeedON)&&(state==changeBluetoothOFF)&&(state==changepass)&&(state==changeAirplane_modeOFF)&&(state==changeAirplane_modeON)&&(state==changeWifiOFF))))-><>((state !=LoginScreen)&&((state!=changeBluetoothON)&&(state!=changesaeedOFF)&&(state!=changeWifiON)&&(state!=changeahmadOFF)&&(state!=changeahmadON)&&(state!=changeuser)&&(state!=changesaeedON)&&(state!=changeBluetoothOFF)&&(state!=changepass)&&(state!=changeAirplane_modeOFF)&&(state!=changeAirplane_modeON)&&(state!=changeWifiOFF)))))&&((state==MainScreen)->((!([]<>((state==changeBluetoothON)&&(state==changesaeedOFF)&&(state==changeWifiON)&&(state==changeahmadOFF)&&(state==changeahmadON)&&(state==changeuser)&&(state==changesaeedON)&&(state==changeBluetoothOFF)&&(state==changepass)&&(state==changeAirplane_modeOFF)&&(state==changeAirplane_modeON)&&(state==changeWifiOFF))))-><>((state !=MainScreen)&&((state!=changeBluetoothON)&&(state!=changesaeedOFF)&&(state!=changeWifiON)&&(state!=changeahmadOFF)&&(state!=changeahmadON)&&(state!=changeuser)&&(state!=changesaeedON)&&(state!=changeBluetoothOFF)&&(state!=changepass)&&(state!=changeAirplane_modeOFF)&&(state!=changeAirplane_modeON)&&(state!=changeWifiOFF))))))}
active proctype vm(){
 do
	::(state==Setting)->
	  if
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[12]=1;;state=changeAirplane_modeON);)
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[12]=1;;state=changeAirplane_modeOFF);)
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[11]=1;;state=changeBluetoothON);)
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[11]=1;;state=changeBluetoothOFF);)
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[10]=1;;state=changeWifiON);)
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[10]=1;;state=changeWifiOFF);)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Setting////////////////////////////////////////////////
*/

	::(state==LoginScreen)->
	  if
		 ::(pass==Empty)->atomic(pass=NotEmpty;action[16]=1;state=changeLoginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=MainScreen); /* Log_in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;action[15]=1;state=changeLoginScreenuser);
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen LoginScreen////////////////////////////////////////////////
*/

	::(state==MainScreen)->
	  if
		 ::(saeed==OFF)->atomic(saeed=ON;action[14]=1;;state=changesaeedON);)
		 ::(saeed==OFF)->atomic(saeed=ON;action[14]=1;;state=changesaeedOFF);)
		 ::(ahmad==OFF)->atomic(ahmad=ON;action[13]=1;;state=changeahmadON);)
		 ::(ahmad==OFF)->atomic(ahmad=ON;action[13]=1;;state=changeahmadOFF);)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen MainScreen////////////////////////////////////////////////
*/

	::(state==changeLoginScreenuser)->
	  if
		 ::(action[15]==1)->atomic(action[15]=0state=LoginScreen)
	  fi
	::(state==changeuser)->
	  if
	  fi
	::(state==changeBluetoothOFF)->
	  if
		 ::(action[11]==1)->atomic(action[11]=0;state=Setting)
		 ::(action[11]==1)->atomic(action[11]=0;state=Setting)
	  fi
	::(state==changeAirplane_modeON)->
	  if
		 ::(action[12]==1)->atomic(action[12]=0;state=Setting)
		 ::(action[12]==1)->atomic(action[12]=0;state=Setting)
	  fi
	::(state==changeWifiOFF)->
	  if
		 ::(action[10]==1)->atomic(action[10]=0;state=Setting)
		 ::(action[10]==1)->atomic(action[10]=0;state=Setting)
	  fi
	::(state==changeBluetoothON)->
	  if
		 ::(action[11]==1)->atomic(action[11]=0;state=Setting)
		 ::(action[11]==1)->atomic(action[11]=0;state=Setting)
	  fi
	::(state==changesaeedOFF)->
	  if
		 ::(action[14]==1)->atomic(action[14]=0;state=MainScreen)
		 ::(action[14]==1)->atomic(action[14]=0;state=MainScreen)
	  fi
	::(state==changeWifiON)->
	  if
		 ::(action[10]==1)->atomic(action[10]=0;state=Setting)
		 ::(action[10]==1)->atomic(action[10]=0;state=Setting)
	  fi
	::(state==changeahmadOFF)->
	  if
		 ::(action[13]==1)->atomic(action[13]=0;state=MainScreen)
		 ::(action[13]==1)->atomic(action[13]=0;state=MainScreen)
	  fi
	::(state==changeahmadON)->
	  if
		 ::(action[13]==1)->atomic(action[13]=0;state=MainScreen)
		 ::(action[13]==1)->atomic(action[13]=0;state=MainScreen)
	  fi
	::(state==changesaeedON)->
	  if
		 ::(action[14]==1)->atomic(action[14]=0;state=MainScreen)
		 ::(action[14]==1)->atomic(action[14]=0;state=MainScreen)
	  fi
	::(state==changeLoginScreenpass)->
	  if
		 ::(action[16]==1)->atomic(action[16]=0state=LoginScreen)
	  fi
	::(state==changepass)->
	  if
	  fi
	::(state==changeAirplane_modeOFF)->
	  if
		 ::(action[12]==1)->atomic(action[12]=0;state=Setting)
		 ::(action[12]==1)->atomic(action[12]=0;state=Setting)
	  fi
od
}
