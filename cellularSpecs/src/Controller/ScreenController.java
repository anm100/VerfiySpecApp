package Controller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Element;
import Model.Screen;
import Model.WorkSpace;
import ToolGUI.ScreenGUI;

public class ScreenController {
	
	public static ArrayList<Element> getAllparms(){
		ArrayList<Element> params = new ArrayList<Element>(); 
		Screen s ;
		Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			s= (Screen)pair.getValue();			
			Iterator<Entry<String, Element>> it_element = s.getElementsMap().entrySet().iterator();
			while (it_element.hasNext()){
				Map.Entry pair_element =(Map.Entry) it_element.next(); 
				params.add((Element)pair_element.getValue());	
			}
		}
	return params; 	
		
	}
	

}
