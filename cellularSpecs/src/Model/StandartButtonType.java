package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class StandartButtonType implements Serializable, Element {
private String elementName; 
private  Transition trans ;
private  ArrayList<MyCondition> conds= new ArrayList <MyCondition>(); 
private final String type=ElementType.getStandartBtnType(); 
private final String optLogic= "&&"; 
private ArrayList <MyAction> actions= new ArrayList<>();
private String exception; 


public StandartButtonType() {
	
}


public void addCondition(String name,String opt ,String Val){
	MyCondition c = new MyCondition(name, Val,opt); 
	this.conds.add(c);
	
}
public void setTransition(String string , String string2) {
	trans= new Transition(string,string2);
	
}

public String getType() {
	return type;
}

public String getParamName() {
	return this.elementName;
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
	return "defined"; 
}


public ArrayList<MyAction> getActions() {
	// TODO Auto-generated method stub
	return actions;
}
public  String getStringPromela(){
	String conditons;
	if(conds.size()== 0){
		return "atomic{state="
				+getTrans().getToScreen()
				+"};" ; 
	}
	conditons=new String(conds.get(0).getParamName()
			+conds.get(0).getOpt()
			+conds.get(0).getParamVal());
			
			
 for(int i=1;i<conds.size(); i++)
 {
	 conditons+=" "+this.optLogic+" "
			 	+conds.get(i).getParamName()
			 	+conds.get(i).getOpt()
			 	+conds.get(i).getParamVal();
 }
	return "("+conditons+")->atomic{state="
				+getTrans().getToScreen()
				+"};"+" /* "+this.elementName+" Button */" ; 
}


public  Transition getTrans() {
	return trans;
	}
public List<MyCondition> getConds() {
	return conds;
	}
public void setElementName(String name) {
	// TODO Auto-generated method stub
	this.elementName= name;
	}
@Override
public String getException() {
	// TODO Auto-generated method stub
	return exception;
}
}
/*
 * now get values only in Param Class 
 */

