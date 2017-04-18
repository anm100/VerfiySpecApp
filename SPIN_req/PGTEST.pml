#define ON  1
#define OFF 0
#define Empty 2
#define NotEmpty 3
#define male=4
#define gender=5
 
mtype = {LoginScreen,RegisterScreen,SearchScreen,ManageAppScreen,AddNewCategory,PendingNewRequestScreen,
BoPo_MainSreen,MyEventScreen,Notification,EventScreen,GiveARide,GetARide,PersonaScreen,PersonScreen,CallingScreen,
ProfileScreen,SettingScreen,aboutUsScreen,CreateNewEvent,ChangePasswordScreen,ChooseLocationScreen,
RequestToCreateNewCategoryScreen,NotificationScreen,Changeusernameparam,ChangePasswordparam,ChangeEmailparam,ChangePhoneNumberparam,Changegenderparam
ChangeTitleParam,ChangeDescriptionParam};

byte title=Empty;
byte description=Empty;
byte max=Empty;
byte chooseCategory=Empty;
byte approve =OFF;
byte username=Empty;
byte password=Empty
byte dateOfBirth=Empty	
byte email=Empty	
byte phoneNumber=Empty
byte gender=Empty
byte IsUserNameChanged=0
byte IsUseePasswordChanged=0
mtype state=LoginScreen;

ltl r1 {[]((state==BoPo_MainSreen)->((title==NotEmpty)&&(max==NotEmpty)&&(chooseCategory==NotEmpty)))}
active proctype vm()
{
do

:: {state==LoginScreen}->atomic{state=Changeusernameparam;username=NotEmpty};state=LoginScreen
:: {state==LoginScreen}->atomic{state=ChangePasswordparam;password=NotEmpty};state=LoginScreen
:: {state==LoginScreen}->
	if 
	::	(username==NotEmpty && password==NotEmpty)-> atomic{state=BoPo_MainSreen}
	fi
::{state==LoginScreen}->atomic{state=RegisterScreen};
::(state==RegisterScreen)->atomic{state=Changeusernameparam;username=NotEmpty;state=RegisterScreen;state=ChangePasswordparam;
password=NotEmpty;state=RegisterScreen;state=ChangeEmailparam;email=NotEmpty;state=RegisterScreen;state=ChangePhoneNumberparam;
phoneNumber=NotEmpty;state=RegisterScreen;state=Changegenderparam ;gender=NotEmpty;state=RegisterScreen;};state=BoPo_MainSreen;
::{state==BoPo_MainSreen}->atomic{state=CreateNewEvent}
::{state==CreateNewEvent}->atomic{state=ChangeTitleParam;title=NotEmpty;state=CreateNewEvent;state=ChangeDescriptionParam;
description=NotEmpty;state=CreateNewEvent;}state==BoPo_MainSreen;
od
}



