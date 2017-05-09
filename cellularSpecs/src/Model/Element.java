package Model;

import java.util.List;

public interface Element {
	public String getParamName(); 
	public String getParamVal(); 
	public void setParamName(String paramName);
	public void setParamVal(String paramVal);
	public String getType(); 
	String [] getValues();
	public void loadElement(); 
	
	public  String getStringPromela();

}
