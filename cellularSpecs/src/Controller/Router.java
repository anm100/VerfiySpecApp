package Controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

import our.Utils.BulidSpec;
import Model.Element;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.ListElementType;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;
import Model.OnOffType;
import Model.Param;
import Model.Requirement;
import Model.RequirementList;
import ToolGUI.*;

public class Router implements ActionListener,MouseListener,MouseMotionListener, ItemListener {
	private static Router instance =null ; 
	private int cordinateX; 
	private int cordinateY; 
	private VerifySpecGUI verifySpecGUI;
	private int x=0;
	private int y=0;
	private String specName;
	public Boolean inner =false;
	private RequirementList requirementList;
	private String [] st; 
	private static  Boolean GetNewLocation=false;
	private OnOfGUI  onOfGUI; 
	private ListTypeGUI  listTypeGUI;
	private EmptyNotEmptyGUI emptyNotEmptyGUI;
	private NewSpecGUI newSpecGui;
	private ButtonTypeGUI buttonTypeGUI; 
	private MainScreenGui mainScreenGui;
	private AddScreenGUI addScreen;
	private Screen screen;
	private ScreenGUI screenGUI;
	private AddActionGUI addActionGUI;
	private AddConditonGui addConditonGui;
	private AddParamterGUI addparamterGUI;
	private  Router(NewSpecGUI newSpecGui)
	{
		this.newSpecGui=newSpecGui;
		requirementList=new RequirementList();
	}
	/**
	 * @wbp.parser.entryPoint
	 */
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
		switch(e.getActionCommand())
		{
		case("_create_NewSpec"):
			
			WorkSpaceController.setup(newSpecGui.getSpecName());
			specName=newSpecGui.getSpecName();
			setMainScreenGui(specName);
			newSpecGui.dispose();
//			this.addparamterGUI=new AddParamterGUI();
//			addparamterGUI.setVisible(true);
//			addparamterGUI.setAddParamListener(this);
		break;
		case("_open_Spec"): 
			WorkSpace.getLog().debug("open spec"+newSpecGui.getSpecLocation());
			WorkSpaceController.OpenSpecFromFile(newSpecGui.getSpecLocation());
			WorkSpaceController.createSpecGUI();
		break;
		
		case("Browse.."):
			JFileChooser chooser1 = new JFileChooser();
			String workingDir1 = System.getProperty("user.dir");
		    chooser1.setCurrentDirectory(new java.io.File("."));
		    chooser1.getCurrentDirectory();
		    chooser1.setDialogTitle("select a directory as workspace ");
		    chooser1.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
		    chooser1.setAcceptAllFileFilterUsed(false);

		    if (chooser1.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
		      System.out.println("getSelectedFile() : " + chooser1.getSelectedFile());
		    } else {
		      System.out.println("No Selection ");
		    }
			chooser1.getSelectedFile().toString();
		
		break;
		
		case("Save SPEC"):
			chooseFileLocation();//chose the folder and save the file 
		//WorkSpaceController.SaveSpecToFile(WorkSpace.getInstance().getWorkSpaceName()); 
		case("Save "):
			
		//WorkSpaceController.SaveSpecToFile(WorkSpace.getInstance().getWorkSpaceName()); 
			
		break;
		case("Verifiy SPEC"):
			VerificationController.setRequiremens();
	
			WorkSpace.getLog().debug("verifiy Spec case");
		 verifySpecGUI=new VerifySpecGUI();
		VerifySpecGUI.setVerifySpecGUI(this);
		VerifySpecGUI.setCheckBoxListener(this);
		verifySpecGUI.setVisible(true);
		//	verifySpecGUI.addRootScreen(st);
			/*try {
				Runtime.getRuntime().exec("cmd /c start b.bat");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}*/
		break;
		case("AddScreen"):
			WorkSpace.getLog().debug("do_AddScreen.. ");
			addScreen=new AddScreenGUI();
			addScreen.addScreenListener(this);
			addScreen.setVisible(true);

			mainScreenGui.addMainScreenMouseListener((MouseListener)this);
			mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);		
        break;
		
		case("Run_verifectaion"):
			WorkSpace.getLog().debug("Run_verifectaion");
			VerificationController.addToRequirmentList(verifySpecGUI);
			WorkSpace.getLog().info(VerificationController.translateToPROMELA());
			WorkSpace.getLog().debug("create pml file ");

