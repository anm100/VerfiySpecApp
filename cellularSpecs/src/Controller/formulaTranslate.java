package Controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import Model.Element;
import Model.Screen;
import Model.WorkSpace;

public   class formulaTranslate  {
	private static ArrayList<String> ScreenStates=new ArrayList();//fill this araylist in WrokSpace
	private static ArrayList<String> ChangeStates=new ArrayList();//fill this araylist in Screen
	
public static  void translateRtq1()
{
/*
ltl r1 {
	[]
	(
	((state==s1) -> ((!([]<> ((state==Ch1)||(state==Ch2))))-> <>((state !=s1)&&(state!=ch1))))
	&&((state==s2) -> ((!([]<> ((state==Ch1)&&(state==Ch2))))-> <>((state !=s2)&&(state!=ch1)))
	)
	
	)
	}
 */
	String st="";
	 st="ltl "+" reqid "+"{[]("+getTranslateReq1()+")}";
	 System.out.println(st);
}
private static String getTranslateReq1() {
	String str="";
	for(int i=0;i<ScreenStates.size();i++)
	{
		str=str+"((State=="+ScreenStates.get(i)+")";
		if(ChangeStates.size()>0)
		str+="->((!([]<>(";
		for(int j=0;j<ChangeStates.size();j++)
		{
		str+="(state=="+ChangeStates.get(j)+ ") ||";
		}
		if(ChangeStates.size()>0)
		{
		str=str.substring(0, str.length()-2);
		str+=")))";
		}
		str+="-><>(";
		for(int j=0;j<ChangeStates.size();j++)
		{
		str+="(state!="+ChangeStates.get(j)+")&&";	
		}
		str=str+"(state!="+ScreenStates.get(i)+"))))&&";
	}
	if(ScreenStates.size()>0)
	{
		str=str.substring(0, str.length()-2);
		str=str+")))";
	}	
	return str;
}

public static void addtoChangeStates(String changeStates) {
	ChangeStates.add(changeStates);
}
public static void addtoScreenStates(String screenName) {
	ScreenStates.add(screenName);
}
}
