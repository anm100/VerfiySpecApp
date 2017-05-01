package Controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Requirement;
import Model.Screen;
import Model.WorkSpace;
import ToolGUI.ScreenGUI;
import ToolGUI.VerifySpecGUI;

public class VerificationController {
	static VerifySpecGUI verifySpecGUI;
	public static void addToRequirmentList(VerifySpecGUI verifySpecGUI) {
		verifySpecGUI=verifySpecGUI;
		String st=verifySpecGUI.getReq().get(1).getText().toString();
		Requirement r=new Requirement();
		//r.
		//Router.getInstance().setRequirementList();
	/*	int i;
		for(i=0;i<9;i++)
		{

		}
		*/
	}
	public static String translateToPROMELA(){
		WorkSpace w  =WorkSpace.getInstance();
		return "mytype={"+getAllScreenName()
						 +"};\n"
						 +getLTLReq()
						 +"do"
						 +getPG()
						 +"od";
	}
	private static String getLTLReq() {
		
		return "r1\n";
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
		return sAll;
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
