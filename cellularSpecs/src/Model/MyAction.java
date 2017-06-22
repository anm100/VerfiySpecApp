package Model;

import java.io.Serializable;
import java.util.ArrayList;

public class MyAction implements Serializable {
	private String SwitchTo;// action from on to off or from off to on
	private String paramName; 
	private String paramVal;
//	private ArrayList<MyCondition> cond;
	

	public MyAction(String paramName, String paramVal,String SwitchTo) {
		super();
		this.paramName = paramName;
		this.paramVal = paramVal;
		this.SwitchTo=SwitchTo;
	//	this.cond = cond;
	}

	//action: wifi=on

	public MyAction(String action,String SwitchTo) {
		super();
		String [] s = action.split("=");
		this.paramName = s[0];
		this.paramVal = s[1];
		this.SwitchTo=SwitchTo;
	}
	public String getParamName() {
		return paramName;
	}
	public void setParamName(String paramName) {
		this.paramName = paramName;
	}
	public String getParamVal() {
		return paramVal;
	}
	public void setParamVal(String paramVal) {
		this.paramVal = paramVal;
	}
	public ArrayList<MyCondition> getCond() {
		return null;
//		return cond;
	}
	/*
	 * cond : airplanemode == on 
	 */
	public void addCond(String cond) {
//		this.cond.add(new MyCondition( cond));
	} 
	public String getSwitchtO() {
		return SwitchTo;
	}
	public void setSwitchtO(String SwitchTo) {
		SwitchTo = SwitchTo;
	}
	
}
