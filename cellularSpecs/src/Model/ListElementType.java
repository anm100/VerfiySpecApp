package Model;

import java.io.Serializable;
import java.util.ArrayList;

public class ListElementType implements Serializable, Element {
private ParamList parameter ; 
private final  String type=ElementType.getListType();
private String elementName;
private String exception;
private String comment = " ";
private int index;

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
	 this.parameter=(ParamList) param;
}
public void setElementName(String name) {
	// TODO Auto-generated method stub
	this.elementName=name;
}
/*
 * now get values only in Param Class 
 */
public ArrayList<MyAction> getActions(String value) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public String getException() {
	// TODO Auto-generated method stub
	return exception;
}

public String getComment() {
	return comment;
}

public void setComment(String comment) {
	this.comment = comment;
}

public int getIndex() {
	return index;
}

public void setIndex(int index) {
	this.index = index;
}
}


