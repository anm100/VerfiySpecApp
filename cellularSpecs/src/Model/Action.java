package Model;

import java.io.Serializable;

public class Action implements Serializable {
	
	private String paramName; 
	private String paramVal;
	private MyCondition cond;
	
	public Action(String paramName, String paramVal, MyCondition cond) {
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
	public MyCondition getCond() {
		return cond;
	}
	public void setCond(MyCondition cond) {
		this.cond = cond;
	} 
	
}
