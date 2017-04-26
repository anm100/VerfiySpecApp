package Model;

public interface Element {
	public String getParamName(); 
	public String getParamVal(); 
	public void setParamName(String paramName);
	public void setParamVal(String paramVal);
	public String getType(); 

	public void loadElement(); 
	public  String getStringPromela();

}
