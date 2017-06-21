package Model;

import java.io.Serializable;

public class MyCondition implements Serializable {
	private String paramName; 
	private String paramVal ; 
	private  String opt="==";
	private String SwitchTo=null;
	public MyCondition(String paramName, String paramVal, String opt2) {
		super();
		this.paramName = paramName;
		this.paramVal = paramVal;
		this.opt= opt2; 
	}
	public MyCondition(String condition) {
		super();
		String [] s=condition.split(opt);
		this.paramName = s[0];
		this.paramVal = s[1];
	}
	public MyCondition(String condition,String SwitchTo) {
		super();
		String [] s=condition.split(opt);
		this.paramName = s[0];
		this.paramVal = s[1];
		this.SwitchTo=SwitchTo;
	}
	public String getCondition(){
		return paramName+opt+paramVal;
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
	public String getSwitchTo() {
		return SwitchTo;
	}
	public void setSwitchTo(String switchTo) {
		SwitchTo = switchTo;
	}
	
	
	
}

