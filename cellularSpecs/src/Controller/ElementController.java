package Controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Element;
import Model.ElementActionInterface;
import Model.MyAction;
import Model.MyCondition;
import Model.OnOffType;
import Model.Param;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;

public class ElementController {
	
	public static boolean elementIsExist(String sName,String eName ){
		if(eName == null){
			return false ; 
		}
		Screen s=WorkSpace.getInstance().getScreenByName(sName); 
		if (s.getElementByName(eName)== null){
			return false; 
		}
		return true; 
	}
	public static ArrayList<String> getDataOfElement(String screenName,String elementName){//get all the parameters arraylist
		ArrayList<String> s = new ArrayList<>(); 
		Element e =  WorkSpace.getInstance().getScreenByName(screenName).getElementByName(elementName);
		s.add(e.getELementName());
		s.add(e.getParamName());
		s.add(e.getParamVal());
		s.add(e.getException());
		
	return s ; 
	}
	public static ArrayList<String> getDataOfregularElement(String screenName,String elementName){//get all the parameters arraylist
		ArrayList<String> s = new ArrayList<>(); 
		StandartButtonType e = (StandartButtonType) WorkSpace.getInstance().getScreenByName(screenName).getElementByName(elementName);
		s.add(e.getELementName());
		s.add(e.getMoveTo());
		s.add(e.getException());
		
	return s ; 
	}
	public static String[][] getConditions(String sName,String eName ){
		
		StandartButtonType   s=(StandartButtonType) WorkSpace.getInstance().getScreenByName(sName).getElementByName(eName);
		int num=s.getConds().size();
		String [][] st=new String[num][3];
		for(int i=0;i<num;i++)
		{
		st[i][0]=s.getConds().get(i).getParamName();
		st[i][1]=s.getConds().get(i).getOpt();
		st[i][2]=s.getConds().get(i).getParamVal();
		}
	return st;
	}
//public static String[][] getActrion(String sName,String eName ){
//		OnOffType   s=(OnOffType) WorkSpace.getInstance().getScreenByName(sName).getElementByName(eName);
//		int numOfActions=s.getActions().size();
//		String [][] st=new String[numOfActions][2];
//		for(int i=0;i<numOfActions;i++)
//		{
//			ArrayList<MyCondition> m =s.getActions().get(i).getCond();
//		st[i][0]=(s.getActions().get(i).getParamName()+"="+s.getActions().get(i).getParamVal());//add action to the firstRow
//	
//		st[i][1]=getCondsForAction(m);
//	}
//		return st;
//}
	public static String getCondsForAction(ArrayList<MyCondition> m){
		String operator=new String ("");
		String st1=new String ("");
		for(int j=0;j<m.size();j++)
		{
			st1=st1+operator+m.get(j).getParamName()+m.get(j).getOpt()+m.get(j).getParamVal();
			operator="&&";
		}
		return st1; 
	}
	public static ArrayList<String>  getIndexesParentForParam(String paramName){
		ArrayList<String> indexs= new ArrayList<String>(); 
		Iterator<Entry<String, Param>> it = WorkSpace.getInstance().getParamsMap().entrySet().iterator();
		Param p;
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			 p =(Param)pair.getValue();
			 for (MyAction i :p.getAction()){
				 if(i.getParamName().equals(paramName)){
					 indexs.add(p.getIndex()+"");
					 
				 }
				 
			 }
		}
		return indexs;
	}
	public static String getCondForParam(Param e,String toSwitch) {
		// TODO Auto-generated method stub
		ArrayList<MyCondition> cond = e.getCond(toSwitch);
		String st=new String ("");
		if(cond !=null){
		
		for (MyCondition i:cond){
		st+=" && "+i.getCondition();
			}
		}
		return st;
	}
	public static String getCondForParamWithson(Param parent ,String toVal ){
		
		String str=new String (""); 
		str = getCondForParam(parent,""+toVal);
		Param p ; 
		if(parent.getActions(""+toVal).size()== 0) return str; 
		
		for (MyAction i : parent.getActions(""+toVal)){
			p= WorkSpace.getInstance().getParamsByName(i.getParamName());
			str+=getCondForParam(p,i.getParamVal());
			
		}
		return str; 
		
	}

}