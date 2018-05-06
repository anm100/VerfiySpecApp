package Controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.Map.Entry;

import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

import CodeGeneration.AndroidStudioProjectController;
import Model.Element;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.ListElementType;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;
import Model.OnOffType;
import Model.Requirement;
import Model.RequirementList;
import ToolGUI.*;

public class Router implements ActionListener,MouseListener,MouseMotionListener ,ItemListener{
	private static Router instance =null ; 
	private int cordinateX; 
	private int cordinateY; 
	private VerifySpecGUI verifySpecGUI=null;
	private int x=0;
	private int y=0;
	private String specName;
	public Boolean inner =false;
	private  Boolean GetNewLocation=false;
	private OnOfGUI  onOfGUI; 
	private ListTypeGUI  listTypeGUI;
	private EmptyNotEmptyGUI emptyNotEmptyGUI;
	private NewSpecGUI newSpecGui;
	private ButtonTypeGUI buttonTypeGUI; 
	private MainScreenGui mainScreenGui;
	private AddScreenGUI addScreen;
	private Screen screen;
	private ScreenGUI screenGUI;
	private int Location=0;
	private String path ; 
	private VerificationController verificationController ;
	private AddCommentGUI addCommentGUI;
	private ChooseIndexOnScreenGUI chooseIndexGUI;
	private int elemWeCameFrom; // for COMMENT, INDEX. we need to know what element we came from. 1-button, 2-onOff, 3-empNotEmp, 4-List. Already works, no need to touch anything, just use
	private AndroidStudioProjectController androidStudioProjectController; // code generation controller
	private GenerateCodeGUI generateCodeGUI; // code generation GUI

