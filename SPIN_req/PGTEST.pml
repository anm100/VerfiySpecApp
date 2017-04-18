#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
 
mtype = {LoginScreen,RegisterScreen,SearchScreen,ManageAppScreen,AddNewCategory,PendingNewRequestScreen,
BoPo_MainSreen,MyEventScreen,Notification,EventScreen,GiveARide,GetARide,PersonaScreen,PersonScreen,CallingScreen,
ProfileScreen,SettingScreen,aboutUsScreen,CreateNewEvent,ChangePasswordScreen,ChooseLocationScreen,
RequestToCreateNewCategoryScreen,NotificationScreen,ChangeusernameParm,ChangePasswordParm};

byte title=Empty;
byte max=Empty;
byte chooseCategory=Empty;
byte approve =OFF;
byte username=Empty;
byte password=Empty
byte IsUserNameChanged=0
byte IsUseePasswordChanged=0
mtype state=LoginScreen;

ltl r1 {[]((state==BoPo_MainSreen)->((title==NotEmpty)&&(max==NotEmpty)&&(chooseCategory==NotEmpty)))}
active proctype vm()
{
do

:: {state==LoginScreen}->atomic{state=ChangeusernameParm;IsUserNameChanged=1};state=LoginScreen
:: {state==LoginScreen}->atomic{state=ChangePasswordParm;IsUseePasswordChanged=1};state=LoginScreen
:: {state==LoginScreen}->
	if 
	::	(IsUseePasswordChanged==1 && IsUseePasswordChanged==1)-> atomic{state=BoPo_MainSreen}
	fi
::{state==LoginScreen}->atomic{state=RegisterScreen};

od
}



