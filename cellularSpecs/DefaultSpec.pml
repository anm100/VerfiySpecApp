#define ON  1 
#define OFF 0 
#define Empty 2 
#define NotEmpty 3 
mtype={Screen2,Screen1,
}
mtype state= Setting;
/*define flag for action */
byte action[0];

/*define params and default value*/

active proctype vm(){
 do
	::(state==Screen2)->
	  if
			 ::atomic{state=Screen2};
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Screen2////////////////////////////////////////////////
*/

	::(state==Screen1)->
	  if
			 ::atomic{state=Screen1};
	  fi
/*
*/////////////////////////////////////// End of changeParamScreens for screen Screen1////////////////////////////////////////////////
*/

od
}
