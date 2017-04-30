package Controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.swing.JFileChooser;

import Model.EmptyNEmptyType;
import Model.ListElementType;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;
import Model.OnOffType;
import Model.RequirementList;
import ToolGUI.*;

public class Router implements ActionListener,MouseListener,MouseMotionListener {
	private static Router instance =null ; 
	private int cordinateX; 
	private int cordinateY; 
	private VerifySpecGUI verifySpecGUI;
	private int x=0;
	private int y=0;
	private String specName;
	public Boolean inner =false;
	private RequirementList requirementList;
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
		case("Create"):
			this.specName=newSpecGui.getSpecName();
			WorkSpace.getInstance().setWorkSpaceName(newSpecGui.getSpecName());
			WorkSpace.getLog().debug("Create New Spec\n"+"spec name:"+newSpecGui.getSpecName());
			this.setMainScreenGui(specName);

		this.newSpecGui.dispose();

		break;
		
		case("AddScreen"):
			WorkSpace.getLog().debug("do_AddScreen.. ");
			addScreen=new AddScreenGUI();
			addScreen.addScreenListener(this);
			addScreen.setVisible(true);
					/*mainScreenGui.addMainScreenMouseListener((MouseListener)this);
					wk.setIsClicked(true);*/
					mainScreenGui.addMainScreenMouseListener((MouseListener)this);
					mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);		
        break;
		case("New"):
			
		break;
		
		case("Open.."):
			 
	      
		WorkSpaceController.OpenSpecFromFile("aaa");
		mainScreenGui.dispose();
		this.setMainScreenGui(WorkSpace.getInstance().getWorkSpaceName().toString());
		mainScreenGui.setVisible(true);
			Screen s ;
			Iterator<Entry<String, Screen>> it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
			while(it.hasNext()){
				Map.Entry pair =(Map.Entry) it.next(); 
				s= (Screen)pair.getValue();			
				
			ScreenGUI screenTempGui=new ScreenGUI(s.getScreenName(),s.getCordinateX(),s.getCordinateY());
			screenTempGui.setLocation(s.getCordinateX(),s.getCordinateY());
			screenTempGui.addScreenMouseListener(this);
			screenTempGui.addScreenListener(this);
			mainScreenGui.getContentPane().add(screenTempGui);
			}
			mainScreenGui.addMainScreenMouseListener((MouseListener)this);
			mainScreenGui.addMainScreenMouseListener((MouseMotionListener)this);
			mainScreenGui.getContentPane().repaint();
			mainScreenGui.getContentPane().revalidate();
		break;
		
		case("Browse.."):
		JFileChooser chooser = new JFileChooser();
		String workingDir = System.getProperty("user.dir");
	    chooser.setCurrentDirectory(new java.io.File("."));
	    chooser.getCurrentDirectory();
	    chooser.setDialogTitle("select a directory as workspace ");
	    chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
	    chooser.setAcceptAllFileFilterUsed(false);

	    if (chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
	      System.out.println("getSelectedFile() : " + chooser.getSelectedFile());
	    } else {
	      System.out.println("No Selection ");
	    }
			chooser.getSelectedFile().toString();
		
		break;
		
		case("Save SPEC"):
		
			WorkSpaceController.SaveSpecToFile(WorkSpace.getInstance().getWorkSpaceName()); 
		break;
		case("Verifiy SPEC"):
			WorkSpace.getLog().debug("verifiy Spec case");
		 verifySpecGUI=new VerifySpecGUI();
		VerifySpecGUI.setVerifySpecGUI(this);
		verifySpecGUI.setVisible(true);
			/*try {
				Runtime.getRuntime().exec("cmd /c start b.bat");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}*/

		break;
		case("Run_verifectaion"):
			WorkSpace.getLog().debug("Run_verifectaion");
			requirementList=new RequirementList();
			VerificationController.addToRequirmentList(verifySpecGUI);
			WorkSpace.getLog().debug(VerificationController.translateToPROMELA());

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
			mainScreenGui.getContentPane().repaint();
			mainScreenGui.getContentPane().revalidate();
			addScreen.dispose();
			break;
		case "Delete screen":
			WorkSpace.getLog().debug("delete screen case");
			Router.getInstance().screenGUI.setVisible(false);
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
			onOfGUI= new OnOfGUI(screenGUI.getScreenName());
			onOfGUI.setVisible(true);
			onOfGUI.setOnOffListener(this);
			break;
		case "_save_on_off":
			
			WorkSpace.getLog().debug("do _save_on_off.. ");
			WorkSpaceController.addelementToGUI(screenGUI, onOfGUI,new OnOffType());
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
				buttonTypeGUI= new ButtonTypeGUI(screenGUI.getScreenName());
				buttonTypeGUI.setVisible(true);
				buttonTypeGUI.setButtonTListener(this);
				break;
				
			case "_save_standart_button": 
				WorkSpace.getLog().debug("do _save_standart_button.. ");
				WorkSpaceController.addelementToGUI(screenGUI, buttonTypeGUI, new StandartButtonType());
				break; 

		
		}

	}
	public RequirementList getRequirementList() {
		return requirementList;
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
		if(arg0.getSource().getClass().getSimpleName().toString().equals("ScreenGUI"))
		{
			screenGUI=((ScreenGUI)arg0.getComponent());
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
		
	}
	private void setMainScreenGui(String specName) {
		this.mainScreenGui=new MainScreenGui();
		this.mainScreenGui.setSpecNameLabel(specName);
		this.mainScreenGui.addMainScreenListener(this);
		this.mainScreenGui.setVisible(true);
		this.specName=specName;
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
}