	private AddActionGUI addActionGUI;
	private AddConditonGui addConditonGui;
	private AddParamterGUI addparamterGUI;
	private  Router(NewSpecGUI newSpecGui)
	{
		this.newSpecGui=newSpecGui;
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
			(new debugingGUI()).setVisible(true);
//			this.addparamterGUI=new AddParamterGUI();
//			addparamterGUI.setVisible(true);
//			addparamterGUI.setAddParamListener(this);
		break;
		case("_open_Spec"): 
			WorkSpace.getLog().debug("open spec"+getPath());
			WorkSpaceController.OpenSpecFromFile(getPath());
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
		break;
		case("Verifiy SPEC"):
			if(ScreenController.getScreenNameNames().length>0)
			{
			mainScreenGui.setBtnRunVerification(true);
			if(verifySpecGUI==null)
			{
				verifySpecGUI=new VerifySpecGUI();
				
				VerificationController.buildVerifySpecGUI(verifySpecGUI);		
				verifySpecGUI.setVerifySpecGUI(this);
			}
				verifySpecGUI.setVisible(true);
			}
			if(ScreenController.getScreenNameNames().length>=2
				&&ScreenController.getparams().length>0)
			{
				verifySpecGUI.enableReq3();
			}
		break;
		case("Run_verifectaion"):
			verificationController = new VerificationController();
			WorkSpace.getLog().debug("Router->Run_verifectaion");
			if(checkInputs.CheckSelectedScreen(verifySpecGUI))
			{
				verifySpecGUI.setVisible(false);
			FormulaTranslate.setFormula(verifySpecGUI);
			WorkSpace.getLog().info(verificationController.translateToPROMELA(verifySpecGUI.getRoot().getSelectedItem().toString()));
			WorkSpace.getLog().debug("Router->create pml file ");
			mainScreenGui.setBtnShowresults(true);
			try {
				PrintWriter writer;
				writer = new PrintWriter(RunSpin.fileslocation+WorkSpace.getInstance().getWorkSpaceName()+".pml", "UTF-8");
			    writer.println(verificationController.translateToPROMELA(verifySpecGUI.getRoot().getSelectedItem().toString()));
			    writer.close();
			} catch (FileNotFoundException | UnsupportedEncodingException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			try {
			try {
				RunSpin.verifyUsingSpin();
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			} catch (IOException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			ResultGui rs=new ResultGui();
			rs.setVisible(true);
			VerificationController.showResults(rs);
			showResults(rs);	
			/*if (WorkSpace.getLog().isDebug()==false){
			WorkSpace.getLog().debug("start run script in SPIN");
			try {
			      Runtime.getRuntime().exec( "wscript exe/excute.vbs" );
			   }
			   catch( IOException e1 ) {
			      System.out.println(e1);
			      System.exit(0);
			   	}
			}
			if (WorkSpace.getLog().isDebug()==true){

			try {
			Runtime.getRuntime().exec("cmd /c start excuteDebug.bat");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
			}*/
			}
			break;

		case("AddScreen"):
			WorkSpace.getLog().debug("do_AddScreen.. ");
			addScreen=new AddScreenGUI();
			addScreen.addScreenListener(this);
			addScreen.setVisible(true);
			mainScreenGui.addMainScreenMouseListener((MouseListener)this);
			mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
		break;
		case("ShowResults"):
			ResultGui rs1=new ResultGui();
			rs1.setVisible(true);
			VerificationController.showResults(rs1);
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
			WorkSpace.getInstance().addScreen(screen);
			WorkSpace.getLog().debug("this screen name  added -> "+screen.getScreenName());

			
			screenGUI.addScreenMouseListener2(this);
			mainScreenGui.setEnabled(true);

			//mainScreenGui.setSpecNameLabel(WorkSpace.getInstance().getWorkSpaceName());
			mainScreenGui.getContentPane().add(screenGUI);
			mainScreenGui.refreshWorkspace();
			addScreen.dispose();
			break;
		case "Delete screen":
			WorkSpace.getLog().debug("delete screen case");
			Router.getInstance().screenGUI.setVisible(false);
			WorkSpace.getInstance().deleteScreen(WorkSpace.getInstance().getScreenByName(screenGUI.getScreenName()));
			if(ScreenController.getScreenNameNames().length==0)
			{
			mainScreenGui.setBtnRunVerification(false);
			mainScreenGui.setBtnShowresults(false);
			}
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
			onOfGUI.setParameterName(ScreenController.getParams(ElementType.getOnOffType(),screenGUI.getScreenName()));
			break;
			
		case "_save_on_off":
			if(checkInputs.checkTextfieldsAdd(onOfGUI,ElementType.getOnOffType())){
			WorkSpace.getLog().debug("do _save_on_off.. ");
			WorkSpaceController.addelementToGUI(screenGUI, onOfGUI,new OnOffType());
			onOfGUI.setVisible(false);
			mainScreenGui.setEnabled(true);
			mainScreenGui.addMainScreenMouseListener((MouseListener)this);
			mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
			}
			break;
		case"_edit_on_off":
			if(checkInputs.checkTextfieldsEdit(onOfGUI,ElementType.getOnOffType())){
			WorkSpace.getLog().debug("Router>-edit the onOff Type");
			WorkSpaceController.editEmentfromGUI(screenGUI, onOfGUI,new OnOffType());}
			onOfGUI.setVisible(false);
			mainScreenGui.setEnabled(true);
			mainScreenGui.addMainScreenMouseListener((MouseListener)this);
			mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);

			break;
			
		case "_menu_list_type": 
			WorkSpace.getLog().debug("you chosed List type element");
		    listTypeGUI=new ListTypeGUI(screenGUI.getScreenName());
			listTypeGUI.setVisible(true);
			listTypeGUI.setListTypeListener(this);

			removelistenerMainScreen();

			
			break; 
		case "_save_List":
			WorkSpace.getLog().debug("do _save_list.. ");
			WorkSpaceController.addelementToGUI(screenGUI, listTypeGUI,new ListElementType());
			mainScreenGui.setEnabled(true);

			break; 	
			
			case("_menu_emptyNotEmpty_type"):
				WorkSpace.getLog().debug("this _menu_emptyNotEmpty_type to create new window");
				emptyNotEmptyGUI= new EmptyNotEmptyGUI(screenGUI.getScreenName(),null);
				emptyNotEmptyGUI.setEmptyListener(this);
				emptyNotEmptyGUI.setParamChangeListener(this);
				emptyNotEmptyGUI.setParameterName(ScreenController.getParams(ElementType.getEmptyNotEmptyType(),screenGUI.getScreenName()));
				emptyNotEmptyGUI.setVisible(true);
				removelistenerMainScreen();

				break;
			case "_save_EmptyNEmpty":
				if(checkInputs.checkTextfieldsAdd(emptyNotEmptyGUI,ElementType.getEmptyNotEmptyType())){
				WorkSpace.getLog().debug("do _save_on_off.. ");
				WorkSpaceController.addelementToGUI(screenGUI, emptyNotEmptyGUI,new EmptyNEmptyType());
				emptyNotEmptyGUI.dispose();
				mainScreenGui.setEnabled(true);
				mainScreenGui.addMainScreenMouseListener((MouseListener)this);
				mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
				}
				break;
			case "_edit_EmptyNEmpty":
				if(checkInputs.checkTextfieldsEdit(emptyNotEmptyGUI,ElementType.getEmptyNotEmptyType())){
				WorkSpace.getLog().debug("do _save_on_off.. ");
				WorkSpaceController.editEmentfromGUI(screenGUI, emptyNotEmptyGUI,new EmptyNEmptyType());
				mainScreenGui.setEnabled(true);
				emptyNotEmptyGUI.dispose();
				mainScreenGui.addMainScreenMouseListener((MouseListener)this);
				mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
				}
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
			case"_add_conditions":// + open AddActionGui in order to add condition
				WorkSpace.getLog().debug("add  a condition from ButoonTypeGUI  ");
				  addConditonGui=new AddConditonGui();
				  addConditonGui.setAddAconditionListener(this);
				  addConditonGui.setVisible(true);
				break; 
			case"_save_Condition_param":
				WorkSpace.getLog().debug("Save  a condition from AddConditionGUI");
				buttonTypeGUI.addToTable(addConditonGui.getParamName(),"==",addConditonGui.getValue());
				addConditonGui.dispose();
				break;
			case"_save_standart_button": 
				WorkSpace.getLog().debug("do _save_standart_button.. ");
				WorkSpaceController.addelementToGUI(screenGUI, buttonTypeGUI, new StandartButtonType());
				mainScreenGui.setEnabled(true);
				mainScreenGui.addMainScreenMouseListener((MouseListener)this);
				mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
				break;
			case"_Edit_standart_button":
				WorkSpace.getLog().debug("edit _save_standart_button.. ");
				mainScreenGui.setEnabled(true);

				WorkSpaceController.editEmentfromGUI(screenGUI, buttonTypeGUI, new StandartButtonType());
				break;
			case "_save_new_param_ex":
				if (addparamterGUI.getParamType() !=null){
				WorkSpaceController.addNewParam(addparamterGUI);
				} else {
					WorkSpace.getLog().debug("not allowed , you should choose type first");
					addparamterGUI.expectionbtnSave();

				}
				mainScreenGui.setEnabled(true);
				break;
			// Comment listeners. (Code Generation Project)
			case "_add_comment_pressed":
				WorkSpace.getLog().debug("Router> Add comment pressed...");
				addCommentGUI = new AddCommentGUI();
				addCommentGUI.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
				addCommentGUI.setLocation(300, 300);
				if (getElemWeCameFrom() == 1)	// need to know where we came from, to TAKE from right GUI
					addCommentGUI.setTextInArea(buttonTypeGUI.getComment());
				if (getElemWeCameFrom() == 2)
					addCommentGUI.setTextInArea(onOfGUI.getComment());
				if (getElemWeCameFrom() == 3)
					addCommentGUI.setTextInArea(emptyNotEmptyGUI.getComment());
				if (getElemWeCameFrom() == 4)
					addCommentGUI.setTextInArea(onOfGUI.getComment());
				addCommentGUI.setVisible(true);
				break;
			case "_save_comment":
				WorkSpace.getLog().debug("Router> Save comment pressed...");
				if (getElemWeCameFrom() == 1)	// need to know where we came from, to SAVE in the right GUI
					buttonTypeGUI.setComment(addCommentGUI.getTextFromArea());
				if (getElemWeCameFrom() == 2)
					onOfGUI.setComment(addCommentGUI.getTextFromArea());
				if (getElemWeCameFrom() == 3)
					emptyNotEmptyGUI.setComment(addCommentGUI.getTextFromArea());
			//	if (getElemWeCameFrom() == 4)
			//		ListTypeGUI.setComment(addCommentGUI.getTextFromArea());       PROBLEM WITH LIST!!!
				addCommentGUI.setVisible(false);		
				break;
			// code generation button listener
			case "_generate_code": // 'generate code' in main screen pressed
				WorkSpace.getLog().debug("Router> Generate code pressed...");
				generateCodeGUI = new GenerateCodeGUI();
				generateCodeGUI.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
				generateCodeGUI.setLocation(300, 300);
				generateCodeGUI.setVisible(true);
				break;
			case "_begin_generation": // 'generate code' in small screen pressed
				androidStudioProjectController = new AndroidStudioProjectController(generateCodeGUI.getRootScreen(), generateCodeGUI.getPath());
				androidStudioProjectController.GenerateJavaFiles();
				androidStudioProjectController.GenerateXmlFiles();
				androidStudioProjectController.GenerateAutomaticFiles();
				break;
			case "_choose_position_pressed":	// INDEX. 
				chooseIndexGUI = new ChooseIndexOnScreenGUI();
				chooseIndexGUI.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
				chooseIndexGUI.setLocation(300, 300);
				chooseIndexGUI.setTakenIndexes(WorkSpace.getInstance().getScreenByName(screenGUI.getScreenName()).getTakenIndexes());
				chooseIndexGUI.setVisible(true);
				break;
			case "_save_index":	// INDEX.
				if (getElemWeCameFrom() == 1)	// need to know where we came from, to SAVE in the right GUI
					buttonTypeGUI.setIndex(chooseIndexGUI.getIndexOfElement());
				if (getElemWeCameFrom() == 2)
					onOfGUI.setIndex(chooseIndexGUI.getIndexOfElement());
				if (getElemWeCameFrom() == 3)
					emptyNotEmptyGUI.setIndex(chooseIndexGUI.getIndexOfElement());
			//	if (getElemWeCameFrom() == 4)
			//		ListTypeGUI.setIndex(chooseIndexGUI.getIndexOfElement());      PROBLEM WITH LIST!!!
				chooseIndexGUI.setVisible(false);
				break;
		}

	}

	private void showResults(ResultGui rs) {
		// TODO Auto-generated method stub
		
	}
	private void loadVerifySpecGUI() {
		// TODO Auto-generated method stub
		
	}
	public OnOfGUI getOnOfGUI() {
		return onOfGUI;
	}
	public void setOnOfGUI(OnOfGUI onOfGUI) {
		this.onOfGUI = onOfGUI;
	}
	

	public int getLocation() {
		return Location;
	}
	public void setLocation(int location) {
		Location = location;
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
		
		
	}
	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().getClass().getSimpleName().toString().equals("ScreenGUI") && GetNewLocation==false)
		{
			screenGUI=((ScreenGUI)arg0.getComponent());
		}
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
			WorkSpace.getInstance().addScreen(stemp);
			stemp=WorkSpace.getInstance().getScreenByName(screenGUI.getScreenName());
			WorkSpace.getLog().debug("get from hash "+stemp.getScreenName()+":update is "+"x:"+stemp.getCordinateX()+" Y:"+stemp.getCordinateY());
			WorkSpace.getLog().debug("screenGUI added successfully ,update coordinate X + Y in workspace hash");
			if(ScreenController.getScreenNameNames().length>0)
			{
			mainScreenGui.setBtnRunVerification(true);
			}
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
		if(arg0.getSource().getClass().getSimpleName().toString().equals("ScreenGUI") && GetNewLocation==true )
		{
			this.cordinateX=cordinateX+arg0.getX();
			this.cordinateY=cordinateY+arg0.getX();
			screenGUI.setLocation(cordinateX,cordinateY);
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
	public  static 	void createRouter(NewSpecGUI newSpecGui)
	{
		Router.instance=new Router(newSpecGui);
	}
	
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public MainScreenGui getMainScreenGui() {
		return mainScreenGui;
	}
	public ScreenGUI getScreenGUI() {
		return screenGUI;
	}
	public void setScreenGUI(ScreenGUI screenGUI) {
		this.screenGUI = screenGUI;
	}
	public Boolean getGetNewLocation() {
		return GetNewLocation;
	}
	public void setGetNewLocation(Boolean getNewLocation) {
		GetNewLocation = getNewLocation;
	}
	
	public VerificationController getVerificationController() {
		return verificationController;
	}
	@Override
	public void itemStateChanged(ItemEvent e) {
		// TODO Auto-generated method stub
		JComboBox s=(JComboBox)(e.getSource());
		WorkSpace.getLog().debug("PARAM:"+WorkSpace.getInstance().getParamsMap().get(s.getSelectedItem().toString()));
	}
	public void setEmptyGUI(EmptyNotEmptyGUI emptyNempty) {
		// TODO Auto-generated method stub
		this.emptyNotEmptyGUI =emptyNempty;
		
	}
	public void removelistenerMainScreen(){
		
		 mainScreenGui.removeMainScreenMouseListener((MouseListener) this);
		 mainScreenGui.removeMainScreenMouseListener((MouseMotionListener)this);
		
	}
	/*
	 * \idea for update gui genery , maybe "!!!
	
	
	private void updateGui (JFrame gui){
		
	}*/
	
	public void setButtonTypeGUI(ButtonTypeGUI buttonTypeGUI) {
		this.buttonTypeGUI = buttonTypeGUI;
	}
	
	
	
	public int getElemWeCameFrom() {
		return elemWeCameFrom;
	}
	public void setElemWeCameFrom(int elemWeCameFrom) {
		this.elemWeCameFrom = elemWeCameFrom;
	}

	private String getApplicationName(String workSpaceName){
		return workSpaceName.toLowerCase();
	}
	
}