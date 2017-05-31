package Controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Element;
import Model.Param;
import Model.Screen;
import Model.WorkSpace;

public class ElementController {
	
	public static boolean elementIsExist(String sName,String eName ){
		if(eName == null){
			return false ; 
		}
		Screen s=WorkSpace.getInstance().getScreenByName(sName); 
		if (s.getElementByName(eName)== null){
			return false; 
		}
		return true; 
	}
	public static ArrayList<String> getDataOfElement(String screenName,String elementName){//get all the parameters arraylist
		ArrayList<String> s = new ArrayList<>(); 
		Element e =  WorkSpace.getInstance().getScreenByName(screenName).getElementByName(elementName);
		s.add(e.getELementName());
		s.add(e.getParamName());
		s.add(e.getParamVal());
		
	return s ; 
	}
	
	}

