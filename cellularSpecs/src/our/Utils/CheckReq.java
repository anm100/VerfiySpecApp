package our.Utils;

import Controller.FormulaTranslate;
import Model.MyAction;
import Model.ElementType;
import Model.Param;
import Model.WorkSpace;

public class CheckReq {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] Screen={"LoginScreen","CreateNewEvent"};
		String[] ChangeState={"ChangeAirplaneModeON","ChangeAirplaneModeOFF","ChangeWifiON","ChangeWifiOFF","ChangeBluON","ChangeBluOFF"};
		FormulaTranslate.setScreenStates(Screen);
		FormulaTranslate.setChangeStates(ChangeState);
		Param p1 =new Param("AirplaneMode","OFF",ElementType.getOnOffType());
		Param p2=new Param("Wifi","ON",ElementType.getOnOffType());
		Param p3=new Param("Blu","ON",ElementType.getOnOffType());
		MyAction a1=new MyAction("Wifi", "OFF", "ON");
		MyAction a2=new MyAction("Blu", "OFF", "ON");
		p1.addAction(a1);
		p1.addAction(a2);
		WorkSpace.getInstance();
		WorkSpace.getInstance().addParameterToHash(p1);
		WorkSpace.getInstance().addParameterToHash(p2);
		WorkSpace.getInstance().addParameterToHash(p3);
		FormulaTranslate.translateReq8a("AirplaneMode","ON");
		
	}

}
