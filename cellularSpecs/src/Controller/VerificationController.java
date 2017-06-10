package Controller;

import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.swing.JCheckBox;

import Model.ChangeScreen;
import Model.Element;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.OnOffType;
import Model.Param;
import Model.RequirementList;
import Model.Screen;
import Model.WorkSpace;

public class VerificationController implements ItemListener {
	private FormulaTranslate formulaTranslate = new FormulaTranslate(); 
	
	public VerificationController(){
		formulaTranslate = new FormulaTranslate();
	}
	public  String translateToPROMELA(){
		WorkSpace w  =WorkSpace.getInstance();
		return ""
				+"#define ON  1 \n"
				+"#define OFF 0 \n"
				+"#define Empty 2 \n"
				+"#define NotEmpty 3 \n"
						+ "mytype={"+ScreenController.getAllScreenName()
						+"\n"+WorkSpace.getInstance().getAllChangeStates()+"}\n"
						+defineParamsPromela()
//						+getLTLReq()
						+"\nactive proctype vm(){\n"
						+" do\n"
						+ getPG()
						 +"od\n}";
	}

//	private static String getLTLReq() 
//	{
////		String st="";
////		Router.getInstance().getRequirementList().getReqlist().get(0);
////		for(int i=0;i<Router.getInstance().getRequirementList().getReqlist().size();i++)
////		{
////			if(Router.getInstance().getRequirementList().getReqlist().get(i).isSelected())
////			st+=Router.getInstance().getRequirementList().getReqlist().get(i).getFormula()+"\n";
////		}
////		return "";
//	}
	private  String getPG() {
		String sAll = new String("");Screen s = new Screen(); Element e ; 
		
		Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			s= (Screen)pair.getValue();	
			
			Iterator<Entry<String, Element>> it2 = WorkSpace.getInstance()
					.getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();
			while(it2.hasNext()){
				Map.Entry pair2 =(Map.Entry) it2.next(); 
				e= (Element)pair2.getValue();
				
				
				if (e.getType().equals(ElementType.getStandartBtnType())){
					s.getTransPromela().add(e.getStringPromela());
				}
				else 
					if (e.getType().equals(ElementType.getOnOffType())){
						
						/*
		 						 ::(aaaa==OFF)->atomic(aaaa=ON;action[13]=1;state=changemainScreenaaaa);
						 */
						
					s.getTransPromela().add("("+e.getParamName()+"=="
							+((OnOffType)e).getParameter().getValues()[0]+")->atomic("+e.getParamName()+"="
							+((OnOffType)e).getParameter().getValues()[1]+";"
							+"action["+((OnOffType)e).getParameter().getIndex()+"]=1;"
							+"state=change"+s.getScreenName()+e.getParamName()+");");
					
					/*
	 						 ::(aaaa==OFF)->atomic(aaaa=ON;action[13]=1;state=changemainScreenaaaa);
					 */
					s.getTransPromela().add("("+e.getParamName()+"=="
							+((OnOffType)e).getParameter().getValues()[1]+")->atomic("+e.getParamName()+"="
							+((OnOffType)e).getParameter().getValues()[0]+";"
							+"action["+((OnOffType)e).getParameter().getIndex()+"]=1;"
							+"state=change"+s.getScreenName()+e.getParamName()+");");
					
						//if (e.get)
					
					ChangeScreen changeScreen= new  ChangeScreen(s.getScreenName()+e.getParamName());
					changeScreen.addTransPromela("action["+((OnOffType)e).getParameter().getIndex()+"]==1"
							, "action["+((OnOffType)e).getParameter().getIndex()+"]=0"
							, s.getScreenName());
					s.addChangeScreen(changeScreen);
					
				}else if (e.getType().equals(ElementType.getEmptyNotEmptyType())){
					s.getTransPromela().add("("+e.getParamName()+"=="
							+((EmptyNEmptyType)e).getParameter().getValues()[0]+")->atomic("+e.getParamName()+"="
							+((EmptyNEmptyType)e).getParameter().getValues()[1]+";"
							+"state=change"+s.getScreenName()+e.getParamName()+");");

				}
				
				}
			
			sAll+=s.getStringPromela()+"\n";
			sAll+=getBlockChangeScreenFor(s);
			sAll += "/*"
					+ "\n*/////////////////////////////////////// End of changeParamScreens for screen "+s.getScreenName()+"////////////////////////////////////////////////\n*/\n\n";
		}
		return sAll;
	}

	private  String defineParamsPromela(){
		String out = new String("\n/*define flag for action */\nbyte action["+WorkSpace.getInstance().getParamsMap().size()+"];\n\n"
				+ "/*define params and default value*/\n");
		Iterator<Entry<String, Param>> it = WorkSpace.getInstance().getParamsMap().entrySet().iterator();
		Param p;
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			 p =(Param)pair.getValue();
			 out+="byte "+p.getParamName()+"="+p.getParamVal()+";\n";
		}
		return out;
	}
	
	private  String getBlockChangeScreenFor(Screen s){
		String out = new String (""); 
			
			Iterator<Entry<String,ChangeScreen>> it =s.getChangeScreenMap().entrySet().iterator();
		ChangeScreen state;
			while(it.hasNext()){
				Map.Entry pair =(Map.Entry) it.next(); 
				 state =(ChangeScreen)pair.getValue();
				 out+=state.getStringPromela()+"\n";
			}
		
//		String[] changeScreens= s.getChangeStates().split(",");
//		for (int i=0 ;i<changeScreens.length;i++){
//		ChangeScreenName.put(changeScreens[i], new Screen(changeScreens[i]));
//			out+= (new Screen(changeScreens[i])).getStringPromela()+"\n";
//		}
		
		return  out ; 
	}

	public  void selectReqNum(boolean flag,int reqNum) {
		RequirementList.getReqlist().get(reqNum).setSelected(flag);;
	
	}
	@Override
	public void itemStateChanged(ItemEvent e) {
		JCheckBox s=(JCheckBox)(e.getSource());
		WorkSpace.getLog().debug(s.getActionCommand());
		switch(s.getActionCommand())
		{
		case "req1":
			WorkSpace.getLog().debug("req1 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,0);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(0).getReq());
		break;
		
		case "req2":
			WorkSpace.getLog().debug("req2 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,1);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(1).getReq());
		break;
		
		case "req3":
			WorkSpace.getLog().debug("req3 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,2);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(2).getReq());
		break;
		
		case "req4":
			WorkSpace.getLog().debug("req4 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,3);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(3).getReq());
		break;
		
		case "req5":
			WorkSpace.getLog().debug("req5 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,4);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(4).getReq());
		break;
		
		case "req6":
			WorkSpace.getLog().debug("req6 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,5);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(5).getReq());
		break;
		
		case "req7":
			WorkSpace.getLog().debug("req7 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,6);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(6).getReq());
		break;
		
		case "req8":
			WorkSpace.getLog().debug("req8 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,7);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(7).getReq());
		break;
		case "req9":
			WorkSpace.getLog().debug("req9 is selected");
			this.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,8);
			WorkSpace.getLog().debug(RequirementList.getReqlist().get(8).getReq());
		break;
		}

}
}
