package Controller;

import java.io.FileReader;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Screen;
import Model.WorkSpace;
import ToolGUI.VerifySpecGUI;

public class VerificationController {
	static VerifySpecGUI verifySpecGUI;
	public static void addToRequirmentList(VerifySpecGUI verifySpecGUI) {
		String st=verifySpecGUI.getReq().get(1).getText().toString();
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
		return "mytype={"+ScreenController.getAllScreenName()
						 +WorkSpace.getInstance().getChangeStates()+""
						 +getLTLReq()
						 +"active proctype vm()\n{\n"
						 +"do\n"
						 +getPG()
						 +"od\n}";
	}

	private static String getLTLReq() {
		String st="";
		Router.getInstance().getRequirementList().getReqlist().get(0);
		for(int i=0;i<Router.getInstance().getRequirementList().getReqlist().size();i++)
		{
			if(Router.getInstance().getRequirementList().getReqlist().get(i).isSelected())
			st+=Router.getInstance().getRequirementList().getReqlist().get(i).getFormula()+"\n";
		}
		return st;
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


	

	public static   void selectReqNum(boolean flag,int reqNum) {
		 Router.getInstance().getRequirementList().getReqlist().get(reqNum).setSelected(flag);;
	
	}


}
