package Controller;

import java.lang.reflect.Array;
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
	WorkSpace.getReqlist().get(0).setltlCount();
	for(int i=0;i<screenStatesList.size() ;i++)
	{
		str="";
		if(changeStatesList.size()>1)
		{
		str+="((state=="+screenStatesList.get(i)+")->((!([]<>"+stateChanges+"))-><>(";
		str+="(state !="+screenStatesList.get(i)+"))))";
		}
		else
		{
			str+="((state=="+screenStatesList.get(i)+")->";
			str+="(state !="+screenStatesList.get(i)+"))";	
		}
		st+="ltl "+" req1_"+WorkSpace.getReqlist().get(0).getLtlCount()+"{[]("+(str)+")}\n";
		WorkSpace.getReqlist().get(0).addltlCount();
	}
	WorkSpace.getReqlist().get(0).decltlCount();
	WorkSpace.getLog().debug(st);
	return st;
	
}
private static String translateReq2(String root) {
	String str="";
	String st="";
	 WorkSpace.getLog().debug("FormulaTranslation->translate Req 2");
	String stateChanges=getChangeState("==","||");
	String stateChanges1=getChangeState("!=","&&");
	WorkSpace.getReqlist().get(1).setltlCount();
	for(int i=0;i<screenStatesList.size();i++)
	{
		if(!(screenStatesList.get(i).equals(root))){
			if(changeStatesList.size()>1 ){
				str="";
				str+="((state=="+root+")->((!([]<>"+stateChanges+"))-><>(";
				str+="(state =="+screenStatesList.get(i)+"))))";
				st+="ltl "+" req2_"+WorkSpace.getReqlist().get(1).getLtlCount()+"{[]("+(str)+")}\n";
				WorkSpace.getReqlist().get(1).addltlCount();
			}
			else
			{
				str="";
				str+="((state=="+root+")->";
				str+="(state =="+screenStatesList.get(i)+"))";
				st+="ltl "+" req2_"+WorkSpace.getReqlist().get(1).getLtlCount()+"{[]("+(str)+")}\n";
				WorkSpace.getReqlist().get(1).addltlCount();	
			}
		}
	}
	WorkSpace.getReqlist().get(1).decltlCount();
	WorkSpace.getLog().debug(st);
	return st;
	
}

