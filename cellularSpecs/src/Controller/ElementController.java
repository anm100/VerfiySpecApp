package Controller;

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
}
