package Controller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Element;
import Model.ElementType;
import Model.Param;
import Model.Screen;
import Model.WorkSpace;
import ToolGUI.ScreenGUI;

public class ScreenController {
	
public static Element getElementByName(String elementName){
	
	ArrayList<Element> params = new ArrayList<Element>(); 
	Screen s ;
	
	Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
	while(it.hasNext()){
		Map.Entry pair =(Map.Entry) it.next(); 
		s= (Screen)pair.getValue();
		if (null != s.getElementByName(elementName)){
			return s.getElementByName(elementName); 
		}
	}
	return null ; 
		
	}
	@SuppressWarnings("rawtypes")
	public static ArrayList<Param> getparams(){
		ArrayList<Param> params = new ArrayList<Param>();
		Iterator<Entry<String, Param>> it = WorkSpace.getInstance().getParamsMap().entrySet().iterator();
		
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			params.add((Param)pair.getValue());	
			}
		
	return params; 	
	}
	@SuppressWarnings("rawtypes")
	public static ArrayList<Param> getparams(String type){
		ArrayList<Param> params = new ArrayList<Param>();
		Iterator<Entry<String, Param>> it = WorkSpace.getInstance().getParamsMap().entrySet().iterator();
		Param p;
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			 p =(Param)pair.getValue();
			if(p.getType().equals(type))
			{		
			params.add(p);	
			}
		}
	return params;
	}

	
	public static String getAllScreenName(){
		String sAll = new String("");
		Screen s = new Screen(); 
		Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			s= (Screen)pair.getValue();	
			sAll+=s.getScreenName()+",";
			
		}
		
		return sAll; 
	}
	

}
