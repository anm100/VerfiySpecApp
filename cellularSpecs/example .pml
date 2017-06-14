#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={mainScreen,loginScreen,setting
,Changesettingairplane_mode,Changesettingwifi,Changesettingbluetooth}

/*define flag for action */
byte action[17];

/*define params and default value*/
byte wifi=OFF;
byte pass=Empty;
byte ahmad=OFF;
byte onOff_0=OFF;
byte airplane_mode=OFF;
byte onOff_2=OFF;
byte onOff_1=OFF;
byte onOff_4=OFF;
byte bluetooth=OFF;
byte saeed=OFF;
byte onOff_3=OFF;
byte onOff_6=OFF;
byte onOff_5=OFF;
byte onOff_8=OFF;
byte onOff_7=OFF;
byte onOff_9=OFF;
byte user=Empty;

active proctype vm(){
 do
	::(state==mainScreen)->
	  if
		 ::(saeed==ON)->atomic(saeed=OFF;action[14]=1;state=changemainScreensaeed);
		 ::(saeed==OFF)->atomic(saeed=ON;action[14]=1;state=changemainScreensaeed);
		 ::(ahmad==ON)->atomic(ahmad=OFF;action[13]=1;state=changemainScreenahmad);
		 ::(ahmad==OFF)->atomic(ahmad=ON;action[13]=1;state=changemainScreenahmad);
	  fi
	::(state==changemainScreenahmad)->
	  if
		 ::(cond)->atomic(actions;state=mainScreen)
	  fi
	::(state==changemainScreensaeed)->
	  if
		 ::(cond)->atomic(actions;state=mainScreen)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen mainScreen////////////////////////////////////////////////
*/

	::(state==loginScreen)->
	  if
		 ::(pass==Empty)->atomic(pass=NotEmpty;action[16]=1;state=changeloginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=mainScreen); /* log in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;action[15]=1;state=changeloginScreenuser);
	  fi
	::(state==changeloginScreenlog in)->
	  if
	  fi
	::(state==changeloginScreenpass)->
	  if
		 ::(action[16]==1)->atomic(action[16]=0;state=loginScreen)
	  fi
	::(state==changeloginScreenuser)->
	  if
		 ::(action[15]==1)->atomic(action[15]=0;state=loginScreen)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen loginScreen////////////////////////////////////////////////
*/

	::(state==setting)->
	  if
		 ::(airplane_mode==ON)->atomic(airplane_mode=OFF;action[12]=1;state=changesettingairplane_mode);
		 ::(airplane_mode==OFF)->atomic(airplane_mode=ON;action[12]=1;state=changesettingairplane_mode);
		 ::(wifi==ON)->atomic(wifi=OFF;action[10]=1;state=changesettingwifi);
		 ::(wifi==OFF)->atomic(wifi=ON;action[10]=1;state=changesettingwifi);
		 ::(bluetooth==ON)->atomic(bluetooth=OFF;action[11]=1;state=changesettingbluetooth);
		 ::(bluetooth==OFF)->atomic(bluetooth=ON;action[11]=1;state=changesettingbluetooth);
	  fi
	::(state==changesettingairplane_mode)->
	  if
		 ::(cond)->atomic(actions;state=setting)
	  fi
	::(state==changesettingwifi)->
	  if
		 ::(cond)->atomic(actions;state=setting)
	  fi
	::(state==changesettingbluetooth)->
	  if
		 ::(cond)->atomic(actions;state=setting)
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen setting////////////////////////////////////////////////
*/

od
}
