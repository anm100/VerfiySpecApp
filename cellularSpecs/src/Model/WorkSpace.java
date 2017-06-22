package Model;

import java.io.Serializable;
import java.util.*;
import java.util.Map.Entry;

import Controller.FormulaTranslate;
import our.Utils.Logger;

public class WorkSpace implements Serializable { 

private  String  workSpaceName;
private String workSpaceLocation;
private  HashMap <String,ChangeScreen> ChangeScreen = new HashMap <String,ChangeScreen>();
private static WorkSpace instance =null ; 
private static ArrayList<Requirement> reqlist;
private final static Logger logger=new Logger();
/*
 * number of screens on workspace 
 */public static int numScreen;

private   boolean IsPressed;
private HashMap <String,Screen> screensMap ; 
private HashMap <String,Param> ParamsMap ; 

public boolean IsClicked;

private  WorkSpace()
{
		this.workSpaceLocation=System.getProperty("user.dir");
		this.IsPressed=false;
		screensMap=new HashMap<String,Screen>();
		ParamsMap=new HashMap<String,Param>();
		this.IsClicked=false;
		numScreen=1; 
		reqlist=(new RequirementList()).getReqlist();
}


public  static WorkSpace getInstance()
{
	if(null==instance ){
	instance=new WorkSpace();
	}
	return instance;
		
}


public static void setInstance(WorkSpace instance) {
	WorkSpace.instance = instance;
}
public static Logger getLog() {
	return logger;
}
public void addScreen(Screen s){
	this.screensMap.put(s.getScreenName(),s);	
}
public void deleteScreen(Screen s){
	this.screensMap.remove(s);	
}
public void updateScreen(Screen s){
	this.screensMap.remove(s.getScreenName());
	this.screensMap.put(s.getScreenName(),s);	
}
public Screen getScreenByName(String screenName){
	return this.screensMap.get(screenName);
}
public Param getParamsByName(String paramName){
	return this.ParamsMap.get(paramName);
}
public boolean isIsPressed() {
	return IsPressed;
}
/**
 * @return the workSpaceName
 */
public String getWorkSpaceName() {
	return workSpaceName;
}

/**
 * @param workSpaceName the workSpaceName to set
 */
public void setWorkSpaceName(String workSpaceName) {
	this.workSpaceName = workSpaceName;
}

/**
 * @return the isPressed
 */
public boolean getIsPressed() {
	return IsPressed;
}

public HashMap<String,Screen> getScreensMap() {
	return screensMap;
}


/**
 * @param isPressed the isPressed to set
 */
public boolean getisIsClicked() {
	return IsClicked;
}
public static ArrayList<Requirement> getReqlist() {
	return reqlist;
}
public static void setReqlist(ArrayList<Requirement> reqlist) {
	WorkSpace.reqlist = reqlist;
}
public void setIsClicked(boolean isClicked) {
	IsClicked = isClicked;
}
public void setIsPressed(boolean isPressed) {
	IsPressed = isPressed;
}

public HashMap<String, Param> getParamsMap() {
	return ParamsMap;
}
public void addParameterToHash(Param p){
	this.ParamsMap.put(p.getParamName(),p);	
}
public void updatParameterInHash(String ParameterName , Param p){
	this.ParamsMap.remove(ParameterName);
	this.ParamsMap.put(ParameterName,p);	
}
public void removeParameterInHash(String ParameterName){
	this.ParamsMap.remove(ParameterName);
}
public String getWorkSpaceLocation() {
	return workSpaceLocation;
}

public void setWorkSpaceLocation(String workSpaceLocation) {
	this.workSpaceLocation = workSpaceLocation;
}
public void addChangeScreen(ChangeScreen changeScreen) {
	ChangeScreen.put(changeScreen.getScreenName(), changeScreen);
}
public ChangeScreen getChangeScreenByname(String ChangeScreenName){
	
	return this.ChangeScreen.get("change"+ChangeScreenName);
}
public  String getBlockChangeScreen(){
	String out = new String (""); 
		
		Iterator<Entry<String,ChangeScreen>> it =ChangeScreen.entrySet().iterator();
	ChangeScreen state;
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			 state =(ChangeScreen)pair.getValue();
			 out+=state.getStringPromela()+"\n";
		}
	
//	String[] changeScreens= s.getChangeStates().split(",");
//	for (int i=0 ;i<changeScreens.length;i++){
//	ChangeScreenName.put(changeScreens[i], new Screen(changeScreens[i]));
//		out+= (new Screen(changeScreens[i])).getStringPromela()+"\n";
//	}
	
	return  out ; 
}
public void setAllChangeScreen(){
	Element e ;
	Screen s ; 
	Iterator<Entry<String, Screen>> it = getScreensMap().entrySet().iterator();
	while(it.hasNext()){
		Map.Entry pair =(Map.Entry) it.next(); 
		s= (Screen)pair.getValue();
	
	Iterator<Entry<String, Element>> it2 = s.getElementsMap().entrySet().iterator();
	while(it2.hasNext()){
		Map.Entry pair2 =(Map.Entry) it2.next(); 
		e= (Element)pair2.getValue();
		WorkSpace.getLog().debug("set Change State");
		if (e.getType().equals(ElementType.getOnOffType())){
		addChangeScreen(new ChangeScreen(e.getParamName()+"OFF"));
		addChangeScreen(new ChangeScreen(e.getParamName()+"ON"));

								
			}else if (e.getType().equals(ElementType.getEmptyNotEmptyType())){
		
				addChangeScreen(new ChangeScreen(e.getParamName()+"NotEmpty"));

			}

		}
	}
	
}
public  String getAllChangeStates(){
	Map.Entry pair;
	String states;
	ChangeScreen changeScreen ;
	Iterator it ;
	it = this.ChangeScreen.entrySet().iterator();
	if(it.hasNext()){
	pair =(Map.Entry) it.next(); 
	changeScreen= (ChangeScreen)pair.getValue();
	 states=changeScreen.getScreenName();
	}else {
		 states=new String("");
	}
;
	while(it.hasNext()){
		pair =(Map.Entry) it.next(); 
		changeScreen= (ChangeScreen)pair.getValue();
		states+=","+changeScreen.getScreenName();
		//FormulaTranslate.addtoChangeStates("Change"+this.getScreenName()+e.getParamName());
		}		
	
	
	return states;
}

}
