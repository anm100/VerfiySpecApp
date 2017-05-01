package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class EmptyNEmptyType implements Serializable, Element {
private String paramName;
private String paramVal; 
private final String type="Empty/NotEmpty"; 
//private List <Action> actions= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 

public EmptyNEmptyType() {}

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
	return paramVal;
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
public String getType() {
	// TODO Auto-generated method stub
	return this.type;
}

@Override
public String getStringPromela() {
	// TODO Auto-generated method stub
	return "";
}

@Override
public String [] getValues() {
	String [] s ={"Empty","Not Empty"};	
	return s;
	
}



}


