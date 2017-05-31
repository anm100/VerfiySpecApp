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
	public void setCond(ArrayList<MyCondition> cond) {
		this.cond = cond;
	} 
	
}