			try{
			    PrintWriter writer = new PrintWriter(WorkSpace.getInstance().getWorkSpaceName()+".pml", "UTF-8");
			    writer.println(VerificationController.translateToPROMELA());
			    writer.close();
			} catch (IOException eb) {
			   // do something
			}

		break;

		case("ShowResults"):
		break;
		case("_save_add_screen"):
			screen = new Screen();
			screen.setScreenName(addScreen.getScreenName().getText().toString());
			screen.setDescription(addScreen.getDescription().getText().toString());
			screen.setCordinateX(this.cordinateX);
			screen.setCordinateY(this.cordinateY);
			GetNewLocation=true;
			 screenGUI=new ScreenGUI(screen.getScreenName(),screen.getCordinateX(),screen.getCordinateY());//there is a problem
			//screenGUI.addScreenListener(a);
			WorkSpace.getInstance().addScreen(screen.getScreenName(), screen);
			WorkSpace.getLog().debug("this screen name  added -> "+screen.getScreenName());

			
			screenGUI.addScreenMouseListener2(this);
			//mainScreenGui.setSpecNameLabel(WorkSpace.getInstance().getWorkSpaceName());
			mainScreenGui.getContentPane().add(screenGUI);
			mainScreenGui.refreshWorkspace();
			addScreen.dispose();
			break;
		case "Delete screen":
			WorkSpace.getLog().debug("delete screen case");
			Router.getInstance().screenGUI.setVisible(false);
			WorkSpace.getInstance().deleteScreen(WorkSpace.getInstance().getScreenByName(screenGUI.getScreenName()));
			break;
		case "Move screen":
			WorkSpace.getLog().debug("Move screen");
			Router.getInstance().setGetNewLocation(true);
			break;
			
			/*
			 *  operation in Elements type gui 
			 */
			
		case("_menu_onOff_type"):
			WorkSpace.getLog().debug("this on/off button to create new window");
			onOfGUI= new OnOfGUI(screenGUI.getScreenName(),null);
			onOfGUI.setVisible(true);
			onOfGUI.setOnOffListener(this);
			onOfGUI.setParamChangeListener(this);
			String [] st ={"aaaaa"};
			onOfGUI.setParameterName(ScreenController.getParams(ElementType.getOnOffType(),screenGUI.getScreenName()));
			break;
		case "_save_on_off":
			
			WorkSpace.getLog().debug("do _save_on_off.. ");
			WorkSpaceController.addelementToGUI(screenGUI, onOfGUI,new OnOffType());
			
			break;
		case "_add_Action_OnOff":
			
			 addActionGUI=new AddActionGUI();
			 addActionGUI.setParameterName(onOfGUI.getParameterName());
			String [] values= WorkSpace.getInstance().getParamsMap().get(onOfGUI.getParameterName()).getValues();//add attribute to param with defult values ->ask
			 addActionGUI.setParameterValue(values);
			// addActionGUI.setParameterName(onOfGUI.getParamName());
			addActionGUI.setVisible(true);
		break;
			
		case "_menu_list_type": 
			WorkSpace.getLog().debug("you chosed List type element");
		    listTypeGUI=new ListTypeGUI(screenGUI.getScreenName());
			listTypeGUI.setVisible(true);
			listTypeGUI.setListTypeListener(this);
			
			break; 
		case "_save_List":
			WorkSpace.getLog().debug("do _save_list.. ");
			WorkSpaceController.addelementToGUI(screenGUI, listTypeGUI,new ListElementType());
			break; 	
			
			case("_menu_emptyNotEmpty_type"):
				WorkSpace.getLog().debug("this _menu_emptyNotEmpty_type to create new window");
				emptyNotEmptyGUI= new EmptyNotEmptyGUI(screenGUI.getScreenName());
				emptyNotEmptyGUI.setVisible(true);
				emptyNotEmptyGUI.setEmptyNEmptyListener(this);
				break;
			case "_save_EmptyNEmpty":
				WorkSpace.getLog().debug("do _save_on_off.. ");
				WorkSpaceController.addelementToGUI(screenGUI, emptyNotEmptyGUI,new EmptyNEmptyType());
				break;
			case"_menu_button_type":
				WorkSpace.getLog().debug("this _menu_button_type to create new window");
				buttonTypeGUI= new ButtonTypeGUI(screenGUI.getScreenName(),null);
				buttonTypeGUI.setVisible(true);
				buttonTypeGUI.setButtonTListener(this);

//			        String st1[]=new String[ScreenController.getparams().size()+1];
//			        st1[0]="";
//			        for(i=1;i< ScreenController.getparams().size();i++)
//			        {
//			        	st1[i]= ScreenController.getparams().get(i).getParamName();
//			        }
//			        buttonTypeGUI.addParamsNameToComboBox(st1);
//			        buttonTypeGUI.setParamChangeListener(this);
				break;
				
