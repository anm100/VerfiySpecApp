package our.Utils;

import Model.Element;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.Param;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;
import ToolGUI.EmptyNotEmptyGUI;

public class BulidSpec {
	
	static WorkSpace wk=WorkSpace.getInstance();

	public static void build(){
		wk.setWorkSpaceName("spec automat building");
		addScreens();
		addelements();
		WorkSpace.setInstance(wk); 
	}
	
	private static void addScreens(){
	
		wk.addScreen("loginScreen", new Screen("loginScreen", 38, 102, "login for app"));
		wk.addScreen("screen2", new Screen("screen2", 225, 102, "login for app"));
		wk.addScreen("createNewEvent", new Screen("createNewEvent", 390, 102, "login for app"));
		
	}
	private  static void addelements(){
		StandartButtonType e = new StandartButtonType();
		e.setElementName("log in");
		e.setTransition("loginScreen","screen2");
		wk.getScreenByName("loginScreen").addElement(e.getParamName(), e);
		EmptyNEmptyType e1 = new EmptyNEmptyType();
		e1.setElementName("user");
		Param p = new Param("user", "Empty", ElementType.getEmptyNotEmptyType());
		e1.setParam(p);
		wk.getScreenByName("loginScreen").addElement(e1.getParamName(), e1);
		WorkSpace.getInstance().addParameterToHash(e1.getParamName(), p);
	}
}

/*
 * -DEBUG: mouse pressed method -screenGUI name is screen1
-DEBUG: get from hash screen1:before is x:0 Y:0
-DEBUG: get from hash screen1:update is x:38 Y:102
-DEBUG: screenGUI added successfully ,update coordinate X + Y in workspace hash
-DEBUG: do_AddScreen.. 
-DEBUG: this screen name  added -> screen2
-DEBUG: mouse pressed method -screenGUI name is screen2
-DEBUG: get from hash screen2:before is x:38 Y:102
-DEBUG: get from hash screen2:update is x:225 Y:103
-DEBUG: screenGUI added successfully ,update coordinate X + Y in workspace hash
-DEBUG: do_AddScreen.. 
-DEBUG: this screen name  added -> screen3
-DEBUG: mouse pressed method -screenGUI name is screen3
-DEBUG: get from hash screen3:before is x:225 Y:103
-DEBUG: get from hash screen3:update is x:394 Y:102
-DEBUG: screenGUI added successfully ,update coordinate X + Y in workspace hash
-DEBUG: do_AddScreen.. 
-DEBUG: this screen name  added -> screen4
-DEBUG: mouse pressed method -screenGUI name is screen4
-DEBUG: get from hash screen4:before is x:394 Y:102
-DEBUG: get from hash screen4:update is x:568 Y:101
-DEBUG: screenGUI added successfully ,update coordinate X + Y in workspace hash

 */
