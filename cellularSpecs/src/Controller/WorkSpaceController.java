package Controller;

import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.swing.Action;
import javax.swing.JLabel;

import Model.Element;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.ListElementType;
import Model.MyAction;
import Model.MyCondition;
import Model.OnOffType;
import Model.ParamList;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;
import ToolGUI.AddParamterGUI;
import ToolGUI.AddScreenGUI;
import ToolGUI.ButtonTypeGUI;
import ToolGUI.EmptyNotEmptyGUI;
import ToolGUI.ListTypeGUI;
import ToolGUI.OnOfGUI;
import ToolGUI.ScreenGUI;
import Model.Param;

public class WorkSpaceController {
	
	public static void setup(String specName){
		if(Router.getInstance().getMainScreenGui() != null)
		{
			Router.getInstance().getMainScreenGui().dispose();
			WorkSpace.setInstance(null);
			WorkSpace.getInstance().setWorkSpaceName("Default SPEC");
		}
		WorkSpace.getInstance().setWorkSpaceName(specName);
		WorkSpace.getLog().debug("Create New Spec\n"+"spec name:"+specName);
	}
	public static void OpenSpecFromFile(String fileName){
		
		try (ObjectInputStream ois
			= new ObjectInputStream(new FileInputStream(fileName))) {

			WorkSpace.setInstance( (WorkSpace) ois.readObject());

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	
	}
	
	public static void createSpecGUI(){
	if(Router.getInstance().getMainScreenGui() !=null)
		Router.getInstance().getMainScreenGui().dispose();
		
		Router.getInstance().setMainScreenGui(WorkSpace.getInstance().getWorkSpaceName().toString());
		Router.getInstance().getMainScreenGui().setVisible(true);		
			Screen s ;
			Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
			while(it.hasNext()){
				Map.Entry pair =(Map.Entry) it.next(); 
				s= (Screen)pair.getValue();	
				Iterator<Entry<String, Element>> itElement=s.getElementsMap().entrySet().iterator();
				ScreenGUI screenTempGui=new ScreenGUI(s.getScreenName(),s.getCordinateX(),s.getCordinateY());
			screenTempGui.setLocation(s.getCordinateX(),s.getCordinateY());
			screenTempGui.addScreenMouseListener(Router.getInstance());
			screenTempGui.addScreenListener(Router.getInstance());
			
			while(itElement.hasNext()){
					Map.Entry pair2 =(Map.Entry) itElement.next(); 
					Element	element= (Element)pair2.getValue();
					screenTempGui.addElementLabel(element);
				}
		
			Router.getInstance().getMainScreenGui().getContentPane().add(screenTempGui);
			}
			Router.getInstance().getMainScreenGui().addMainScreenMouseListener((MouseListener)Router.getInstance());
			Router.getInstance().getMainScreenGui().addMainScreenMouseListener((MouseMotionListener)Router.getInstance());
			Router.getInstance().getMainScreenGui().refreshWorkspace();
		
	}
	public static void SaveSpecToFile(String fileName){
		try (ObjectOutputStream oos =
				new ObjectOutputStream(new FileOutputStream(fileName+".ser"))) {

			oos.writeObject(WorkSpace.getInstance());
			System.out.println("Done.. write to file "+fileName+".ser");

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
	
	public static void addelementToGUI(ScreenGUI screenGUI,ListTypeGUI elementGui,ListElementType l)
	{
	
		l.setElementName(elementGui.getElementName().getText());
		WorkSpace.getLog().debug("--show values for element :"+elementGui.getValues());
		l.setValues(elementGui.getValues());
		WorkSpace.getLog().debug("values from element :: update"+l.getValues()[0]);

		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l);
		WorkSpace.getLog().debug("add element to workspace struct");

		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();
		
	}
	public static void addelementToGUI(ScreenGUI screenGUI,EmptyNotEmptyGUI elementGui,EmptyNEmptyType l)
	{
	
		l.setElementName(elementGui.getElementName().getText());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();

	}
	public static void addelementToGUI(ScreenGUI screenGUI, OnOfGUI elementGui,	OnOffType l) {
		addToModels(screenGUI,elementGui,l);
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.setVisible(false);
	}

	public static void editEmentfromGUI(ScreenGUI screenGUI, OnOfGUI elementGui,OnOffType l) {

		//	WorkSpace.getLog().debug(((JLabel)screenGUI.getEventLabel().getComponent()).getText());
		String[] data=((JLabel)screenGUI.getEventLabel().getComponent()).getText().split(",");
		WorkSpace.getLog().debug(data[0]+" "+screenGUI.getScreenName());
		OnOffType e= (OnOffType) WorkSpace.getInstance().getScreenByName(screenGUI.getScreenName()).getElementByName(data[0]);
		WorkSpace.getLog().debug(e.getELementName());
        ((JLabel)screenGUI.getEventLabel().getComponent()).setText(elementGui.getElementName()+","+ElementType.getOnOffType());
        e.setElementName(elementGui.getElementName());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(e);
		((JLabel)screenGUI.getEventLabel().getComponent()).getParent().update(screenGUI.getGraphics());
		reomveFromModels(elementGui.getScreenName(),e);
		addToModels(screenGUI,elementGui,l);
	
	}
	public static void addToModels(ScreenGUI screenGUI, OnOfGUI elementGui, OnOffType l)	
	{
		//getConditions from OnOfGui givr me arraylist with the conditions to on->off 
		Param p=new Param(elementGui.getParameterName(),elementGui.getDefaultValue(),l.getType());
		ArrayList<String> con1=elementGui.get_Off_To_On_Condition();
		ArrayList<String> con2=elementGui.get_On_To_Off_Conditions();
		ArrayList<String> act1=elementGui.get_Off_To_ON_Actions();
		ArrayList<String> act2=elementGui.get_On_To_Off_Actions();
		for(String i : con1){
			p.addCond(new MyCondition(i,ElementType.getOn()));
			
		}
		for(String i : con2){
			p.addCond(new MyCondition(i, ElementType.getOff()));
			
		}
		for(String i : act1){
			p.addAction(new MyAction(i, ElementType.getOn()));
			
		}
		for(String i : act2){
			p.addAction(new MyAction(i, ElementType.getOff()));
			
		}
		l.setElementName(elementGui.getElementName());
		l.setParam(p);
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l);
		WorkSpace.getLog().debug("do  edit -->  "+l.getParamName());
		WorkSpace.getInstance().addParameterToHash(p);
		
		WorkSpace.getLog().debug("actions after update ");

		for (MyAction i : WorkSpace.getInstance().getParamsByName(p.getParamName()).getActions("ON")){
			WorkSpace.getLog().debug("\n"+i.getActionString());

		}
		WorkSpace.getLog().debug("--show element in GUI");
	}
	public static void reomveFromModels(String screenName,OnOffType oldOnOffType)	
	{
		WorkSpace.getLog().debug("WorkSpaceVontroller->remove from models"+oldOnOffType.getParamName());
		WorkSpace.getLog().debug("WorkSpaceVontroller->remove from models"+screenName);
		WorkSpace.getInstance().getScreenByName(screenName).remoceElement(oldOnOffType.getELementName());
		WorkSpace.getInstance().removeParameterInHash(oldOnOffType.getParamName());
	}
	public static void removelementfromGUI(ScreenGUI screenGUI, OnOfGUI elementGui,	OnOffType l) {


		Param p=new Param(elementGui.getParameterName(),elementGui.getDefaultValue(),l.getType());
		
		l.setParam(p);
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l);
		WorkSpace.getLog().debug("do "+l.getParamName());
		WorkSpace.getInstance().getParamsMap().put(elementGui.getParameterName(), p);
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();

	}
	
