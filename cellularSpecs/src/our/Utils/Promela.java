package our.Utils;

import java.util.ArrayList;

import Model.Action;
import Model.OnOffType;
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
	public static String  getActionSonsString(OnOffType ParentNameParam,int value){
		String str = new String(""); 
		if (ParentNameParam.getActions().size() == 0)return ""; 
		for (Action i : ParentNameParam.getActions())
		{
			str+=getActionString(WorkSpace.getInstance().getParamsByName(i.getParamName()).getIndex(),value);
		}
		
		return str ;
	}
	public static String  getActionCondSonsString(OnOffType ParentNameParam,int value){
		ArrayList <Action> actions=ParentNameParam.getActions();
		if (ParentNameParam.getActions().size() == 0)return "";
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
