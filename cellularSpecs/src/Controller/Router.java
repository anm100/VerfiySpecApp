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
import java.util.ArrayList;
import java.util.Scanner;

import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

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
	private VerifySpecGUI verifySpecGUI;
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
	private VerificationController verificationController ;


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
		case("Verifiy SPEC"):
			String st=new String();;
				verifySpecGUI=new VerifySpecGUI();
				
				 st=WorkSpace.getReqlist().get(0).getReq();
				verifySpecGUI.setReq_pan(new JLabel(st),0);
				
				 st=WorkSpace.getReqlist().get(1).getReq();
				String [] s=st.split("X");
				st = s[0];
				verifySpecGUI.setReq_pan(new JLabel(st),1);
				verifySpecGUI.setReq_pan(verifySpecGUI.getReq2ScreenCombo(),1);
				 st=WorkSpace.getReqlist().get(2).getReq();			 
				 s=st.split("X");
				 verifySpecGUI.setReq_pan(new JLabel(s[0]),2);
				 verifySpecGUI.setReq_pan(verifySpecGUI.getReq3ScreenICombo(),2);
				verifySpecGUI.setReq_pan(new JLabel(s[1]),2);
				 verifySpecGUI.setReq_pan(verifySpecGUI.getReq3ScreenJCombo(),2);
				 verifySpecGUI.setReq_pan(new JLabel(s[2]),2);
				 verifySpecGUI.setReq_pan(verifySpecGUI.getreq2ChoosParams(),2);

				 
				 st=WorkSpace.getReqlist().get(3).getReq();			 
				 verifySpecGUI.setReq_pan(new JLabel(st),3);
				 
				 st=WorkSpace.getReqlist().get(4).getReq();	
				 verifySpecGUI.setReq_pan(new JLabel(st),4);
				 
				 st=WorkSpace.getReqlist().get(5).getReq();	
				 s=st.split("X");
				 verifySpecGUI.setReq_pan(new JLabel(s[0]),5);
				 verifySpecGUI.setReq_pan(verifySpecGUI.getreq6ChoosParams(),5);
				 verifySpecGUI.setReq_pan(new JLabel(s[1]),5);
				 verifySpecGUI.setReq_pan(verifySpecGUI.getReq6ScreenJComb(),5);
				 verifySpecGUI.setReq_pan(new JLabel(s[2]),5);
				
				 st=WorkSpace.getReqlist().get(6).getReq();	
				 verifySpecGUI.setReq_pan(new JLabel(st),6);
				 
				 st=WorkSpace.getReqlist().get(7).getReq();	
				 verifySpecGUI.setReq_pan(new JLabel(st),7);
			// st=WorkSpace.getReqlist().get(6).getReq();	
				
			

				 
				 
			WorkSpace.getLog().debug("verifiy Spec case");
	//	verifySpecGUI=new VerifySpecGUI();
		verifySpecGUI.setVerifySpecGUI(this);
		//VerifySpecGUI.setComboBox(WorkSpace.getInstance().getsc);
		VerifySpecGUI.setCheckBoxListener(verificationController);
		verifySpecGUI.setVisible(true);
			//verifySpecGUI.addRootScreen(st);
		
		break;
		case("Run_verifectaion"):
			verificationController = new VerificationController();
			WorkSpace.getLog().debug("Router->Run_verifectaion");
			FormulaTranslate.setFormula(verifySpecGUI);
			WorkSpace.getLog().info(verificationController.translateToPROMELA());
			WorkSpace.getLog().debug("Router->create pml file ");

			try{
			    PrintWriter writer = new PrintWriter(WorkSpace.getInstance().getWorkSpaceName()+".pml", "UTF-8");
			    writer.println(verificationController.translateToPROMELA());
			    writer.close();
			} catch (IOException eb) {
			   // do something
			}
			WorkSpace.getLog().debug("start run script in SPIN");
			try {
			      Runtime.getRuntime().exec( "wscript exe/excute.vbs" );
			   }
			   catch( IOException e1 ) {
			      System.out.println(e1);
			      System.exit(0);
			   	}
			try {
				Scanner scan=new Scanner(new File("outreq1.txt"));
				while(scan.hasNext()){
				String line=scan.nextLine().toLowerCase().toString();
				if(line.contains("errors: 0"))
				WorkSpace.getReqlist().get(0).setResult(true);
				}
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
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
			System.out.println("aaaa");
			ResultGui rs=new ResultGui();
		rs.setVisible(true);
		if(WorkSpace.getReqlist().get(0).isSelected())
		{
			rs.addToResult(WorkSpace.getReqlist().get(0).getResult());
		}
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
			onOfGUI.setParameterName(ScreenController.getParams(ElementType.getOnOffType(),screenGUI.getScreenName()));
			removelistenerMainScreen();
			break;
			
		case "_save_on_off":
			if(checkInputs.checkTextfieldsAdd(onOfGUI,ElementType.getOnOffType())){
			WorkSpace.getLog().debug("do _save_on_off.. ");
			WorkSpaceController.addelementToGUI(screenGUI, onOfGUI,new OnOffType());
			onOfGUI.setVisible(false);
			mainScreenGui.addMainScreenMouseListener((MouseListener)this);
			mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
			}
			break;
		case"_edit_on_off":
			if(checkInputs.checkTextfieldsEdit(onOfGUI,ElementType.getOnOffType())){
			WorkSpace.getLog().debug("Router>-edit the onOff Type");
			WorkSpaceController.editEmentfromGUI(screenGUI, onOfGUI,new OnOffType());}
			onOfGUI.setVisible(false);
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
				mainScreenGui.addMainScreenMouseListener((MouseListener)this);
				mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
				}
				break;
			case "_edit_EmptyNEmpty":
				if(checkInputs.checkTextfieldsEdit(emptyNotEmptyGUI,ElementType.getEmptyNotEmptyType())){
				WorkSpace.getLog().debug("do _save_on_off.. ");
				WorkSpaceController.editEmentfromGUI(screenGUI, emptyNotEmptyGUI,new EmptyNEmptyType());
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
				
			case"_save_standart_button": 
				WorkSpace.getLog().debug("do _save_standart_button.. ");
				WorkSpaceController.addelementToGUI(screenGUI, buttonTypeGUI, new StandartButtonType());
				mainScreenGui.addMainScreenMouseListener((MouseListener)this);
				mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
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
			WorkSpace.getInstance().addScreen(stemp);
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
	public  static 	void createRouter(NewSpecGUI newSpecGui)
	{
		Router.instance=new Router(newSpecGui);
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


	
}