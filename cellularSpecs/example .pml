#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mytype={mainScreen,loginScreen,setting
,Changesettingairplane_mode,Changesettingwifi,Changesettingbluetooth}

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
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen loginScreen////////////////////////////////////////////////
*/

	::(state==setting)->
	  if
		 ::
		 ::
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen setting////////////////////////////////////////////////
*/

od
}
