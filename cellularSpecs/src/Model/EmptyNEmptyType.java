package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class EmptyNEmptyType implements Serializable, Element,ElementActionInterface{
private Param parameter; 
private String elementName;
private final String type=ElementType.getEmptyNotEmptyType(); 
private List <MyAction> actions= new ArrayList<>(); 
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


@Override
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
public ArrayList<MyAction> getActions() {
	// TODO Auto-generated method stub
	return (ArrayList<MyAction>) actions;
}

@Override
public void addAction(MyAction e) {

}


}


