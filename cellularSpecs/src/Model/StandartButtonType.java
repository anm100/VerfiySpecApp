package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class StandartButtonType implements Serializable, Element {
private String paramName;
private String paramVal; 
private List<Action> actions=new  ArrayList<Action>(); 
private final String type="on/off"; 
//private List <Action> actions= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 

public StandartButtonType() {}

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



}


