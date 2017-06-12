#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={setting
Changesettingairplane_mode,Changesettingwifi,Changesettingbluetooth}

/*define flag for action */
byte action[3];

/*define params and default value*/
byte airplane_mode=ON;
byte wifi=OFF;
byte bluetooth=OFF;

active proctype vm(){
 do
	::(state==setting)->
	  if
		 ::(airplane_mode==ON)->atomic(airplane_mode=OFF;action[3]=1;state=changesettingairplane_mode);
		 ::(airplane_mode==OFF)->atomic(airplane_mode=ON;action[3]=1;state=changesettingairplane_mode);
		 ::(wifi==ON)->atomic(wifi=OFF;action[0]=1;state=changesettingwifi);
		 ::(wifi==OFF)->atomic(wifi=ON;action[0]=1;state=changesettingwifi);
		 ::(bluetooth==ON)->atomic(bluetooth=OFF;action[1]=1;state=changesettingbluetooth);
		 ::(bluetooth==OFF)->atomic(bluetooth=ON;action[1]=1;state=changesettingbluetooth);
		 ::
		 ::
	  fi
	::(state==changesettingairplane_mode)->
	  if
		 ::(action[3]==1)->atomic(action[3]=0;state=setting)
		 ::
		 ::
	  fi
	::(state==changesettingwifi)->
	  if
		 ::(action[0]==1)->atomic(action[0]=0;state=setting)
		 ::
		 ::
	  fi
	::(state==changesettingbluetooth)->
	  if
		 ::(action[1]==1)->atomic(action[1]=0;state=setting)
		 ::
		 ::
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen setting////////////////////////////////////////////////
*/

od
}
