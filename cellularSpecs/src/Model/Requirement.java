package Model;

import java.io.Serializable;


public class Requirement implements Serializable{
	private String  rID; 
	private String  req; 
	private String formula;
	private boolean  result;
	private int ltlCount=1;
	public int getLtlCount() {
		return ltlCount;
	}
	public void addltlCount() {
		this.ltlCount++;
	}
	public void setltlCount()
	{
		ltlCount=1;
	}
	public String getResult() {
		if(result)
		return "true";
		else
			return "false";
	}
	public void setResult(boolean result) {
		this.result = result;
	}
	private boolean isSelected;
	
	
	
	public Requirement(String rID, String req, String formula) {
		super();
		this.rID = rID;
		this.req = req;
		this.formula = formula;
		this.isSelected = false;
		this.result=true;
	}
	public String getFormula() {
		return formula;
	}
	public void setFormula(String formula) {
		this.formula = formula;
	}
	public boolean isSelected() {
		return isSelected;
	}
	public void setSelected(boolean isSelected) {
		this.isSelected = isSelected;
	} 
	
	public String getrID() {
		return rID;
	}
	public void setrID(String rID) {
		this.rID = rID;
	}
	public String getReq() {
		return req;
	}
	public void setReq(String req) {
		this.req = req;
	}
	
	
	

}