public static  String translateReq8a(String parameterName,ArrayList<String> action)
{
	String st="";
	 st="ltl "+" req8 "+"{[]("+getTranslateReq8a(parameterName,action)+")}";
	 WorkSpace.getLog().debug(st);
	 return st;
}
private static String getTranslateReq8a(String paramterName,ArrayList<String> action) {
	String st1="";
	String []st=paramterName.split("=");
	st1="("+st[0]+"=="+st[1]+")->(";
	for(int i=0;i<action.size();i++)
	{
		String[]a=action.get(i).split("=");
			st1+="(("+getChangeStateReg8a(st[0],st[1],action)+")U("+a[0]+"=="+a[1]+"))"+"&&";
	}
	if(action.size()>0)
	st1=st1.substring(0, st1.length()-2);
	st1+=")";
	return st1;	
}
private static String getChangeStateReg8a(String parameterName,String siwtchTo,ArrayList<String> action) {
	String str="";
	for(int i=0;i<changeStatesList.size();i++)
	{
	if(changeStatesList.get(i).endsWith(parameterName+siwtchTo))
	{
		System.out.println(parameterName);
		str+="(state=="+changeStatesList.get(i)+")";
		break;
	}
	}
	
	for(int i=0;i<action.size();i++)
	{
		for(int j=0;j<changeStatesList.size();j++){
			String[] st=action.get(i).split("=");
		if(changeStatesList.get(j).endsWith(st[0]+st[1]))
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
public static  String translateReq3(String screen1,String screen2,ArrayList<String> parameterName)
{
	String st="";
	 st="ltl "+" req3 "+"{[]((state=="+screen1+")->((state=="+screen1+")U((state!="+screen1+")"+getChangeStateRe3(parameterName,screen2)+")))}";
	 WorkSpace.getLog().debug(st);
	return st;
}
private static String getChangeStateRe3(ArrayList<String> parameterName,String Until) {
	String str="&&(!(";
	for(int i=0;i<parameterName.size();i++)
	{
		for(int j=0;j<changeStatesList.size();j++)
		if(changeStatesList.get(j).endsWith(parameterName.get(i)+ElementType.getNotEmpty()))
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
	 st=getTranslateReq4();
	 WorkSpace.getLog().debug(st);
return st;
}
private static String getTranslateReq4() {
	String st="";
	String [] OnOffParams=ScreenController.getParams(ElementType.getOnOffType());
	String [] EmptyNotEmptyParams=ScreenController.getParams(ElementType.getEmptyNotEmptyType());
	WorkSpace.getReqlist().get(3).setltlCount();
	for(int i=0;i<OnOffParams.length;i++)
	{
		st+="ltl "+" req4_"+WorkSpace.getReqlist().get(3).getLtlCount()+"{[]("+getForReq4(OnOffParams[i],ElementType.getOn(),ElementType.getOff())+")}\n";
		WorkSpace.getReqlist().get(3).addltlCount();
	}
	WorkSpace.getReqlist().get(3).decltlCount();
	for(int i=0;i<EmptyNotEmptyParams.length;i++)
	{
		WorkSpace.getReqlist().get(3).addltlCount();
		st+="ltl "+" req4_"+WorkSpace.getReqlist().get(3).getLtlCount()+"{[]("+getForReq4(EmptyNotEmptyParams[i],ElementType.getEmpty(),ElementType.getNotEmpty())+")}\n";
	
	}
	return st;
}
private static String getForReq4(String param,String elType1,String elType2) {
	String st="";
	
	st="("+param+"=="+elType1+"||"+
		param+"=="+elType2+")->(!(<>"+
		"("+param+"!="+elType1+"&&"+
		param+"!="+elType2+")))";
	
	return st;
}
public static String translateReq7()
{
	String st="";
	 st=getTranslateReq7();
	 WorkSpace.getLog().debug(st);
	 return st;
}
private static String getTranslateReq7() {
	String req7="";
	WorkSpace.getReqlist().get(6).setltlCount();
	String[] params=ScreenController.getParams(ElementType.getOnOffType());
	for(int i=0;i<params.length;i++)
	{
	req7+=getOnOffLtL(params[i],WorkSpace.getReqlist().get(6).getLtlCount())+"\n";
	WorkSpace.getReqlist().get(6).addltlCount();
	WorkSpace.getReqlist().get(6).addltlCount();
	}
	params=ScreenController.getParams(ElementType.getEmptyNotEmptyType());
	for(int i=0;i<params.length;i++)
	{
	req7+=getEmpNoLTL(params[i],WorkSpace.getReqlist().get(6).getLtlCount())+"\n";
	WorkSpace.getReqlist().get(6).addltlCount();
	}
	WorkSpace.getReqlist().get(6).decltlCount();
	return req7;
	/*String[] params=ScreenController.getParams(ElementType.getOnOffType());
	req7+=getEmNotLTL(params);
	for(int i=0;i<params.length;i++)
	{
		String[] values = WorkSpace.getInstance().getParamsMap().get(params[i]).getValues();
		for(int j=0;j<values.length;j++)
		{
			req7+="(("+params[i]+"=="+values[j]+")->(!(X("+getStatesReq7(params[i],values[j])+"U("+params[i]+"!="+values[j]+")))))&&";
		}
	}
	if(params.length>0)
		req7=req7.substring(0, req7.length()-2);*/
}

private static String getEmpNoLTL(String parametername, int index) {
	
	String st="ltl "+" req7_"+index+"{[](";
	st+="(("+parametername+"=="+ElementType.getEmpty()+")->";
	st+="(!(X("+getStatesReq7(parametername,ElementType.getNotEmpty());
	st+="U(("+parametername+"=="+ElementType.getNotEmpty()+") &&"+getStatesReq7(parametername,ElementType.getNotEmpty())+"))))))}";
return st;
}
private static String getOnOffLtL(String param,int inedx) {
	String st="ltl "+" req7_"+inedx+"{[](";
		st+="(("+param+"=="+ElementType.getOn()+")->";
		st+="(!(X("+getStatesReq7(param,ElementType.getOff());
		st+="U(("+param+"=="+ElementType.getOff()+") &&"+getStatesReq7(param,ElementType.getOff())+"))))))}\n";
		
		 st+="ltl "+" req7_"+(inedx+1)+"{[](";
		st+="(("+param+"=="+ElementType.getOff()+")->";
		st+="(!(X("+getStatesReq7(param,ElementType.getOn());
		st+="U(("+param+"=="+ElementType.getOn()+") &&"+getStatesReq7(param,ElementType.getOn())+"))))))}";
	return st;
}
private static String getStatesReq7(String paramName, String value) 
{
	int i=0;
	String st1=new String("");
		for(i=0;i<changeStatesList.size();i++)
		{

			if(changeStatesList.get(i).endsWith(paramName+value))
			{
			st1+="(state!="+changeStatesList.get(i)+")";
			break;

			}
		}
	return st1;
}
public static String translateReq6(String screen,ArrayList<String> parameterName)
{
	 String st="";
	 st="ltl "+" req6 "+"{[]((state=="+screen+")->("+getTranslateReq6(parameterName)+"))}";
	 WorkSpace.getLog().debug(st);
	 return st;
}
private static String getTranslateReq6(ArrayList<String> parameterName) {
		String st="";
	 for(int i=0;i<parameterName.size();i++){

		 st+="("+parameterName.get(i)+"=="+ElementType.getNotEmpty()+")&&";
	 }
		if(parameterName.size()>0)
		{
			st=st.substring(0, st.length()-2);
		}
	return st;
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
				 WorkSpace.getReqlist().get(i).setFormula(translateReq2(verifySpecGUI.getRoot().getSelectedItem().toString()));
				 WorkSpace.getLog().debug("FormulaTranslate->req2");
				 break;
			 case "req3":
				 WorkSpace.getReqlist().get(i).setFormula(translateReq3(
			verifySpecGUI.getReq3ScreenICombo().getSelectedItem().toString(), verifySpecGUI.getReq3ScreenICombo().getSelectedItem().toString()
				 , verifySpecGUI.getChoosenParam()));
				 WorkSpace.getLog().debug("FormulaTranslate->req3");
				 break;
				 
			 case "req4":
				 WorkSpace.getReqlist().get(i).setFormula(translateReq4());
				 WorkSpace.getLog().debug("FormulaTranslate->req4");
				 break;
			 case "req5":
				 //WorkSpace.getReqlist().get(i).setFormula(translateReq4());
				 WorkSpace.getLog().debug("FormulaTranslate->req5");
				 break;
			 case "req6":
				 WorkSpace.getReqlist().get(i).setFormula(translateReq6(verifySpecGUI.getReq6ScreenJComb().getSelectedItem().toString()
						 ,verifySpecGUI.getChoosenParamreq6()));
				 WorkSpace.getLog().debug("FormulaTranslate->req6");
				 break;
			 case "req7":
				 WorkSpace.getReqlist().get(i).setFormula(translateReq7());
				 WorkSpace.getLog().debug("FormulaTranslate->req7");
				 break;
			 case "req8":
				 WorkSpace.getReqlist().get(i).setFormula(translateReq8a(verifySpecGUI.getreq8ScreenCombo().getSelectedItem().toString(),
						 verifySpecGUI.getReq8ChoosenParam()));
				 WorkSpace.getLog().debug("FormulaTranslate->req8");
				 break;
			 }
		 }
	 }
}
}
