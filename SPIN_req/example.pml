mtype = {LoginScreen,RegisterScreen,SearchScreen,ManageAppScreen,AddNewCategory,PendingNewRequestScreen,
BoPo_MainSreen,MyEventScreen,Notification,EventScreen,GiveARide,GetARide,PersonaScreen,PersonScreen,CallingScreen,
ProfileScreen,SettingScreen,aboutUsScreen,CreateNewEvent,ChangePasswordScreen,ChooseLocationScreen,
RequestToCreateNewCategoryScreen,NotificationScreen,ChangeusernameParm,ChangePasswordParm,ChangeAirplaneMode,ChangeWifi,changebluParam};

mtype state=LoginScreen;
mtype screen[4];
byte actions[5];
byte airplaneMode=0;
byte wifiParam=1; 
byte bluParam=1; 


	init
	{
		run vm1()
	}

 proctype vm1()
{
do
:: (state== LoginScreen) ->
	if	
	::atomic{ state=ChangeAirplaneMode;actions[0]=1}
	::(airplaneMode==1)->atomic{state=CreateNewEvent;}
	fi

:: (state== ChangeAirplaneMode) ->
	if	
	::(airplaneMode==0)->atomic{ state=ChangeWifi;airplaneMode=1;wifiParam=0;bluParam=0}
	fi

:: (state== ChangeWifi) ->
	if	
	::(actions[0]==1)->atomic{ state=changebluParam;wifiParam=0;}
	fi

:: (state== changebluParam) ->
	if	
	::(actions[0]==1)->atomic{ state=LoginScreen;actions[0]=0;bluParam=0}
	fi

:: state== CreateNewEvent ->atomic{{state=LoginScreen;}}	
od	
}




 
