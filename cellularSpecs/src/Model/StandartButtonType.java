package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class StandartButtonType implements Serializable, Element {
private Param parameter;
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
public void loadElement() {
	// TODO Auto-generated method stub	
}



@Override
public void setParam(Param param) {
	// TODO Auto-generated method stub
	 this.parameter=(ParamList) param;
}
public  String getStringPromela(){
	String conditons;
	if(conds.size()== 0){
		return "::atomic(state="
				+getTrans().getToScreen()
				+");" ; 
	}
	conditons=new String(conds.get(0).getParamName()
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

public  Transition getTrans() {
	return trans;
}
public List<MyCondition> getConds() {
	return conds;
}
public void setParamName(String name) {
	// TODO Auto-generated method stub
	this.parameter.setParamName(name);
}
public String [] getValues() {
	
	String [] arr= {"pressed","not pressed"};
	
	return arr;
}

}


