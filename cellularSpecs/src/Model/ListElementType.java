package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ListElementType implements Serializable, Element {
private String paramName;
private String paramVal; 
private final  String type="List"; 
private List <String> values= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 

public ListElementType() {}

public List<String> getValues() {
	return values;
}

public void setValues(List<String> values) {
	this.values = values;
}

public String getType() {
	return type;
}

public String getParamName() {
	return paramName;
}
/**
 * @param paramName the paramName to set
 */
public void setParamName(String paramName) {
	this.paramName = paramName;
}

@Override
public String getParamVal() {
	// TODO Auto-generated method stub
	return this.paramVal; 
}

@Override
public void setParamVal(String paramVal) {
	this.paramVal=paramVal;	
}

@Override
public void loadElement() {
	// TODO Auto-generated method stub
	
}

@Override
public String getStringPromela() {
	// TODO Auto-generated method stub
	return null;
}


}


