package Model;

import java.util.List;

public interface Element {
	public String getParamName(); 
	public String getParamVal(); 
	public void setParam(Param param);
	public String getType(); 
	public void loadElement(); 
	
	public  String getStringPromela();

}
