#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mtype={LoginByUsername,LoginByEmail,Setting,LogIn,Main,
changeemailNotEmpty,changeBluetoothON,changeAirplaneModeOFF,changeUsernameNotEmpty,changeWifiON,changeBluetoothOFF,changeuserNameNotEmpty,changeAirplaneModeON,changeWifiOFF}
mtype state=LogIn;
/*define flag for action */
byte action[6];

/*define params and default value*/
byte Bluetooth=ON;
byte AirplaneMode=OFF;
byte Username=NotEmpty;
byte Wifi=ON;
byte userName=Empty;
byte email=NotEmpty;

ltl  req3 {[]((state==LogIn)->((state==LogIn)U((state!=LogIn)&&(!((state!=changeuserNameNotEmpty)&&(state!=changeemailNotEmpty)U(state==LogIn))))))}
active proctype vm(){
 do
/*
*/////////////////////////////////////// ---screen: LoginByUsername////////////////////////////////////////////////
*/

	::(state==LoginByUsername)->
	  if
		 ::atomic{state=Main};
		 ::(userName==Empty)->atomic{userName=NotEmpty;action[18]=1;state=changeuserNameNotEmpty};
	  fi
/*
*/////////////////////////////////////// ---screen: LoginByEmail////////////////////////////////////////////////
*/

	::(state==LoginByEmail)->
	  if
		 ::(email==NotEmpty)->atomic{state=LoginByUsername}; /* Login Button */
		 ::(email==Empty)->atomic{email=NotEmpty;action[16]=1;action[18]=1;state=changeemailNotEmpty};
	  fi
/*
*/////////////////////////////////////// ---screen: Setting////////////////////////////////////////////////
*/

	::(state==Setting)->
	  if
		 ::(Bluetooth==OFF && AirplaneMode==OFF)->atomic{Bluetooth=ON;action[4]=1;state=changeBluetoothON};
		 ::(Bluetooth==ON)->atomic{Bluetooth=OFF;action[4]=1;state=changeBluetoothOFF};
		 ::(AirplaneMode==OFF)->atomic{AirplaneMode=ON;action[19]=1;action[4]=1;action[3]=1;state=changeAirplaneModeON};
		 ::(AirplaneMode==ON)->atomic{AirplaneMode=OFF;action[19]=1;state=changeAirplaneModeOFF};
		 ::(Username==Empty)->atomic{Username=NotEmpty;action[11]=1;state=changeUsernameNotEmpty};
		 ::atomic{state=Main};
		 ::(Wifi==OFF && AirplaneMode==OFF)->atomic{Wifi=ON;action[3]=1;state=changeWifiON};
		 ::(Wifi==ON)->atomic{Wifi=OFF;action[3]=1;state=changeWifiOFF};
		 ::(Username==Empty)->atomic{Username=NotEmpty;action[11]=1;state=changeUsernameNotEmpty};
	  fi
/*
*/////////////////////////////////////// ---screen: LogIn////////////////////////////////////////////////
*/

	::(state==LogIn)->
	  if
		 ::atomic{state=LoginByUsername};
		 ::atomic{state=LoginByEmail};
	  fi
/*
*/////////////////////////////////////// ---screen: Main////////////////////////////////////////////////
*/

	::(state==Main)->
	  if
		 ::atomic{state=Setting};
	  fi
	::(state==changeemailNotEmpty)->
	  if
		 ::(action[16]==1 && action[18]==0)->atomic{action[16]=0;state=LoginByEmail};
		 ::(action[18]==1)->atomic{userName=NotEmpty;action[18]=1;state=changeuserNameNotEmpty};
		 ::(action[16]==1 && action[18]==0)->atomic{action[16]=0;state=LoginByEmail};
		 ::(action[18]==1)->atomic{userName=NotEmpty;action[18]=1;state=changeuserNameNotEmpty};
	  fi
	::(state==changeBluetoothON)->
	  if
		 ::(action[19]==0 && action[4]==1)->atomic{action[4]=0;state=Setting};
		 ::(action[19]==0 && action[4]==1)->atomic{action[4]=0;state=Setting};
	  fi
	::(state==changeAirplaneModeOFF)->
	  if
		 ::(action[19]==1)->atomic{action[19]=0;state=Setting};
		 ::(action[19]==1)->atomic{action[19]=0;state=Setting};
	  fi
	::(state==changeUsernameNotEmpty)->
	  if
		 ::(action[11]==1)->atomic{action[11]=0;state=Setting};
		 ::(action[11]==1)->atomic{action[11]=0;state=Setting};
		 ::(action[11]==1)->atomic{action[11]=0;state=Setting};
		 ::(action[11]==1)->atomic{action[11]=0;state=Setting};
	  fi
	::(state==changeWifiON)->
	  if
		 ::(action[19]==0 && action[3]==1)->atomic{action[3]=0;state=Setting};
		 ::(action[19]==0 && action[3]==1)->atomic{action[3]=0;state=Setting};
	  fi
	::(state==changeBluetoothOFF)->
	  if
		 ::(action[19]==0 && action[4]==1)->atomic{action[4]=0;state=Setting};
		 ::(action[19]==1 && action[4]==1)->atomic{action[4]=0;state=changeAirplaneModeON};
		 ::(action[19]==0 && action[4]==1)->atomic{action[4]=0;state=Setting};
		 ::(action[19]==1 && action[4]==1)->atomic{action[4]=0;state=changeAirplaneModeON};
	  fi
	::(state==changeuserNameNotEmpty)->
	  if
		 ::(action[16]==0 && action[18]==1)->atomic{action[18]=0;state=LoginByUsername};
		 ::(action[16]==1 && action[18]==1)->atomic{action[18]=0;state=changeemailNotEmpty};
		 ::(action[16]==0 && action[18]==1)->atomic{action[18]=0;state=LoginByUsername};
		 ::(action[16]==1 && action[18]==1)->atomic{action[18]=0;state=changeemailNotEmpty};
	  fi
	::(state==changeAirplaneModeON)->
	  if
		 ::(action[19]==1 && action[4]==0 && action[3]==0)->atomic{action[19]=0;state=Setting};
		 ::(action[4]==1)->atomic{Bluetooth=OFF;action[4]=1;state=changeBluetoothOFF};
		 ::(action[3]==1)->atomic{Wifi=OFF;action[3]=1;state=changeWifiOFF};
		 ::(action[19]==1 && action[4]==0 && action[3]==0)->atomic{action[19]=0;state=Setting};
		 ::(action[4]==1)->atomic{Bluetooth=OFF;action[4]=1;state=changeBluetoothOFF};
		 ::(action[3]==1)->atomic{Wifi=OFF;action[3]=1;state=changeWifiOFF};
	  fi
	::(state==changeWifiOFF)->
	  if
		 ::(action[19]==1 && action[3]==1)->atomic{action[3]=0;state=changeAirplaneModeON};
		 ::(action[19]==0 && action[3]==1)->atomic{action[3]=0;state=Setting};
		 ::(action[19]==1 && action[3]==1)->atomic{action[3]=0;state=changeAirplaneModeON};
		 ::(action[19]==0 && action[3]==1)->atomic{action[3]=0;state=Setting};
	  fi
od
}
