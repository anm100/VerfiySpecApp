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
private final String optLogic= "&&"; 
//private List <Action> actions= new ArrayList<>(); 
//private List <MyCondition> conditions= new ArrayList<>(); 


public StandartButtonType() {
	
}
public void addCondition(String name, String Val,String opt){
	MyCondition c = new MyCondition(name, Val,opt); 
	this.conds.add(c);
	
}
public void setTransition(String string , String string2) {
	trans= new Transition(string,string2);
	
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
	String conditons=new String(conds.get(0).getParamName()
								+conds.get(0).getOpt()
								+conds.get(0).getParamVal());
	
 for(int i=1;i<conds.size(); i++)
 {
	 conditons+=""+this.optLogic
			 	+conds.get(i).getParamName()
			 	+conds.get(i).getOpt()
			 	+conds.get(i).getParamVal();
 }
	return "::("+conditons+")->atomic(state="
				+getTrans().getToScreen()
				+");" ; 
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

@Override
public String [] getValues() {	
	String [] p ={"un pressed","pressed"};
	return p;
}

}


