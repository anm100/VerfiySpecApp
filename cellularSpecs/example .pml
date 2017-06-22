#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
<<<<<<< HEAD
mytype={Setting,LoginScreen,MainScreen,
changeLoginScreenuser,changeuser,changeBluetoothOFF,changeAirplane_modeON,changeWifiOFF,changeBluetoothON,changesaeedOFF,changeWifiON,changeahmadOFF,changeahmadON,changesaeedON,changeLoginScreenpass,changepass,changeAirplane_modeOFF}

/*define flag for action */
byte action[17];
=======
mtype={Setting,LoginScreen,MainScreen,
changeLoginScreenuser,changeBluetoothON,changeWifiON,changeuser,changeLoginScreenpass,changeBluetoothOFF,changepass,changeAirplane_modeOFF,changeAirplane_modeON,changeWifiOFF}
mtype state= Setting;
/*define flag for action */
byte action[15];
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf

/*define params and default value*/
byte Bluetooth=OFF;
byte pass=Empty;
<<<<<<< HEAD
byte ahmad=OFF;
=======
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf
byte onOff_0=OFF;
byte Airplane_mode=OFF;
byte onOff_2=OFF;
byte onOff_1=OFF;
byte onOff_4=OFF;
<<<<<<< HEAD
byte saeed=OFF;
=======
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf
byte onOff_3=OFF;
byte onOff_6=OFF;
byte onOff_5=OFF;
byte onOff_8=OFF;
byte onOff_7=OFF;
byte onOff_9=OFF;
byte Wifi=OFF;
byte user=Empty;
<<<<<<< HEAD

ltl  req1 {[](((state==Setting)->((!([]<>((state==changeBluetoothON)&&(state==changesaeedOFF)&&(state==changeWifiON)&&(state==changeahmadOFF)&&(state==changeahmadON)&&(state==changeuser)&&(state==changesaeedON)&&(state==changeBluetoothOFF)&&(state==changepass)&&(state==changeAirplane_modeOFF)&&(state==changeAirplane_modeON)&&(state==changeWifiOFF))))-><>((state !=Setting)&&((state!=changeBluetoothON)&&(state!=changesaeedOFF)&&(state!=changeWifiON)&&(state!=changeahmadOFF)&&(state!=changeahmadON)&&(state!=changeuser)&&(state!=changesaeedON)&&(state!=changeBluetoothOFF)&&(state!=changepass)&&(state!=changeAirplane_modeOFF)&&(state!=changeAirplane_modeON)&&(state!=changeWifiOFF)))))&&((state==LoginScreen)->((!([]<>((state==changeBluetoothON)&&(state==changesaeedOFF)&&(state==changeWifiON)&&(state==changeahmadOFF)&&(state==changeahmadON)&&(state==changeuser)&&(state==changesaeedON)&&(state==changeBluetoothOFF)&&(state==changepass)&&(state==changeAirplane_modeOFF)&&(state==changeAirplane_modeON)&&(state==changeWifiOFF))))-><>((state !=LoginScreen)&&((state!=changeBluetoothON)&&(state!=changesaeedOFF)&&(state!=changeWifiON)&&(state!=changeahmadOFF)&&(state!=changeahmadON)&&(state!=changeuser)&&(state!=changesaeedON)&&(state!=changeBluetoothOFF)&&(state!=changepass)&&(state!=changeAirplane_modeOFF)&&(state!=changeAirplane_modeON)&&(state!=changeWifiOFF)))))&&((state==MainScreen)->((!([]<>((state==changeBluetoothON)&&(state==changesaeedOFF)&&(state==changeWifiON)&&(state==changeahmadOFF)&&(state==changeahmadON)&&(state==changeuser)&&(state==changesaeedON)&&(state==changeBluetoothOFF)&&(state==changepass)&&(state==changeAirplane_modeOFF)&&(state==changeAirplane_modeON)&&(state==changeWifiOFF))))-><>((state !=MainScreen)&&((state!=changeBluetoothON)&&(state!=changesaeedOFF)&&(state!=changeWifiON)&&(state!=changeahmadOFF)&&(state!=changeahmadON)&&(state!=changeuser)&&(state!=changesaeedON)&&(state!=changeBluetoothOFF)&&(state!=changepass)&&(state!=changeAirplane_modeOFF)&&(state!=changeAirplane_modeON)&&(state!=changeWifiOFF))))))}
=======
ltl  req8 {[]((Airplane_mode==ON)->((((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Wifi==OFF))&&(((state==changeAirplane_modeON)||(state==changeWifiOFF)||(state==changeBluetoothOFF))U(Bluetooth==OFF))))}
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf
active proctype vm(){
 do
	::(state==Setting)->
	  if
<<<<<<< HEAD
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[12]=1;;state=changeAirplane_modeON);)
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[12]=1;;state=changeAirplane_modeOFF);)
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[11]=1;;state=changeBluetoothON);)
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[11]=1;;state=changeBluetoothOFF);)
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[10]=1;;state=changeWifiON);)
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[10]=1;;state=changeWifiOFF);)
=======
		 ::(Airplane_mode==OFF)->atomic{Airplane_mode=ON;action[12]=1;action[10]=1;action[11]=1;state=changeAirplane_modeON};
		 ::(Airplane_mode==ON)->atomic{Airplane_mode=OFF;action[12]=1;state=changeAirplane_modeOFF};
		 ::(Bluetooth==OFF && Airplane_mode==OFF)->atomic{Bluetooth=ON;action[11]=1;state=changeBluetoothON};
		 ::(Bluetooth==ON)->atomic{Bluetooth=OFF;action[11]=1;state=changeBluetoothOFF};
		 ::(Wifi==OFF && Airplane_mode==OFF)->atomic{Wifi=ON;action[10]=1;state=changeWifiON};
		 ::(Wifi==ON)->atomic{Wifi=OFF;action[10]=1;state=changeWifiOFF};
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Setting////////////////////////////////////////////////
*/

	::(state==LoginScreen)->
	  if
<<<<<<< HEAD
		 ::(pass==Empty)->atomic(pass=NotEmpty;action[16]=1;state=changeLoginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=MainScreen); /* Log_in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;action[15]=1;state=changeLoginScreenuser);
=======
		 ::(pass==Empty)->atomic(pass=NotEmpty;action[14]=1;state=changeLoginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=MainScreen); /* Log_in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;action[13]=1;state=changeLoginScreenuser);
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen LoginScreen////////////////////////////////////////////////
*/

	::(state==MainScreen)->
	  if
<<<<<<< HEAD
		 ::(saeed==OFF)->atomic(saeed=ON;action[14]=1;;state=changesaeedON);)
		 ::(saeed==OFF)->atomic(saeed=ON;action[14]=1;;state=changesaeedOFF);)
		 ::(ahmad==OFF)->atomic(ahmad=ON;action[13]=1;;state=changeahmadON);)
		 ::(ahmad==OFF)->atomic(ahmad=ON;action[13]=1;;state=changeahmadOFF);)
=======
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen MainScreen////////////////////////////////////////////////
*/

	::(state==changeLoginScreenuser)->
	  if
<<<<<<< HEAD
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
=======
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
>>>>>>> 9675ea88993029e3c952947b0860309d27c8ffdf
	  fi
od
}
