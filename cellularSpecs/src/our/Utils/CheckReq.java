package our.Utils;

import java.util.ArrayList;

import Controller.FormulaTranslate;
import Model.MyAction;
import Model.ElementType;
import Model.Param;
import Model.WorkSpace;

public class CheckReq {

	public static void main(String[] args) {
		// TODO Auto-generated method stub"LoginScreen"
		String[] Screen={"Setting"};
		String[] ChangeState={"changeBluetoothON","changeWifiON","changeBluetoothOFF","changeAirplane_modeOFF","changeAirplane_modeON","changeWifiOFF"};
		//String[] ChangeState={"changeBluetoothON"};
		FormulaTranslate.setScreenStates(Screen);
		FormulaTranslate.setChangeStates(ChangeState);
		Param p1 =new Param("Airplane_mode","OFF",ElementType.getOnOffType());
		Param p2=new Param("Wifi","ON",ElementType.getOnOffType());
		Param p3=new Param("Bluetooth","ON",ElementType.getOnOffType());
		MyAction a1=new MyAction("Wifi", "OFF", "ON");
		MyAction a2=new MyAction("Bluetooth", "OFF", "ON");
		p1.addAction(a1);
		p1.addAction(a2);
		WorkSpace.getInstance();
		WorkSpace.getInstance().addParameterToHash(p1);
		//WorkSpace.getInstance().addParameterToHash(p2);
		//WorkSpace.getInstance().addParameterToHash(p3);
		//FormulaTranslate.translateReq8a("Airplane_mode","ON");
		FormulaTranslate.translateReq1();
		ArrayList<String> a= new ArrayList();
		a.add("aaaa");
		FormulaTranslate.translateReq3("screen1","screen4",a);

	}

}
