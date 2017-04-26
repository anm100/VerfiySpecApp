package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class StandartButtonType implements Serializable, Element {
private String paramName;
private String paramVal; 
private  Transition trans ;
private  List<MyCondition> conds= new ArrayList <MyCondition>(); 
private final String type="regular Button"; 
private final String optLogic= "&"; 
//private List <Action> actions= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 


public StandartButtonType() {
	
}
public void setTransition(Screen from , Screen to) {
	trans= new Transition(from,to);
	
}

public String getParamName() {
	return paramName;
}
/**
 * @param paramName the paramName to set
 */
public void setParamName(String paramName) {
	this.paramName = paramName;
}

@Override
public String getParamVal() {
	// TODO Auto-generated method stub
	return paramVal;
}

@Override
public void setParamVal(String paramVal) {
	this.paramVal=paramVal;	
}

@Override
public void loadElement() {
	// TODO Auto-generated method stub
	
}
public  String getStringPromela(){
	String conditons=new String("");

 for(MyCondition i:conds)
 {
	 conditons+=""+i.getParamName()+i.getOpt()+i.getParamVal()+this.optLogic;
 }
 
	return "::("+conditons+")->atomic(state="+getTrans().getToScreen().getScreenName()+");" ; 
}
@Override
public String getType() {
	// TODO Auto-generated method stub
	return this.type;
}

public  Transition getTrans() {
	return trans;
}
public List<MyCondition> getConds() {
	return conds;
}


}