	public static void addScreenToGUI(AddScreenGUI addScreen,ScreenGUI screenGUI,int cordinateX,int cordinateY){
		Screen screen = new Screen();
		screen.setScreenName(addScreen.getScreenName().getText().toString());
		screen.setDescription(addScreen.getDescription().getText().toString());
		screen.setCordinateX(cordinateX);
		screen.setCordinateY(cordinateY);
		Router.getInstance().setGetNewLocation(true);
		 screenGUI=new ScreenGUI(screen.getScreenName(),screen.getCordinateX(),screen.getCordinateY());//there is a problem
		//screenGUI.addScreenListener(a);
		WorkSpace.getInstance().addScreen(screen);
		WorkSpace.getLog().debug("this screen name  added -> "+screen.getScreenName());

		
		screenGUI.addScreenMouseListener2(Router.getInstance());
		//mainScreenGui.setSpecNameLabel(WorkSpace.getInstance().getWorkSpaceName());
		Router.getInstance().getMainScreenGui().getContentPane().add(screenGUI);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		addScreen.dispose();
	}
	public static void addelementToGUI(ScreenGUI screenGUI, ButtonTypeGUI elementGui,StandartButtonType l) {
		int size;
		l.setElementName(elementGui.getElementName());
		size=elementGui.getRowsNumber();
		for(int i=0;i<size;i++)
		{
			String [] st=elementGui.readFromTable(i);
			l.addCondition(st[0], st[1], st[2]);
		}
		l.setTransition(screenGUI.getScreenName(), elementGui.getMoveTo());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l);
		WorkSpace.getLog().debug("do "+l.getELementName());
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();

	}

	public static void addNewParam(AddParamterGUI addparamter) {
		WorkSpace.getLog().debug("check type:"+addparamter.getParamType());
		if(addparamter.getParamType().equals(ElementType.getListType())){
			ParamList p =new ParamList(addparamter.getParameterName(), addparamter.getDefaultValue(), addparamter.getParamType());
			p.setValues(addparamter.getValues());
			WorkSpace.getInstance().addParameterToHash(p);
			WorkSpace.getLog().debug("add param list"+p.getParamName());
		}
		else {
			Param p =new Param(addparamter.getParameterName(), addparamter.getDefaultValue(), addparamter.getParamType());
			WorkSpace.getInstance().addParameterToHash(p);
			WorkSpace.getLog().debug("add param on/off - empty/notEmpty"+p.getParamName());
			WorkSpace.getLog().debug("getfrom hash param the parm"+WorkSpace.getInstance().getParamsMap().get(p.getParamName()));

		}
		

	}


}
