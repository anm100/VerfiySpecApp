package Controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import Model.MyAction;
import Model.Element;
import Model.ElementActionInterface;
import Model.ElementType;
import Model.MyCondition;
import Model.Param;
import Model.Requirement;
import Model.RequirementList;
import Model.StandartButtonType;
import Model.WorkSpace;
import ToolGUI.VerifySpecGUI;

public   class FormulaTranslate  {
	private static ArrayList<String> changeStatesList=new ArrayList<String>();//fill this araylist in Screen
	private static ArrayList<String> screenStatesList=new ArrayList<String>();//fill this araylist in WrokSpace
	public static ArrayList<String> getScreenStatesList() {
		return screenStatesList;
	}
	public FormulaTranslate(){
		changeStatesList=new ArrayList<String>();
		screenStatesList=new ArrayList<String>();
	}
	
private static String translateReq1() {
	String str="";
	String st="";
	 WorkSpace.getLog().debug("FormulaTranslation->translate Req 1");
	String stateChanges=getChangeState("==","||");
	String stateChanges1=getChangeState("!=","&&");
	for(int i=0;i<screenStatesList.size() &&changeStatesList.size()>0 ;i++)
	{
		str="";
		str+="((state=="+screenStatesList.get(i)+")->((!([]<>"+stateChanges+"))-><>(";
		str+="(state !="+screenStatesList.get(i)+"))))";
		st+="ltl "+" req1-"+WorkSpace.getReqlist().get(0).getLtlCount()+"{[]("+(str)+")}\n";
		WorkSpace.getReqlist().get(0).addltlCount();
	}
	WorkSpace.getLog().debug(st);
	return st;
	
}
public static void translateReq2a()
{
	String st="";
	 st="ltl "+" req2 "+"{[](("+getTranslateReq2a()+")}";
	 WorkSpace.getLog().debug(st);
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
public static  String translateReq2b(String root)
{
	String st="";
	 st="ltl "+" req2 "+"{[]("+getTranslateReq2b(root)+")}";
	 WorkSpace.getLog().debug(st);
	 return st;
}
private static String getTranslateReq2b(String root) {
	String str="";
	if(screenStatesList.size()>=2){
	 str="(state="+root+")->(";// ScreenStates.get(0) is the root 
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
/*
 * 
ltl r8 {[](
(airplaneMode==1)->((state==ChangeAirplaneMode || state==ChangeWifi || state==changebluParam)U(wifiParam==0)
 && (state==ChangeAirplaneMode || state==ChangeWifi || state==changebluParam)U(bluParam==0))
 )}
 */
public static  void translateReq8a(String parameterName,String SwithTO)
{
	String st="";
	Param p=WorkSpace.getInstance().getParamsMap().get(parameterName);
	 ArrayList<MyAction> actions=getActionByparameterName(p.getParamName(),SwithTO);
	 if(actions!=null)
	 {
	 st="ltl "+" req8 "+"{[]("+getTranslateReq8a(parameterName,SwithTO)+")}";
	 WorkSpace.getLog().debug(st);
	 System.out.println(st);
	 }
}
private static String getTranslateReq8a(String paramterName,String SwithTO) {
	String st1="";
	Param p=WorkSpace.getInstance().getParamsByName(paramterName);
	String parameter1=p.getParamName();
	ArrayList<MyAction> action=p.getActions(SwithTO);
	st1="("+parameter1+"=="+SwithTO+")->(";
	for(int i=0;i<action.size();i++)
	{
		if(action.get(i).getSwitchtO().equals(SwithTO))
		{
			MyAction a = action.get(i);
			st1+="(("+getChangeStateReg8a(action,SwithTO,parameter1)+")U("+a.getParamName()+"=="+a.getParamVal()+"))"+"&&";
		}
	}
	if(action.size()>0)
	st1=st1.substring(0, st1.length()-2);
	st1+=")";
	return st1;	
}
private static String getChangeStateReg8a(ArrayList<MyAction> actions,String SwithTO,String parameter1) {
	String str="";
	for(int j=0;j<changeStatesList.size();j++){
		if(changeStatesList.get(j).endsWith(parameter1+SwithTO))
			str+="(state=="+changeStatesList.get(j)+")";
	}
	for(int i=0;i<actions.size();i++)
	{
		for(int j=0;j<changeStatesList.size();j++){
		if(actions.get(i).getSwitchtO().endsWith(SwithTO)
				&&changeStatesList.get(j).endsWith(actions.get(i).getParamName()+actions.get(i).getParamVal()))
		{
		str+="||(state=="+changeStatesList.get(j)+")";	
		}
		}
	}
	return str;
} 
public static  void translateReq8b(String parameterName)
{
	String st="";
	Param p=WorkSpace.getInstance().getParamsMap().get(parameterName);
	// ArrayList<MyAction> actions=getActionByparameterName(p.getParamName());
	// st="ltl "+" req8 "+"{[]("+getTranslateReq8b(actions,p)+")}";
	 WorkSpace.getLog().debug(st);
}
private static String getTranslateReq8b(ArrayList<MyAction> actions,Param p) {
	String st1="";
	for(int j=0;j<actions.size();j++)
	{
		st1+="(("+actions.get(j).getParamName()+"=="+actions.get(j).getParamVal()+")&&";
	for(int i=0;i<actions.size();i++)
	{
		//st1+=getChangeStateReg8a(actions,actions.get(i).getParamName()+"=="+actions.get(i).getParamVal())+"&&";
	}
	if(actions.size()>0)
	st1=st1.substring(0, st1.length()-2);
	st1+=")||";
	}
	if(actions.size()>0)
	st1=st1.substring(0, st1.length()-2);
	st1+=p.getParamName()!=p.getParamVal();

	return st1;
	
}

/*
 * ltl r3 {[]( (state==SignIn)->((state==SignIn)U((state!=SignIn)
 * &&(
 * !((state!=changeParamUserName) &&())
 * U(state==BoPo_MainSreen)))
 * )) }
 */
public static  void translateReq3(String screen1,String screen2,ArrayList<String> parameterName)
{
	String st="";
	 st="ltl "+" req3 "+"{[]((state=="+screen1+")->((state=="+screen1+")U((state!="+screen1+")"+getChangeStateRe3(parameterName,screen2)+")))}";
	 WorkSpace.getLog().debug(st);
	 System.out.println(st);
}
private static String getChangeStateRe3(ArrayList<String> parameterName,String Until) {
	String str="&&(!(";
	for(int i=0;i<parameterName.size();i++)
	{
		for(int j=0;j<changeStatesList.size();j++)
		if(changeStatesList.get(j).endsWith(parameterName.get(i)))
		{
		str+="(state!="+changeStatesList.get(j)+")&&";	
		break;
		}
	}
	if(screenStatesList.size()>0)
		str=str.substring(0, str.length()-2);
	str+="U(state=="+Until+")))";
	return str;
}
public static  String translateReq4()
{
	String st="";
	 st="ltl "+" req4 "+"{[]("+getTranslateReq4()+")}";
	 WorkSpace.getLog().debug(st);
return st;
}
private static String getTranslateReq4() {
	String st="";
	String [] OnOffParams=ScreenController.getParams(ElementType.getOnOffType());
	String [] EmptyNotEmptyParams=ScreenController.getParams(ElementType.getEmptyNotEmptyType());
	for(int i=0;i<OnOffParams.length;i++)
		st+="("+getForReq4(OnOffParams[i],ElementType.getOn(),ElementType.getOff())+")&&";
	if(OnOffParams.length>0)
		st=st.substring(0, st.length()-2);
	for(int i=0;i<EmptyNotEmptyParams.length;i++)
		st+="("+getForReq4(EmptyNotEmptyParams[i],ElementType.getEmpty(),ElementType.getNotEmpty())+")&&";
	if(EmptyNotEmptyParams.length>0)
		st=st.substring(0, st.length()-2);
	return st;
}
private static String getForReq4(String param,String elType1,String elType2) {
	String st="";
	
	st="("+param+"=="+elType1+"||"+
		param+"=="+elType2+")->(!(<>"+
		"("+param+"!="+elType1+"&&"+
		param+"=="+elType2+")))";
	
	return st;
}
public static void translateReq7()
{
	String st="";
	 st="ltl "+" req7 "+"{[]("+getTranslateReq7()+")}";
	 WorkSpace.getLog().debug(st);
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
public static void translateReq6()
{
	 String st="";
	 st="ltl "+" req6 "+"{[]("+getTranslateReq6()+")}";
	 WorkSpace.getLog().debug(st);
}
private static String getTranslateReq6() {
		String st1="";
	 ArrayList<StandartButtonType> but=ScreenController.getElementsByType(ElementType.getStandartBtnType());
	 for(int i=0;i<but.size();i++)
	  if(but.get(i).getConds().size()>0)
		  st1+="((state=="+but.get(i).getTrans().getToScreen()+")->("+getConditions(but.get(i).getConds())+"))&&";
		if(but.size()>0)
			st1=st1.substring(0, st1.length()-2);
	return st1;
}
private static String getConditions(List<MyCondition> conds) {
	String st="(";
	for(int i=0;i<conds.size();i++)
		st+="("+conds.get(i).getParamName()+conds.get(i).getOpt()+conds.get(i).getParamVal()+")||";	
	if(conds.size()>1)
		st=st.substring(0, st.length()-2);
	st+=")";
	return st;
}

public static void setChangeStates(String[] changeStates) {
	
	for (int i=0 ; i<changeStates.length; i++){
		
		changeStatesList.add(changeStates[i]);

	}
}
public static void setScreenStates(String [] screensName) {
	for (int i=0 ; i<screensName.length; i++){
		
		screenStatesList.add(screensName[i]);

	}
}
//return String ((state op ChangeScreenParam1)logic(state op ChangeScreenParam2)...)
private static String getChangeState(String op,String logic) {
	String str="(";
		for(int j=0;j<changeStatesList.size();j++)
		str+="(state"+op+changeStatesList.get(j)+")"+logic;	
	if(changeStatesList.size()>0)
		str=str.substring(0, str.length()-2);
	str+=")";
	return str;
}

public static ArrayList<MyAction> getActionByparameterName(String parameterName,String SwithTO){
	Param p ;
	p= WorkSpace.getInstance().getParamsMap().get(parameterName);
	return p.getActions(SwithTO) ; 
		
	}
public static void setFormula(VerifySpecGUI verifySpecGUI) {
	 Boolean[] cb=verifySpecGUI.getReq();
	 for(int i=0;i<cb.length;i++)
	 {
		 WorkSpace.getReqlist().get(i).setSelected(cb[i]);
		 if(cb[i].equals(true))
		 {
			 switch (WorkSpace.getReqlist().get(i).getrID())
			 {
			 case "req1":
				 WorkSpace.getLog().debug("FormulaTranslate->req1");
				 WorkSpace.getReqlist().get(i).setFormula(translateReq1());
				break;
			 case "req2":
				 WorkSpace.getReqlist().get(i).setFormula(translateReq2b(verifySpecGUI.getRoot()));
				 WorkSpace.getLog().debug("FormulaTranslate->req2");
				 break;
			 case "req4":
				 WorkSpace.getReqlist().get(i).setFormula(translateReq4());
				 WorkSpace.getLog().debug("FormulaTranslate->req4");
				 break;
				
			 }
		 }
	 }
}
}
