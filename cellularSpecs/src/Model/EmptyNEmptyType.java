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
private String exception; 
private String comment = " ";
private int index;

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
public void addAction(MyAction e) {

}

@Override
public ArrayList<MyAction> getActions(String value) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public String getException() {
	// TODO Auto-generated method stub
	return exception;
}

public void setException(String text) {
	// TODO Auto-generated method stub
	this.exception=text;
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


