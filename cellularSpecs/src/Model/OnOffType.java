package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class OnOffType implements Serializable, Element,ElementActionInterface {
private Param parameter; 
private final String type=ElementType.getOnOffType();
private String elementName; 
private String exception;
private String comment;



public OnOffType() {

}

public String getType() {
	return type;
}

public Param getParameter() {
	return parameter;
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
public String getStringPromela() {
	/*// TODO Auto-generated method stub
	if(actions.size() ==0){
		return "";
	}
	String [] arr = new String[actions.size()];

	return "action["+getParameter().getIndex()+"]==";*/
	return null;
}

public void setParam(Param param) {
	// TODO Auto-generated method stub
	 this.parameter=param;
}
public void setElementName(String name) {
	// TODO Auto-generated method stub
	this.elementName=name;

}


public String getException() {
	return exception;
}

public void setException(String exception) {
	this.exception = exception;
}

public ArrayList<MyAction> getActions(String value) {
	Param p=WorkSpace.getInstance().getParamsByName(this.parameter.getParamName());

	return null;
}

public void addAction(MyAction e ){
	/*
	this.actions.add(e);
	*/
}

public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}

/*
 * now get values only in Param Class 
 */

}	