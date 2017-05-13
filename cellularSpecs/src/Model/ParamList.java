package Model;

public class ParamList extends Param{
	
	private String [] values=null;

	
	public ParamList(String paramName, String paramVal, String type) {
		super(paramName, paramVal, type);
	}

	public String[] getValues() {
		return values;
	}

	public void setValues(String[] values) {
		this.values = values;
	} 
	

}
