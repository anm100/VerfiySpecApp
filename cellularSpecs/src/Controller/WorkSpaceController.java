package Controller;

import java.awt.MouseInfo;
import java.awt.Point;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.swing.JFileChooser;

import ui.utils.FileChooser;
import Model.Screen;
import Model.WorkSpace;
import Model.twoElementType;
import ToolGUI.*;
import our.Utils.Logger;

public class WorkSpaceController implements ActionListener,MouseListener,MouseMotionListener {
	private int CordinateX; 
	private int CordinateY; 
	private int x=0;
	private int y=0;
	private String specName=null;
	private String workSpaceLocation=null;
	public Boolean inner =false;

	private static  Boolean GetNewLocation=false;
	OnOfGUI  onOfGUI; 
	NewSpecGUI newSpecGui;
	 MainScreenGui mainScreenGui;
	private AddScreenGUI addScreen;
	private Screen screen;
	 ScreenGUI screenGUI;
	AddScreenController addScreenController;
	WorkSpace wk=WorkSpace.getInstance();
	
	private  static boolean clicked;
	
	
	private static WorkSpaceController instance =null ; 

	private  WorkSpaceController(NewSpecGUI newSpecGui,MainScreenGui mainSpecGui)
	{
		this.newSpecGui=newSpecGui;
		this.mainScreenGui=mainSpecGui;
	}

	public  static WorkSpaceController getInstance()
	{
		return instance;
	}
	public  static 	void setInstance(NewSpecGUI newSpecGui,MainScreenGui mainSpecGui)
	{
		WorkSpaceController.instance=new WorkSpaceController(newSpecGui,mainSpecGui);
	}
	
	public void OpenSpecFromFile(String fileName){
		
		try (ObjectInputStream ois
			= new ObjectInputStream(new FileInputStream(fileName+".ser"))) {

			WorkSpace.setInstance((WorkSpace) ois.readObject());

		} catch (Exception ex) {
			ex.printStackTrace();
		}


	}
	public void SaveSpecToFile(String fileName){
		
		WorkSpace w= WorkSpace.getInstance();
		
		try (ObjectOutputStream oos =
				new ObjectOutputStream(new FileOutputStream(fileName+".ser"))) {

			oos.writeObject(w);
			System.out.println("Done.. write to file "+fileName+".ser");

		} catch (Exception ex) {
			ex.printStackTrace();
		}

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
		specName=newSpecGui.getSpecName().getText().toString();
			wk.setWorkSpaceName(specName);
			wk.setIsPressed(true);
			synchronized(wk){
				wk.notify();
			}
		break;
		
		case("AddScreen"):

					System.out.println("AddScreen");
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
			 
	      
			OpenSpecFromFile("aaa");
		mainScreenGui=null;
		mainScreenGui=MainScreenGui.getInstance();
		mainScreenGui.setVisible(true);
			Screen s ;
			Iterator it = WorkSpace.getInstance().getScreensMap().entrySet().iterator();
			while(it.hasNext()){
				Map.Entry pair =(Map.Entry) it.next(); 
				s= (Screen)pair.getValue();			
				
			ScreenGUI screenTempGui=new ScreenGUI(s.getScreenName(),s.getCordinateX(),s.getCordinateY());
			mainScreenGui.getContentPane().add(screenTempGui);
			}
			mainScreenGui.addMainScreenListener(this);
			mainScreenGui.setSpecNameLabel(WorkSpace.getInstance().getWorkSpaceName());
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
	    workSpaceLocation=chooser.getSelectedFile().toString();
		
		break;
		
		case("Save SPEC"):
		
			SaveSpecToFile(WorkSpace.getInstance().getWorkSpaceName()); 
		break;
		case("Verifiy SPEC"):

			try {
				Runtime.getRuntime().exec("cmd /c start b.bat");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}


		break;
		case("ShowResults"):
		break;
		case("Save"):
			screen = new Screen();
			screen.setScreenName(addScreen.getScreenName().getText().toString());
			screen.setDescription(addScreen.getDescription().getText().toString());
			screen.setCordinateX(this.CordinateX);
			screen.setCordinateY(this.CordinateY);
			GetNewLocation=true;
			 screenGUI=new ScreenGUI(screen.getScreenName(),screen.getCordinateX(),screen.getCordinateY());//there is a problem
			//screenGUI.addScreenListener(a);
			WorkSpace.getLog().debug("this screen name "+screen.getScreenName());
			wk.addScreen(screen.getScreenName(), screen);
			 addScreenController= new AddScreenController();
			
			screenGUI.addScreenMouseListener2(this);
			mainScreenGui.setSpecNameLabel(WorkSpace.getInstance().getWorkSpaceName());
			mainScreenGui.getContentPane().add(screenGUI);
			mainScreenGui.getContentPane().repaint();
			mainScreenGui.getContentPane().revalidate();
			addScreen.dispose();
			break;
		case "Delete screen":
			WorkSpace.getLog().debug("delete screen case");
			WorkSpaceController.getInstance().screenGUI.setVisible(false);
			break;
		case "Move screen":
			WorkSpace.getLog().debug("Move screen");
			WorkSpaceController.getInstance().setGetNewLocation(true);
			break; 
		case("_menu_onOff_type"):
			WorkSpace.getLog().debug("this on/off button to create new window");
			onOfGUI= new OnOfGUI(screenGUI.getScreenName());
			onOfGUI.setVisible(true);
			onOfGUI.setOnOffListener(this);
			break;
		case "_save_on_off":
			
			WorkSpace.getLog().debug("do _save_on_off.. ");
			twoElementType elm= new twoElementType();
			elm.setParamName(onOfGUI.getElementName().getText());
			WorkSpace.getInstance().getScreenByName(onOfGUI.getScreenName()).addElement(elm.getParamName(), elm);
			WorkSpace.getLog().debug("do "+elm.getParamName()+elm.toString());
			
			WorkSpace.getLog().debug("--show element in GUI");
			screenGUI.addElementLabel(elm);
			mainScreenGui.getContentPane().repaint();
			mainScreenGui.getContentPane().revalidate();
			
			break;

		
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
			screenGUI.removeMouseListener(this);
			screenGUI.removeMouseMotionListener(this);
			screenGUI.addScreenListener(this);
			GetNewLocation=false;
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
			CordinateX	=arg0.getX()-4;
			CordinateY	=arg0.getY()-22;
			screenGUI.setLocation(arg0.getX()-4,arg0.getY()-22);
		}
		if(arg0.getSource().getClass().getSimpleName().toString().equals("ScreenGUI") && GetNewLocation==true)
		{
			CordinateX=CordinateX+arg0.getX();
			CordinateY=CordinateY+arg0.getX();
			screenGUI.setLocation(CordinateX,CordinateY);
		}
		
	}
	
	public Boolean getGetNewLocation() {
		return GetNewLocation;
	}
	public void setGetNewLocation(Boolean getNewLocation) {
		GetNewLocation = getNewLocation;
	}
}
