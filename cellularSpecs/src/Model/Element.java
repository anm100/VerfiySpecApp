package Model;

import java.util.List;

public interface Element {
	public String getParamName(); 
	public String getParamVal(); 
	public void setParam(Param param);
	public void setParamName(String name);
	public String getType(); 
	public void loadElement(); 
	public String [] getValues(); 
	public  String getStringPromela();

}
