package Controller;

import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Parameter;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.Element;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.ListElementType;
import Model.OnOffType;
import Model.ParamList;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;
import ToolGUI.AddParamterGUI;
import ToolGUI.ButtonTypeGUI;
import ToolGUI.EmptyNotEmptyGUI;
import ToolGUI.ListTypeGUI;
import ToolGUI.OnOfGUI;
import ToolGUI.ScreenGUI;
import Model.Param;

public class WorkSpaceController {
	
	public static void setup(String specName){
		if(Router.getInstance().getMainScreenGui() != null)
		{
			Router.getInstance().getMainScreenGui().dispose();
			WorkSpace.setInstance(null);
			WorkSpace.getInstance().setWorkSpaceName("Default SPEC");
		}
		WorkSpace.getInstance().setWorkSpaceName(specName);
		WorkSpace.getLog().debug("Create New Spec\n"+"spec name:"+specName);
	}
	public static void OpenSpecFromFile(String fileName){
		
		try (ObjectInputStream ois
			= new ObjectInputStream(new FileInputStream(fileName))) {

			WorkSpace.setInstance( (WorkSpace) ois.readObject());

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	
	}
	
	public static void createSpecGUI(){
	if(Router.getInstance().getMainScreenGui() !=null)
		Router.getInstance().getMainScreenGui().dispose();
		
		Router.getInstance().setMainScreenGui(WorkSpace.getInstance().getWorkSpaceName().toString());
		Router.getInstance().getMainScreenGui().setVisible(true);		
			Screen s ;
			Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
			while(it.hasNext()){
				Map.Entry pair =(Map.Entry) it.next(); 
				s= (Screen)pair.getValue();	
				Iterator<Entry<String, Element>> itElement=s.getElementsMap().entrySet().iterator();
				ScreenGUI screenTempGui=new ScreenGUI(s.getScreenName(),s.getCordinateX(),s.getCordinateY());
			screenTempGui.setLocation(s.getCordinateX(),s.getCordinateY());
			screenTempGui.addScreenMouseListener(Router.getInstance());
			screenTempGui.addScreenListener(Router.getInstance());
			
			while(itElement.hasNext()){
					Map.Entry pair2 =(Map.Entry) itElement.next(); 
					Element	element= (Element)pair2.getValue();
					screenTempGui.addElementLabel(element);
				}
		
			Router.getInstance().getMainScreenGui().getContentPane().add(screenTempGui);
			}
			Router.getInstance().getMainScreenGui().addMainScreenMouseListener((MouseListener)Router.getInstance());
			Router.getInstance().getMainScreenGui().addMainScreenMouseListener((MouseMotionListener)Router.getInstance());
			Router.getInstance().getMainScreenGui().refreshWorkspace();
		
	}
	public static void SaveSpecToFile(String fileName){
		try (ObjectOutputStream oos =
				new ObjectOutputStream(new FileOutputStream(fileName+".ser"))) {

			oos.writeObject(WorkSpace.getInstance());
			System.out.println("Done.. write to file "+fileName+".ser");

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
	public static void addScreenToGUI(ScreenGUI screenGUI,ListTypeGUI elementGui,ListElementType l)
	{
		
	}
	public static void addelementToGUI(ScreenGUI screenGUI,ListTypeGUI elementGui,ListElementType l)
	{
	
		l.setElementName(elementGui.getElementName().getText());
		WorkSpace.getLog().debug("--show values for element :"+elementGui.getValues());
		l.setValues(elementGui.getValues());
		WorkSpace.getLog().debug("values from element :: update"+l.getValues()[0]);

		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("add element to workspace struct");

		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();
		
	}
	public static void addelementToGUI(ScreenGUI screenGUI,EmptyNotEmptyGUI elementGui,EmptyNEmptyType l)
	{
	
		l.setElementName(elementGui.getElementName().getText());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();

	}
	public static void addelementToGUI(ScreenGUI screenGUI, OnOfGUI elementGui,	OnOffType l) {

		Param p=new Param(elementGui.getParameterName(),elementGui.getDefaultValue(),l.getType());
		l.setParam(p);
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		WorkSpace.getInstance().getParamsMap().put(elementGui.getParameterName(), p);
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();

	}
	public static void addelementToGUI(ScreenGUI screenGUI, ButtonTypeGUI elementGui,StandartButtonType l) {
		
		/*l.setElementName(elementGui.getElementName().getText());
		elementGui.getParmName();
		if(!elementGui.getParmName().equals("")){
		l.addCondition(elementGui.getParmName(), elementGui.getParmVal(), elementGui.getCondopt());
		}
		l.setTransition(screenGUI.getScreenName(), elementGui.getMoveTo());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		Router.getInstance().getMainScreenGui().refreshWorkspace();
		elementGui.dispose();
*/
	}
	public static void addNewParam(AddParamterGUI addparamter) {
		WorkSpace.getLog().debug("check type:"+addparamter.getParamType());
		if(addparamter.getParamType().equals(ElementType.getListType())){
			ParamList p =new ParamList(addparamter.getParameterName(), addparamter.getDefaultValue(), addparamter.getParamType());
			p.setValues(addparamter.getValues());
			WorkSpace.getInstance().getParamsMap().put(p.getParamName(), p);
			WorkSpace.getLog().debug("add param list"+p.getParamName());
		}
		else {
			Param p =new Param(addparamter.getParameterName(), addparamter.getDefaultValue(), addparamter.getParamType());
			WorkSpace.getInstance().getParamsMap().put(p.getParamName(), p);
			WorkSpace.getLog().debug("add param on/off - empty/notEmpty"+p.getParamName());
			WorkSpace.getLog().debug("getfrom hash param the parm"+WorkSpace.getInstance().getParamsMap().get(p.getParamName()));

		}
		

	}

}
