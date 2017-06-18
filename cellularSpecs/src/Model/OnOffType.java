package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class OnOffType implements Serializable, Element,ElementActionInterface {
private Param parameterOnToOff; 
private Param parameterOffToON; 
private final String type=ElementType.getOnOffType();
private String elementName; 

public OnOffType() {

}

public String getType() {
	return type;
}


public String getELementName() {
	return elementName;
}
/**
 * @param paramName the paramName to set
 */


@Override
public String getStringPromela() {
	/*TODO Auto-generated method stub
	if(actions.size() ==0){
		return "";
	}
	String [] arr = new String[actions.size()];

	return "action["+getParameter().getIndex()+"]==";*/
	return null;
}

public void setElementName(String name) {
	// TODO Auto-generated method stub
	this.elementName=name;

}

public ArrayList<Action> getActions() {
	/*
	// TODO Auto-generated method stub
	return actions;
	*/
	return null;
}

public void addAction(Action e ){
	/*
	this.actions.add(e);
	*/
}
/*
 * now get values only in Param Class 
 */

@Override
public String getParamName() {
	// TODO Auto-generated method stub
	return null;
}
public Param getParameterOffToON() {
	return parameterOffToON;
}

public void setParameterOffToON(Param parameterOffToON) {
	this.parameterOffToON = parameterOffToON;
}
public Param getParameterOnToOff() {
	return parameterOnToOff;
}

public void setParameterOnToOff(Param parameterOnToOff) {
	this.parameterOnToOff = parameterOnToOff;
}
}