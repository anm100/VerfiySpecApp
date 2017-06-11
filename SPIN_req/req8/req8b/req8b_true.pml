mtype = {LoginScreen,RegisterScreen,SearchScreen,ManageAppScreen,AddNewCategory,PendingNewRequestScreen,
BoPo_MainSreen,MyEventScreen,Notification,EventScreen,GiveARide,GetARide,PersonaScreen,PersonScreen,CallingScreen,
ProfileScreen,SettingScreen,aboutUsScreen,CreateNewEvent,ChangePasswordScreen,ChooseLocationScreen,
RequestToCreateNewCategoryScreen,NotificationScreen,ChangeusernameParm,ChangePasswordParm,ChangeAirplaneMode,ChangeWifi,changebluParam};

mtype state=LoginScreen;
byte actions[5];
/*
actions 0:airplaneMode
		1:wifiParam
		2:bluParam
		  */
byte airplaneMode=0;
byte wifiParam=1; 
byte bluParam=1; 

ltl r8 {[]((airplaneMode==1)->((state==ChangeAirplaneMode || state==ChangeWifi || state==changebluParam)U(wifiParam==0) && (state==ChangeAirplaneMode || state==ChangeWifi || state==changebluParam)U(bluParam==0)))}

active proctype vm1()
{
do
:: (state== LoginScreen) ->
	if	
	::(airplaneMode==0)->atomic{ state=ChangeAirplaneMode;airplaneMode=1;actions[0]=1}
	::(airplaneMode==1)->atomic{state=CreateNewEvent;}
	fi

:: (state== ChangeAirplaneMode) ->
	if	
	::(airplaneMode==1)->atomic{ state=ChangeWifi;wifiParam=0;;actions[1]=1}
	fi

:: (state== ChangeWifi) ->
	if	
	::(actions[0]==1 && actions[1]==1)->atomic{ state=changebluParam;bluParam=0;actions[1]=0;actions[2]=1}
	::(actions[0]==0 && actions[1]==1 && wifiParam==1)->atomic{ state=CreateNewEvent;}
	::(actions[0]==0 && actions[1]==1 && wifiParam==0)->atomic{ state=CreateNewEvent;}
	fi

:: (state== changebluParam) ->
	if	
	::(actions[0]==1 && actions[1]==1 && actions[2]==1)->atomic{ state=LoginScreen;actions[0]=0;actions[2]=0}
	fi

:: (state== CreateNewEvent)->atomic{{state=CreateNewEvent;}}	
od	
}




 
