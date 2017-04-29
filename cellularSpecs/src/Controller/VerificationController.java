package Controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Screen;
import Model.WorkSpace;
import ToolGUI.ScreenGUI;
import ToolGUI.VerifySpecGUI;

public class VerificationController {

	public static void addToRequirmentList(VerifySpecGUI verifySpecGUI) {
		int i;
		for(i=0;i<9;i++)
		{

		}
		
	}
	public static String translateToPROMELA(){
		WorkSpace w  =WorkSpace.getInstance();
		return "mytype={"+getAllScreenName()
						 +"};\n"
						 +"do"
						 +getLTLReq()
						 +getPG()
						 +"od";
	}
	private static String getLTLReq() {
		// TODO Auto-generated method stub
		return null;
	}
	private static String getPG() {
		// TODO Auto-generated method stub
		String sAll = new String("");
		Screen s = new Screen(); 
		Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			s= (Screen)pair.getValue();	
			sAll+=s.getStringPromela()+"\n";
			
		}
		return null;
	}
	private static String getAllScreenName(){
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
