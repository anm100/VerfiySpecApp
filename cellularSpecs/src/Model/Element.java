package Model;

import java.util.ArrayList;

public interface Element {
	public String getELementName();
	public String getParamName(); 
	public String getParamVal(); 
	public void setElementName(String name);
	public String getType(); 
	public ArrayList<Action> getActions(String value);
	public  String getStringPromela();
	
}
