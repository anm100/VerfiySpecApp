package Model;

import java.io.Serializable;

public class Param implements Serializable{
	
	private String paramName; 
	private String paramVal;
	
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
	

}
