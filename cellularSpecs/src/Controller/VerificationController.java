package Controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.swing.JCheckBox;

import Model.Requirement;
import Model.RequirementList;
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

	static void setRequiremens() {
		
		Requirement req1=new Requirement();
		req1.setReq("There is Always an exit from any screen.");
		req1.setrID("req1");
		req1.setFormula("ltl req1 {[]((state==BoPo_MainSreen) -> (<>(!(state==BoPo_MainSreen))))}");
		req1.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req1);
		
		Requirement req2=new Requirement();
		req2.setReq("There is a screen (root), such that each screen is reached from it.");
		req2.setrID("req2");
		req2.setFormula("null");
		req2.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req2);
		
		Requirement req3=new Requirement();
		req3.setReq("We can't  move from screen_j to screen_i without changing or defining a parameter.");
		req3.setrID("req3");
		req3.setFormula("ltl req3 {!(state==SignIn)  U (!((state==SignIn) -> ((state==changeParmX)U(state==BoPo_MainSreen))))}");
		req3.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req3);
		
		Requirement req4=new Requirement();
		req4.setReq("Parameter cannot accept value that is not defined in the List of the possible values.");
		req4.setrID("req4");
		req4.setFormula("ltl req4 {[](((ack==ON) ||(ack==OFF))->(!<>((!(ack==OFF))&&(!(ack==ON)))))}");
		req4.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req4);
		
		Requirement req5=new Requirement();
		req5.setReq("There is no path to a screen that allows  \"Illegal parameters values\".");
		req5.setrID("req5");
		req5.setFormula("null");
		req5.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req5);
		
		Requirement req6=new Requirement();
		req6.setReq("Each list of parameters must be defined before entering a screen.");
		req6.setrID("req6");
		req6.setFormula("ltl req6 {[]((state==BoPo_MainSreen)->((title==NotEmpty)&&(max==NotEmpty)&&(chooseCategory==NotEmpty)))}");
		req6.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req6);
		
		Requirement req7=new Requirement();
		req7.setReq("Parameters values cannot change unless it was intended to do so in its path");
		req7.setrID("req7");
		req7.setFormula("null");
		req7.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req7);
		
		Requirement req8=new Requirement();
		req8.setReq("If a Parameter changes  in a specific state the change should be updated wherever the parameter is used.");
		req8.setrID("req8");
		req8.setFormula("null");
		req8.setSelected(false);
		Router.getInstance().getRequirementList().addRequirement(req8);
		
		Requirement req9=new Requirement();
		req9.setReq("All parameters always must be consistent.");
		req9.setrID("req9");
		req9.setFormula("null");
		req9.setSelected(false);		
		Router.getInstance().getRequirementList().addRequirement(req9);

	}
	public static   void selectReqNum(boolean flag,int reqNum) {
		 Router.getInstance().getRequirementList().getReqlist().get(reqNum).setSelected(flag);;
	
	}


}
