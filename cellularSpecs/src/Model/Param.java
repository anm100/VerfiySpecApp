package Model;

import java.io.Serializable;

public class Param implements Serializable{
	
	private String paramName; 
	private String paramVal;
	private String type;
	private String[] defultValues;
	

	
	public Param(String paramName, String paramVal, String type) {
		super();
		this.paramName = paramName;
		this.paramVal = paramVal;
		this.type = type;
		this.defultValues=defultValues;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	} 
	public String [] getValues(){
		if (ElementType.getEmptyNotEmptyType().equals(this.type)){
			return ElementType.getEmptyNotEmptyType().split("/");
		}
		else if(ElementType.getOnOffType().equals(this.type)){
			return ElementType.getOnOffType().split("/");
			}
		
		else{ 
			return ElementType.getStandartBtnType().split("/");
			}
	
	}

}
