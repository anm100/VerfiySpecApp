	

mtype = {LoginScreen,RegisterScreen,SearchScreen,ManageAppScreen,AddNewCategory,PendingNewRequestScreen,
BoPo_MainSreen,MyEventScreen,Notification,EventScreen,GiveARide,GetARide,PersonaScreen,PersonScreen,CallingScreen,
ProfileScreen,SettingScreen,aboutUsScreen,CreateNewEvent,ChangePasswordScreen,ChooseLocationScreen,
RequestToCreateNewCategoryScreen,NotificationScreen,ChangeusernameParm,ChangePasswordParm};

mtype state=LoginScreen;
mtype screen[4]
int i=0;
ltl r2 {[]((state==LoginScreen) -> [](<>((state==screen[i]))))}
 proctype vm1()
{
do

:: state== LoginScreen ->
	if	
	::atomic{ state=BoPo_MainSreen;}
	::atomic{state=CreateNewEvent;}
	::(i<4)->i=i+1;
	::(i>=4)->i=0;
	fi
:: state== BoPo_MainSreen ->atomic{{state=CreateNewEvent;}}
:: state== CreateNewEvent ->atomic{{state=LoginScreen;}}	
od	
}
 proctype vm2()
{
int j=0;
do
::state=LoginScreen->atomic{screen[0]=LoginScreen;screen[1]=BoPo_MainSreen;screen[2]=CreateNewEvent;}
/*
screen[4]=SearchScreen;screen[5]=MyEventScreen;screen[6]=SettingScreen;
screen[7]=PersonScreen;screen[8]=Notification;screen[9]=aboutUsScreen;
screen[10]=PersonaScreen;screen[11]=AddNewCategory;screen[12]=ProfileScreen;
state= BoPo_MainSreen;break}
*/
od
}
	init
	{	 atomic{run vm2()};
		run vm1()
	}




 
