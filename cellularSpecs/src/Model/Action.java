package Model;

import java.io.Serializable;
import java.util.ArrayList;

public class Action implements Serializable {
	
	private String paramName; 
	private String paramVal;
	private ArrayList<MyCondition> cond;
	
	public Action(String paramName, String paramVal, ArrayList<MyCondition> cond) {
		super();
		this.paramName = paramName;
		this.paramVal = paramVal;
		this.cond = cond;
	}
	//action: wifi=on
	public Action(String action) {
		super();
		String [] s = action.split("=");
		this.paramName = s[0];
		this.paramVal = s[1];
		cond=new ArrayList<MyCondition>();
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
		return cond;
	}
	/*
	 * cond : airplanemode == on 
	 */
	public void addCond(String cond) {
		this.cond.add(new MyCondition( cond));
	} 
	
	
}
