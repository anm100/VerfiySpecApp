package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class EmptyNEmptyType implements Serializable, Element,ElementActionInterface{
private Param parameter; 
private String elementName;
private final String type=ElementType.getEmptyNotEmptyType(); 
private List <Action> actions= new ArrayList<>(); 
private List <MyCondition> conditions= new ArrayList<>(); 

public EmptyNEmptyType() {}

public String getType() {
	return type;
}
public String getELementName() {
	return elementName;
}
public String getParamName() {
	return parameter.getParamName();
}
/**
 * @param paramName the paramName to set
 */


public String getParamVal() {
	// TODO Auto-generated method stub
	return this.parameter.getParamVal(); 
}

@Override
public String getStringPromela() {
	// TODO Auto-generated method stub
	return "";
}


public void setParam(Param param) {
	// TODO Auto-generated method stub
	 this.parameter=(Param) param;
}

@Override
public void setElementName(String name) {
	// TODO Auto-generated method stub
	this.elementName=name;
}
/*
 * now get values only in Param Class 
 */

public Param getParameter() {
	// TODO Auto-generated method stub
	return parameter;
}

@Override
public ArrayList<Action> getActions() {
	// TODO Auto-generated method stub
	return (ArrayList<Action>) actions;
}

@Override
public void addAction(Action e) {

}


}


