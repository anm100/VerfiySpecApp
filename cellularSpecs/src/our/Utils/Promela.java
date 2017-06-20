package our.Utils;

import java.util.ArrayList;

import Model.MyAction;
import Model.OnOffType;
import Model.Param;
import Model.WorkSpace;

public class Promela {
	
	public static String getActionString(int index ,int value){
		return "action["+index+"]="+value+";";
		
	}
	public static String getActionCondString(int index ,int value){
		return "action["+index+"]=="+value+"";
		
	}
	
	public static String getActionString(String paramName,String value){
		return paramName+"="+value+";";
		
	}
	public static String  getActionSonsString(Param ParentNameParam,int value,String valSwicth){
		String str = new String(""); 
		if (ParentNameParam.getActions(valSwicth).size() == 0)return ""; 
		for (MyAction i : ParentNameParam.getActions(valSwicth))
		{
			str+=getActionString(WorkSpace.getInstance().getParamsByName(i.getParamName()).getIndex(),value);
		}
		
		return str ;
	}
	public static String  getActionCondSonsString(Param ParentNameParam,int value,String valSwicth){
		ArrayList <MyAction> actions=ParentNameParam.getActions(valSwicth);
		if (actions.size() == 0)return "";
		else {
		String str = new String(getActionCondString(WorkSpace.getInstance().getParamsByName(actions.get(0).getParamName()).getIndex(),value)); 
		for (int  i=1;i< actions.size();i++)
		{
			str+="&&"+getActionCondString(WorkSpace.getInstance().getParamsByName(actions.get(i).getParamName()).getIndex(),value);
		}		
		return str ;
		}
	}
}
