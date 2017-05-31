package our.Utils;

import Model.Element;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.OnOffType;
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
		wk.addScreen("screen2", new Screen("screen2", 210, 102, "login for app"));
		wk.addScreen("createNewEvent", new Screen("createNewEvent", 380, 102, "login for app"));
		
	}
	private  static void addelements(){
		Param p;
		StandartButtonType s; 
		EmptyNEmptyType e1;
		
		OnOffType on; 
		/*
		 * data for  log in screen 
		 */

		
		//add user field 
		e1 = new EmptyNEmptyType();
		e1.setElementName("user");
		p = new Param("user", "Empty", ElementType.getEmptyNotEmptyType());
		e1.setParam(p);
		wk.addParameterToHash(p.getParamName(), p);
		wk.getScreenByName("loginScreen").addElement(e1.getParamName(), e1);
		
		//add pass field
		e1 = new EmptyNEmptyType();
		e1.setElementName("pass");
		p = new Param("pass", "Empty", ElementType.getEmptyNotEmptyType());
		e1.setParam(p);
		wk.addParameterToHash(p.getParamName(), p);
		wk.getScreenByName("loginScreen").addElement(e1.getParamName(), e1);
		
		s = new StandartButtonType();
		s.setElementName("log in");
		s.setTransition("loginScreen","screen2");
		wk.getScreenByName("loginScreen").addElement(s.getParamName(),s);
		

		/*
		 *data for screen 2		
		 */
		String [] data ={"wifi","bluetooth","airplane_mode"};
		
		for (int i=0 ; i< data.length; i++){
			on = new OnOffType();
			on.setElementName(data[i]);
			p = new Param(data[i], "off", ElementType.getOnOffType());
			on.setParam(p);
			wk.addParameterToHash(p.getParamName(), p);
			wk.getScreenByName("screen2").addElement(on.getParamName(), on);
		}

		
	}
}