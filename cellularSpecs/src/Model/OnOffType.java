package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class OnOffType implements Serializable, Element {
private Param parameter; 
private ArrayList<Action> actions=new  ArrayList<Action>(); 
private final String type=ElementType.getOnOffType();
private String elementName; 
//private List <Action> actions= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 

public OnOffType() {}

public String getType() {
	return type;
}

public String getParamName() {
	return parameter.getParamName();
}
public String getELementName() {
	return elementName;
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

public void setParam(Param param) {
	// TODO Auto-generated method stub
	 this.parameter=param;
}
public void setElementName(String name) {
	// TODO Auto-generated method stub
	this.elementName=name;

}

public ArrayList<Action> getActions() {
	// TODO Auto-generated method stub
	return actions;
}

public void addAction(Action e ){
	
	this.actions.add(e);
}
/*
 * now get values only in Param Class 
 */
}