package Model;

import java.io.Serializable;
import java.util.ArrayList;

public class ListElementType implements Serializable, Element {
private ParamList parameter ; 
private final  String type=ElementType.getListType();
private String elementName;
private ArrayList<Action> actions; 

//private List <MyCondition> conditions= new ArrayList<>(); 

public ListElementType() {}

public String [] getValues() {
		return this.parameter.getValues();
}
public String getELementName() {
	return elementName;
}

public void setValues(String [] values) {
	this.parameter.setValues(values);
}

public String getType() {
	return type;
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
	 this.parameter=(ParamList) param;
}
public void setElementName(String name) {
	// TODO Auto-generated method stub
	this.elementName=name;
}
/*
 * now get values only in Param Class 
 */
@Override
public ArrayList<Action> getActions() {
	// TODO Auto-generated method stub
	return (ArrayList<Action>) actions;
}

}


