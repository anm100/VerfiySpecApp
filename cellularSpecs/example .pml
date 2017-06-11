#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={mainScreen,loginScreen,setting
,Changesettingairplane_mode,Changesettingwifi,Changesettingbluetooth,changesettingairplane_mode,changesettingwifi,changesettingbluetooth}

/*define flag for action */
byte action[18];

/*define params and default value*/
byte wifi=OFF;
byte pass=Empty;
byte aaaa=OFF;
byte bbbb=OFF;
byte cccc=OFF;
byte onOff_0=OFF;
byte airplane_mode=OFF;
byte onOff_2=OFF;
byte onOff_1=OFF;
byte onOff_4=OFF;
byte bluetooth=OFF;
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
		 ::(aaaa==ON)->atomic(aaaa=OFF;action[13]=1;state=changemainScreenaaaa);
		 ::(aaaa==OFF)->atomic(aaaa=ON;action[13]=1;state=changemainScreenaaaa);
		 ::(bbbb==ON)->atomic(bbbb=OFF;action[14]=1;state=changemainScreenbbbb);
		 ::(bbbb==OFF)->atomic(bbbb=ON;action[14]=1;state=changemainScreenbbbb);
		 ::(cccc==ON)->atomic(cccc=OFF;action[15]=1;state=changemainScreencccc);
		 ::(cccc==OFF)->atomic(cccc=ON;action[15]=1;state=changemainScreencccc);
		 ::
		 ::
		 ::(aaaa==ON)->atomic(aaaa=OFF;action[13]=1;state=changemainScreenaaaa);
		 ::(aaaa==OFF)->atomic(aaaa=ON;action[13]=1;state=changemainScreenaaaa);
		 ::(bbbb==ON)->atomic(bbbb=OFF;action[14]=1;state=changemainScreenbbbb);
		 ::(bbbb==OFF)->atomic(bbbb=ON;action[14]=1;state=changemainScreenbbbb);
		 ::(cccc==ON)->atomic(cccc=OFF;action[15]=1;state=changemainScreencccc);
		 ::(cccc==OFF)->atomic(cccc=ON;action[15]=1;state=changemainScreencccc);
		 ::
		 ::
	  fi
	::(state==changemainScreenbbbb)->
	  if
		 ::(action[14]==1)->atomic(action[14]=0;state=mainScreen)
		 ::
		 ::
	  fi
	::(state==changemainScreencccc)->
	  if
		 ::(action[15]==1)->atomic(action[15]=0;state=mainScreen)
		 ::
		 ::
	  fi
	::(state==changemainScreenaaaa)->
	  if
		 ::(action[13]==1)->atomic(action[13]=0;state=mainScreen)
		 ::
		 ::
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen mainScreen////////////////////////////////////////////////
*/

	::(state==loginScreen)->
	  if
		 ::(pass==Empty)->atomic(pass=NotEmpty;state=changeloginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=mainScreen); /* log in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;state=changeloginScreenuser);
		 ::
		 ::
		 ::(pass==Empty)->atomic(pass=NotEmpty;state=changeloginScreenpass);
		 ::(user==NotEmpty && pass==NotEmpty)->atomic(state=mainScreen); /* log in Button */
		 ::(user==Empty)->atomic(user=NotEmpty;state=changeloginScreenuser);
		 ::
		 ::
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
		 ::
		 ::
		 ::(airplane_mode==ON)->atomic(airplane_mode=OFF;action[12]=1;state=changesettingairplane_mode);
		 ::(airplane_mode==OFF)->atomic(airplane_mode=ON;action[12]=1;state=changesettingairplane_mode);
		 ::(wifi==ON)->atomic(wifi=OFF;action[10]=1;state=changesettingwifi);
		 ::(wifi==OFF)->atomic(wifi=ON;action[10]=1;state=changesettingwifi);
		 ::(bluetooth==ON)->atomic(bluetooth=OFF;action[11]=1;state=changesettingbluetooth);
		 ::(bluetooth==OFF)->atomic(bluetooth=ON;action[11]=1;state=changesettingbluetooth);
		 ::
		 ::
	  fi
	::(state==changesettingairplane_mode)->
	  if
		 ::(action[12]==1)->atomic(action[12]=0;state=setting)
		 ::
		 ::
	  fi
	::(state==changesettingwifi)->
	  if
		 ::(action[10]==1)->atomic(action[10]=0;state=setting)
		 ::
		 ::
	  fi
	::(state==changesettingbluetooth)->
	  if
		 ::(action[11]==1)->atomic(action[11]=0;state=setting)
		 ::
		 ::
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen setting////////////////////////////////////////////////
*/

od
}