			case"_save_standart_button": 
				WorkSpace.getLog().debug("do _save_standart_button.. ");
				WorkSpaceController.addelementToGUI(screenGUI, buttonTypeGUI, new StandartButtonType());
				break;
			case"_add_conditions":// + open AddActionGui in order to add condition
				WorkSpace.getLog().debug("+ add  a condition from ButoonTypeGUI  ");
				  addConditonGui=new AddConditonGui();
				  addConditonGui.setAddAconditionListener(this);
				  addConditonGui.setVisible(true);
				break; 
			case"_save_new_condition":
				WorkSpace.getLog().debug("Save  a condition from AddConditionGUI");
				buttonTypeGUI.addToTable(addConditonGui.getParamName(),"=",addConditonGui.getValue());
				break;
			case "_save_new_param_ex":
				if (addparamterGUI.getParamType() !=null){
				WorkSpaceController.addNewParam(addparamterGUI);
				} else {
					WorkSpace.getLog().debug("not allowed , you should choose type first");
					addparamterGUI.expectionbtnSave();

				}
				break;
		}

	}
	private void chooseFileLocation() {
		JFileChooser chooser = new JFileChooser();
		chooser.setCurrentDirectory(new java.io.File(WorkSpace.getInstance().getWorkSpaceLocation()));
		chooser.setAcceptAllFileFilterUsed(false);
		chooser.setDialogType(JFileChooser.SAVE_DIALOG);
		FileFilter filter = new FileNameExtensionFilter("SPEC (.ser) ", new String[] {".ser"});
		chooser.addChoosableFileFilter(filter);
		chooser.setDialogTitle("SaveSpec ");
		
		if(chooser.showSaveDialog(null)==JFileChooser.APPROVE_OPTION)
		{
			System.out.println(chooser.getSelectedFile().getParentFile());
			WorkSpace.getInstance().setWorkSpaceLocation(chooser.getSelectedFile().getParentFile().toString());
			WorkSpaceController.SaveSpecToFile(chooser.getSelectedFile().toString());
		}

		
	}
	public RequirementList getRequirementList() {
		return requirementList;
	}
	public void setRequirementList(RequirementList requirementList) {
		this.requirementList = requirementList;
	}

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}
	
	@Override
	public void mouseClicked(MouseEvent arg0) {

	}
	@Override
	public void mouseEntered(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseExited(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub
		if(this.GetNewLocation==true)
		{
			//screenGUI.removeMouseListener(this);
			//screenGUI.removeMouseMotionListener(this);
			screenGUI.addScreenListener(this);
			GetNewLocation=false;
			WorkSpace.getLog().debug("mouse pressed method -screenGUI name is "+screenGUI.getScreenName());
			Screen stemp=WorkSpace.getInstance().getScreenByName(screenGUI.getScreenName());
			WorkSpace.getLog().debug("get from hash "+stemp.getScreenName()+":before is "+"x:"+stemp.getCordinateX()+" Y:"+stemp.getCordinateY());

			stemp.setCordinateX(this.cordinateX);
			stemp.setCordinateY(this.cordinateY);
			WorkSpace.getInstance().addScreen(stemp.getScreenName(), stemp);
			stemp=WorkSpace.getInstance().getScreenByName(screenGUI.getScreenName());
			WorkSpace.getLog().debug("get from hash "+stemp.getScreenName()+":update is "+"x:"+stemp.getCordinateX()+" Y:"+stemp.getCordinateY());
			WorkSpace.getLog().debug("screenGUI added successfully ,update coordinate X + Y in workspace hash");
		}
	
	
	}
	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}
	@Override
	public void mouseDragged(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseMoved(MouseEvent arg0) {
		// TODO Auto-generated method stub
		//System.out.println(arg0.getSource().getClass().getSimpleName().toString());
		if(arg0.getSource().getClass().getSimpleName().toString().equals("MainScreenGui") && GetNewLocation==true)
		{
			this.cordinateX	=arg0.getX()-4;
			this.cordinateY	=arg0.getY()-22;
			screenGUI.setLocation(arg0.getX()-4,arg0.getY()-22);
		}
		if(arg0.getSource().getClass().getSimpleName().toString().equals("ScreenGUI") && GetNewLocation==true)
		{
			this.cordinateX=cordinateX+arg0.getX();
			this.cordinateY=cordinateY+arg0.getX();
			screenGUI.setLocation(cordinateX,cordinateY);
		}
		if(arg0.getSource().getClass().getSimpleName().toString().equals("ScreenGUI") && GetNewLocation==false)
		{
			screenGUI=((ScreenGUI)arg0.getComponent());
		}
		
	}
	void setMainScreenGui(String specName) {
		if(mainScreenGui!=null)
			mainScreenGui.dispose();
		this.mainScreenGui=new MainScreenGui();
		this.mainScreenGui.setSpecNameLabel(specName);
		this.mainScreenGui.addMainScreenListener(this);
		this.mainScreenGui.setVisible(true);
		this.specName=specName;
		mainScreenGui.setVisible(true);
	}
	public  static Router getInstance()
	{
		return instance;
	}
	public  static 	void setInstance(NewSpecGUI newSpecGui)
	{
		Router.instance=new Router(newSpecGui);
	}
	
	
	public MainScreenGui getMainScreenGui() {
		return mainScreenGui;
	}

	public Boolean getGetNewLocation() {
		return GetNewLocation;
	}
	public void setGetNewLocation(Boolean getNewLocation) {
		GetNewLocation = getNewLocation;
	}
	
	/*
	 * \idea for update gui genery , maybe "!!!
	
	
	private void updateGui (JFrame gui){
		
	}*/


	@Override
	public void itemStateChanged(ItemEvent e) {
	JComboBox s=(JComboBox)(e.getSource());
	WorkSpace.getLog().debug("PARAM:"+WorkSpace.getInstance().getParamsMap().get(s.getSelectedItem().toString()));
	//	onOfGUI.setOnOff(		(WorkSpace.getInstance().getParamsMap().get(s.getSelectedItem().toString()).getParamVal()
//		JCheckBox s=(JCheckBox)(e.getSource());
//		WorkSpace.getLog().debug(s.getActionCommand());
//		switch(s.getActionCommand())
//		{
//		case "1":
//		WorkSpace.getLog().debug(e.getItem().toString());
//		for(int i=0;i< ScreenController.getparams().size();i++)
//		if(e.getItem().toString().equals(ScreenController.getparams().get(i).getParamName()))
//		{
//			buttonTypeGUI.addParamsValuesToComboBox(ScreenController.getparams().get(i).getValues());
//		break;	
//		}
//		break;
//		case "req1":
//			WorkSpace.getLog().debug("req1 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,0);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(0).getReq());
//		break;
//		
//		case "req2":
//			WorkSpace.getLog().debug("req2 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,1);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(1).getReq());
//		break;
//		
//		case "req3":
//			WorkSpace.getLog().debug("req3 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,2);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(2).getReq());
//		break;
//		
//		case "req4":
//			WorkSpace.getLog().debug("req4 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,3);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(3).getReq());
//		break;
//		
//		case "req5":
//			WorkSpace.getLog().debug("req5 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,4);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(4).getReq());
//		break;
//		
//		case "req6":
//			WorkSpace.getLog().debug("req6 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,5);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(5).getReq());
//		break;
//		
//		case "req7":
//			WorkSpace.getLog().debug("req7 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,6);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(6).getReq());
//		break;
//		
//		case "req8":
//			WorkSpace.getLog().debug("req8 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,7);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(7).getReq());
//		break;
//		case "req9":
//			WorkSpace.getLog().debug("req9 is selected");
//			VerificationController.selectReqNum(e.getStateChange() == ItemEvent.SELECTED,8);
//			WorkSpace.getLog().debug(requirementList.getReqlist().get(8).getReq());
//		break;
//		}
	}
}
