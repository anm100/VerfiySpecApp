package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class OnOffType implements Serializable, Element {
private Param parameter; 
private List<Action> actions=new  ArrayList<Action>(); 
private final String type="on/off"; 
//private List <Action> actions= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 

public OnOffType() {}

public String getType() {
	return type;
}

public String getParamName() {
	return parameter.getParamName();
}
/**
 * @param paramName the paramName to set
 */

@Override
public String getParamVal() {
	// TODO Auto-generated method stub
	return this.parameter.getParamVal(); 
}

@Override
public void loadElement() {
	// TODO Auto-generated method stub	
}

@Override
public String getStringPromela() {
	// TODO Auto-generated method stub
	return "";
}

@Override
public void setParam(Param param) {
	// TODO Auto-generated method stub
	 this.parameter=(ParamList) param;
}
public void setParamName(String name) {
	// TODO Auto-generated method stub
	this.parameter.setParamName(name);
}

public String [] getValues() {
	
	
	return null;
}
}


