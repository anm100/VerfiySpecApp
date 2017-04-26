package Model;

import java.io.Serializable;

public class MyCondition implements Serializable {
	private String paramName; 
	private String paramVal ; 
	private final String opt="==";
	
	public MyCondition(String paramName, String paramVal) {
		super();
		this.paramName = paramName;
		this.paramVal = paramVal;
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
	public String getOpt() {
		return opt;
	}
	
	
}

