package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class twoElementType implements Serializable, Element {
private String paramName;
private String paramVal; 
//private List <Action> actions= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 

public twoElementType() {}

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
	// TODO Auto-generated metho d stub
	
}

}


