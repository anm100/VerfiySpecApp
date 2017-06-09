package Controller;

import java.util.ArrayList;

import Model.WorkSpace;

public   class FormulaTranslate  {
	private static ArrayList<String> screenStatesList=new ArrayList<String>();//fill this araylist in WrokSpace
	private static ArrayList<String> changeStatesList=new ArrayList<String>();//fill this araylist in Screen
	
	public FormulaTranslate(){
		changeStatesList=new ArrayList<String>();
		screenStatesList=new ArrayList<String>();
	}
	public static  void translateReq1()
{
	String st=new String();
	 st="ltl "+" reqid "+"{[]("+getTranslateReq1()+")}";
	 WorkSpace.getLog().debug(st);
}

private static String getTranslateReq1() {
	String str="";
	for(int i=0;i<screenStatesList.size();i++)
	{
		str=str+"((State=="+screenStatesList.get(i)+")->(";
		if(changeStatesList.size()>0)
		str+="(!([]<>(";
		for(int j=0;j<changeStatesList.size();j++)
		{
		str+="(state=="+changeStatesList.get(j)+ ")||";
		}
		if(changeStatesList.size()>0)
		{
		str=str.substring(0, str.length()-2);
		str+=")))->";
		}
		str=str+"<>((state!="+screenStatesList.get(i)+")";
		for(int j=0;j<changeStatesList.size();j++)
		str+="&&(state!="+changeStatesList.get(j)+")";	
		str+= ")))&&";
	}
	if(screenStatesList.size()>0)
		str=str.substring(0, str.length()-2);
	return str;
}
public static void translateReq2a()
{
	String st="";
	 st="ltl "+" reqid "+"{[](("+getTranslateReq2a()+")}";
	 System.out.println(st);
	 //ltl req2{[]((
	 //((state==screen2)-><>(state==screen3))
	 
	 //&&((state==screen2)-><>(state==screen1)
//	) )}
	
}
private static String getTranslateReq2a() {
	String str="";
	for(int i=0;i<screenStatesList.size();i++)
	{
		for(int j=0;j<screenStatesList.size();j++)
		{
			
			if(j!=i)
			{
				str=str+"((State=="+screenStatesList.get(i)+")->";
				str+="<>(state=="+screenStatesList.get(j)+"))&&";
			}
		}
		if(screenStatesList.size()>1)
		{
			str=str.substring(0, str.length()-2);
			str+="||";
		}
	}
	if(screenStatesList.size()>1)
		str=str.substring(0, str.length()-2);
	str+=")";
	return str;
}
public static  void translateReq2b()
{
	String st="";
	 st="ltl "+" reqid "+"{[]("+getTranslateReq2b()+")}";
	 System.out.println(st);
}
private static String getTranslateReq2b() {
	String str="";
	if(screenStatesList.size()>=2){
	 str="(state="+screenStatesList.get(0)+")->(";// ScreenStates.get(0) is the root 
	for(int i=0;i<screenStatesList.size();i++)
	{
		if(0!=i)
		{
			str=str+"(<>(State=="+screenStatesList.get(i)+"))&&";
		}
	}
	if(screenStatesList.size()>0)
		str=str.substring(0, str.length()-2);
	str+=")";
	}
	return str;
	
}

public static void translateReq7()
{
	String st="";
	 st="ltl "+" reqid "+"{[]("+getTranslateReq7()+")}";
	 System.out.println(st);
}
private static String getTranslateReq7() {
	String req7="";
	String[] params=ScreenController.getparams();
	for(int i=0;i<params.length;i++)
	{
		String[] values = WorkSpace.getInstance().getParamsMap().get(params[i]).getValues();
		for(int j=0;j<values.length;j++)
		{
			req7+="(("+params[i]+"=="+values[j]+")->(!(X("+getStatesReq7()+"U("+params[i]+"!="+values[j]+")))))&&";
		}
	}
	if(params.length>0)
		req7=req7.substring(0, req7.length()-2);
return req7;
}
private static String getStatesReq7() 
{
	int i=0;
	String st1=new String("");
	String[] params=ScreenController.getparams();
	for(int j=0;j<params.length;j++)
	{
		for(i=0;i<changeStatesList.size();i++)
		{
		 if(changeStatesList.get(i).endsWith(params[j]))
			 st1+="("+changeStatesList.get(i)+")||";
		}
	}
	if(params.length>1)
	{
		st1=st1.substring(0, st1.length()-2);
	}
	st1="("+st1+")";
	return st1;
}
public static void addtoChangeStates(String changeStates) {
	changeStatesList.add(changeStates);
}
public static void addtoScreenStates(String screenName) {
	screenStatesList.add(screenName);
}

}
