#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={setting
Changesettingairplane_mode,Changesettingwifi,Changesettingbluetooth,changesettingairplane_mode,changesettingwifi,changesettingbluetooth}

/*define flag for action */
byte action[3];

/*define params and default value*/
byte airplane_mode=OFF;
byte wifi=OFF;
byte bluetooth=OFF;

active proctype vm(){
 do
	::(state==setting)->
	  if
		 ::(airplane_mode==ON)->atomic(airplane_mode=OFF;action[5]=1;state=changesettingairplane_mode);
		 ::(airplane_mode==OFF)->atomic(airplane_mode=ON;action[5]=1;state=changesettingairplane_mode);
		 ::(wifi==ON)->atomic(wifi=OFF;action[3]=1;state=changesettingwifi);
		 ::(wifi==OFF)->atomic(wifi=ON;action[3]=1;state=changesettingwifi);
		 ::(bluetooth==ON)->atomic(bluetooth=OFF;action[4]=1;state=changesettingbluetooth);
		 ::(bluetooth==OFF)->atomic(bluetooth=ON;action[4]=1;state=changesettingbluetooth);
		 ::
		 ::
	  fi
	::(state==changesettingairplane_mode)->
	  if
		 ::(action[5]==1)->atomic(action[5]=0;state=setting)
		 ::
		 ::
	  fi
	::(state==changesettingwifi)->
	  if
		 ::(action[3]==1)->atomic(action[3]=0;state=setting)
		 ::
		 ::
	  fi
	::(state==changesettingbluetooth)->
	  if
		 ::(action[4]==1)->atomic(action[4]=0;state=setting)
		 ::
		 ::
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen setting////////////////////////////////////////////////
*/

od
}
