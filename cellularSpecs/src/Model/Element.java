package Model;

import java.util.ArrayList;

public interface Element {
	public String getELementName();
	public String getParamName(); 
	public void setElementName(String name);
	public String getType(); 
	public ArrayList<Action> getActions();
	public  String getStringPromela();
	
}
