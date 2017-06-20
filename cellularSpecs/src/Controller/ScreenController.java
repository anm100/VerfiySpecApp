package Controller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import org.omg.Dynamic.Parameter;

import Model.MyAction;
import Model.Element;
import Model.ElementActionInterface;
import Model.ElementType;
import Model.Param;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;

public class ScreenController {
	
public static Element getElementByName(String elementName){
	
	Screen s ;
	
	Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
	while(it.hasNext()){
		Map.Entry pair =(Map.Entry) it.next(); 
		s= (Screen)pair.getValue();
		if (null != s.getElementByName(elementName)){
			return s.getElementByName(elementName); 
		}
	}
	return null ; 
		
	}

public static ArrayList<StandartButtonType> getElementsByType(String Type){
	Screen s ;
	ArrayList<StandartButtonType> arr=new ArrayList<StandartButtonType>();
	Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
	while(it.hasNext()){
		Map.Entry pair =(Map.Entry) it.next(); 
		s= (Screen)pair.getValue();
		Iterator<Entry<String, Element>> it2 = s.getElementsMap().entrySet().iterator();
		while(it2.hasNext()){
			Map.Entry pair2 =(Map.Entry) it2.next(); 
			Element mName= (Element)pair2.getValue();
			if((mName.getType().equals(ElementType.getStandartBtnType())))
			{
				arr.add((StandartButtonType)mName);
			}
		}
	}
	return arr ; 
		
	}
	@SuppressWarnings("rawtypes")
	public static String[] getparams(){//get all the parameters arraylist
		ArrayList<String> params = new ArrayList<String>();
		Iterator<Entry<String, Param>> it = WorkSpace.getInstance().getParamsMap().entrySet().iterator();
		Param p;
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			 p =(Param)pair.getValue();
			params.add(p.getParamName());	
		}
		if(params.size()>0)
		{
		String[] stockArr = new String[params.size()];
		stockArr = params.toArray(stockArr);	
		return stockArr;
		}
		return null;
	
	}
	public static String [] getdefaultValues(String paramName){//get all the the parameter values
		Param p;
		p=WorkSpace.getInstance().getParamsByName(paramName);
		return(p.getValues());	
	}
	@SuppressWarnings("rawtypes")
	private static boolean isParamExistScreen(Screen s ,Param p){
		Element e ; 
		Iterator<Entry<String, Element>> it = s.getElementsMap().entrySet().iterator();
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			e =(Element)pair.getValue();
			if (e.getParamName().equals(p.getParamName())){
				return false ; 				
			}
		}
		return true; 
	}
	public static String [] getParams(String type, String screenName){//return all the parameters from type in screen
		ArrayList<String> params = new ArrayList<String>();
		params.add("New..");
		Iterator<Entry<String, Param>> it = WorkSpace.getInstance().getParamsMap().entrySet().iterator();
		Screen s= WorkSpace.getInstance().getScreenByName(screenName);
		Param p;
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			 p =(Param)pair.getValue();
			if(p.getType().equals(type) && isParamExistScreen(s,p))
			{		
			params.add(p.getParamName());
			}
		}
		String[] stockArr = new String[params.size()];
		stockArr = params.toArray(stockArr);	
	return stockArr;
	}
		/*
		 * check if a parmaetername is exiting in the Screen
		 * if the parameter is existed in the screen return true
		 */
		public static boolean IsParameterExist(String screenName,String Type,String parmaterName)
		{
			String[] st=getParams(Type,screenName);
			for(int i=0;i<st.length;i++)
			{
			if(st[i].equals(parmaterName))
				return true;
			}
			return false;
		}
	public static String [] getParams(String type, String screenName,String paramSelected,String elementName){
		ArrayList<String> params = new ArrayList<String>();
		params.add("New..");
		params.add(paramSelected);
		Iterator<Entry<String, Param>> it = WorkSpace.getInstance().getParamsMap().entrySet().iterator();
		Screen s= WorkSpace.getInstance().getScreenByName(screenName);
		Param p;
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			 p =(Param)pair.getValue();

			if(p.getType().equals(type) && isParamExistScreen(s,p))
			{		
			params.add(p.getParamName());	
			}
		}
		String[] stockArr = new String[params.size()];
		stockArr = params.toArray(stockArr);	
	return stockArr;
	}

	public static String getAllScreenName(){
		Map.Entry pair;
		String sAll;
		Screen s = new Screen(); 
		Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
		if(it.hasNext()){
		pair =(Map.Entry) it.next(); 
	
		s= (Screen)pair.getValue();
		}
		sAll = new String(s.getScreenName());
		
		while(it.hasNext()){
		    pair =(Map.Entry) it.next(); 
			s= (Screen)pair.getValue();	
			sAll+=","+s.getScreenName();
			
		}
		
		return sAll; 
	}
	public static String[] getScreenNameNames(){
	Screen s1 ;
	int i=0;
	String[]  st=new String[WorkSpace.getInstance().getScreensMap().size()] ;
	Iterator<Entry<String, Screen>> it1 = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
	while(it1.hasNext()){
		Map.Entry pair =(Map.Entry) it1.next(); 
		s1= (Screen)pair.getValue();	
		st[i]=s1.getScreenName();
		 i++; 	
	} 
	return st;
	}
}
