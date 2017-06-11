package our.Utils;

import Model.Action;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.OnOffType;
import Model.Param;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;

public class BulidSpec {
	
	static WorkSpace wk;

	public static void build(){
		WorkSpace.getLog().debug("start loading spec");
		WorkSpace.setInstance(null); 
		wk=WorkSpace.getInstance();
		wk.setWorkSpaceName("example ");
		WorkSpace.getLog().debug("SPEC NAME:"+wk.getWorkSpaceName());
		addParmsOnOff();
		WorkSpace.getLog().debug("loading params onOFF_i");
		
		addScreens();
		WorkSpace.getLog().debug("adding screens");
		addelements();
		WorkSpace.getLog().debug("adding elements for screen ");
		WorkSpace.setInstance(wk); 
	}
	

	private static void addScreens(){
	
		wk.addScreen(new Screen("loginScreen", 38, 102, "login for app"));
		wk.addScreen(new Screen("setting", 210, 102, "login for app"));
//		wk.addScreen("createNewEvent", new Screen("createNewEvent", 375, 102, " The user creates new event. Upon creating the event the user becomes the moderator of the event."));
		wk.addScreen( new Screen("mainScreen", 535, 102, "setting app"));

	}
	private  static void addelements(){
		/*
		 *data for setting		
		 */
		addElementONOFF("setting",new String[] {"wifi","bluetooth","airplane_mode"});
		addAction("setting","airplane_mode");
		addElementONOFF("mainScreen",new String[] {"aaaa","bbbb","cccc"});
		StandartButtonType s; 
		/* 
		 * data for  log in screen 
		 */
		
		// login button 
		s = new StandartButtonType();
		s.setElementName("log in");
		s.setTransition("loginScreen","mainScreen");
		wk.getScreenByName("loginScreen").addElement(s);
		addElemenEmpty("loginScreen",new String[] {"user","pass"});
		addConditions("loginScreen","log in", new String [] {"user","pass"}); 

		
	
		/*
		 * add data to create event
		 */
	//	s = new StandartButtonType();
	//	s.setElementName("save");
	//	s.setTransition("createNewEvent","mainScreen");
	//	wk.getScreenByName("createNewEvent").addElement(s);
		//addElemenEmpty("createNewEvent",new String[] {"title", "description", "date", "time","more_details",});
//	addConditions("createNewEvent","save", new String [] {"title", "description", "date", "time"}); 

	}
	
	
		private static void addElemenEmpty(String screenName, String [] fields){
			EmptyNEmptyType e; 
			Param p; 
			for (int i=0 ; i< fields.length; i++){
				e = new EmptyNEmptyType();
				e.setElementName(fields[i]);
				p = new Param(fields[i],"Empty", ElementType.getEmptyNotEmptyType());
				e.setParam(p);
				wk.addParameterToHash(p);
				wk.getScreenByName(screenName).addElement(e);
			}
			
			
		}
		private static void addElementONOFF(String screenName, String [] fields){
			OnOffType e; 
			Param p; 
			for (int i=0 ; i< fields.length; i++){
				WorkSpace.getLog().debug("add element: "+fields[i]+" to "+screenName);
				e = new OnOffType();
				e.setElementName(fields[i]);
				p = new Param(fields[i],"OFF", ElementType.getOnOffType());
				e.setParam(p);
				wk.addParameterToHash(p);
				wk.getScreenByName(screenName).addElement(e);
			}
			
			
		}
		private static void addConditions(String screenName,String button, String [] fields) {
			/*
			 * for log in screen 
			 */
			// TODO Auto-generated method stub
			StandartButtonType s;
			EmptyNEmptyType e1;
			s=(StandartButtonType) wk.getScreenByName(screenName).getElementByName(button);
			for (int i=0 ; i<fields.length;i++){
				e1=(EmptyNEmptyType) wk.getScreenByName(screenName).getElementByName(fields[i]);
				s.addCondition(e1.getParamName(),"==","NotEmpty");
			}
			//update element 
			wk.getScreenByName(screenName).addElement(s);
			
		/*
		 * ==== for create new event 
		 */
		}
		private static void addAction(String screenName,String elementName){
			WorkSpace.getLog().debug("add action to Airplane MODE");
			OnOffType e = (OnOffType) wk.getScreenByName(screenName).getElementByName(elementName);
			Action action =new Action("wifi=OFF");
			action.addCond("airplane_mode==ON");
			e.addAction(action);
			
			action =new Action("bluetooth=OFF");
			action.addCond("airplane_mode==ON");
			e.addAction(action);
			
			//update 
			wk.getScreenByName(screenName).addElement(e);

		}
		private static void addParmsOnOff(){
			for (int i=0; i<10;i++){
			Param p = new Param("onOff_"+i, "OFF", ElementType.getOnOffType());
				wk.addParameterToHash(p);
				WorkSpace.getLog().debug("add to hash params"+p.getParamName());

				
			}
		}
	}
