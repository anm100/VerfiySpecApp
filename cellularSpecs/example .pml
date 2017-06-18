#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={Setting,LoginScreen,MainScreen
,ChangeMainScreensaeed,ChangeMainScreenahmad,changeMainScreenahmad,changeMainScreensaeed}

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

active proctype vm(){
 do
	::(state==Setting)->
	  if
		 ::(Airplane_mode==ON)->atomic(Airplane_mode=OFF;action[12]=1;state=changeSettingAirplane_mode);
		 ::(Airplane_mode==OFF)->atomic(Airplane_mode=ON;action[12]=1;state=changeSettingAirplane_mode);
		 ::(Bluetooth==ON)->atomic(Bluetooth=OFF;action[11]=1;state=changeSettingBluetooth);
		 ::(Bluetooth==OFF)->atomic(Bluetooth=ON;action[11]=1;state=changeSettingBluetooth);
		 ::(Wifi==ON)->atomic(Wifi=OFF;action[10]=1;state=changeSettingWifi);
		 ::(Wifi==OFF)->atomic(Wifi=ON;action[10]=1;state=changeSettingWifi);
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

	::(state==LoginScreen)->
	  if
		 ::(pass==Empty)->atomic(pass=NotEmpty;action[16]=1;state=changeLoginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=MainScreen); /* Log_in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;action[15]=1;state=changeLoginScreenuser);
	  fi
	::(state==changeLoginScreenuser)->
	  if
		 ::(action[15]==1)->atomic(action[15]=0;state=LoginScreen)
	  fi
	::(state==changeLoginScreenLog_in)->
	  if
	  fi
	::(state==changeLoginScreenpass)->
	  if
		 ::(action[16]==1)->atomic(action[16]=0;state=LoginScreen)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen LoginScreen////////////////////////////////////////////////
*/

	::(state==MainScreen)->
	  if
		 ::(saeed==ON)->atomic(saeed=OFF;action[14]=1;state=changeMainScreensaeed);
		 ::(saeed==OFF)->atomic(saeed=ON;action[14]=1;state=changeMainScreensaeed);
		 ::(ahmad==ON)->atomic(ahmad=OFF;action[13]=1;state=changeMainScreenahmad);
		 ::(ahmad==OFF)->atomic(ahmad=ON;action[13]=1;state=changeMainScreenahmad);
	  fi
	::(state==changeMainScreenahmad)->
	  if
		 ::(cond)->atomic(actions;state=MainScreen)
	  fi
	::(state==changeMainScreensaeed)->
	  if
		 ::(cond)->atomic(actions;state=MainScreen)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen MainScreen////////////////////////////////////////////////
*/

od
}
