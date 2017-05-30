package Model;

import java.util.List;

public interface Element {
	public String getParamName(); 
	public String getParamVal(); 
	public void setElementName(String name);
	public String getType(); 
	public void loadElement(); 
	public  String getStringPromela();
	
}
