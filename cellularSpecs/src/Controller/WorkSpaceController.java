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

import javax.swing.JFileChooser;

import Model.EmptyNEmptyType;
import Model.ListElementType;
import Model.Screen;
import Model.WorkSpace;
import Model.OnOffType;
import ToolGUI.*;

public class WorkSpaceController implements ActionListener,MouseListener,MouseMotionListener {
	private int CordinateX; 
	private int CordinateY; 
	private int x=0;
	private int y=0;
	private String specName=null;
	public Boolean inner =false;

	private static  Boolean GetNewLocation=false;
	OnOfGUI  onOfGUI; 
	ListTypeGUI  listTypeGUI;
	EmptyNotEmptyGUI emptyNotEmptyGUI;
	NewSpecGUI newSpecGui;
	 MainScreenGui mainScreenGui;
	private AddScreenGUI addScreen;
	private Screen screen;
	 ScreenGUI screenGUI;
	AddScreenController addScreenController;
	
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
				
		try (ObjectOutputStream oos =
				new ObjectOutputStream(new FileOutputStream(fileName+".ser"))) {

			oos.writeObject(WorkSpace.getInstance());
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
		WorkSpace.getInstance().setWorkSpaceName(specName);
			WorkSpace.getInstance().setIsPressed(true);
			synchronized(WorkSpace.getInstance()){
				WorkSpace.getInstance().notify();
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
			chooser.getSelectedFile().toString();
		
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
			WorkSpace.getInstance().addScreen(screen.getScreenName(), screen);
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
			OnOffType elm= new OnOffType();
			elm.setParamName(onOfGUI.getElementName().getText());
			WorkSpace.getInstance().getScreenByName(onOfGUI.getScreenName()).addElement(elm.getParamName(), elm);
			WorkSpace.getLog().debug("do "+elm.getParamName()+elm.toString());
			
			WorkSpace.getLog().debug("--show element in GUI");
			screenGUI.addElementLabel(elm);
			mainScreenGui.getContentPane().repaint();
			mainScreenGui.getContentPane().revalidate();
		
			
			break;
		case "_menu_list_type": 
			WorkSpace.getLog().debug("you chosed List type element");
		    listTypeGUI=new ListTypeGUI(screenGUI.getScreenName());
			listTypeGUI.setVisible(true);
			listTypeGUI.setListTypeListener(this);
			
			break; 
		case "_save_List":
			WorkSpace.getLog().debug("do _save_list.. ");
			ListElementType l= new ListElementType();
			l.setParamName(listTypeGUI.getElementName().getText());
			WorkSpace.getInstance().getScreenByName(listTypeGUI.getScreenName()).addElement(l.getParamName(), l);
			WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
			
			WorkSpace.getLog().debug("--show element in GUI");
			screenGUI.addElementLabel(l);
			mainScreenGui.getContentPane().repaint();
			mainScreenGui.getContentPane().revalidate();
		
			break; 		
			case("_menu_emptyNotEmpty_type"):
				WorkSpace.getLog().debug("this on/off button to create new window");
				emptyNotEmptyGUI= new EmptyNotEmptyGUI(screenGUI.getScreenName());
				emptyNotEmptyGUI.setVisible(true);
				emptyNotEmptyGUI.setEmptyNEmptyListener(this);
				break;
			case "_save_EmptyNEmpty":
				
				WorkSpace.getLog().debug("do _save_on_off.. ");
				EmptyNEmptyType em= new EmptyNEmptyType();
				em.setParamName(emptyNotEmptyGUI.getElementName().getText());
				WorkSpace.getInstance().getScreenByName(emptyNotEmptyGUI.getScreenName()).addElement(em.getParamName(), em);
				WorkSpace.getLog().debug("do "+em.getParamName()+em.toString());
				
				WorkSpace.getLog().debug("--show element in GUI");
				screenGUI.addElementLabel(em);
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
			//screenGUI.removeMouseListener(this);
			//screenGUI.removeMouseMotionListener(this);
			screenGUI.addScreenListener(this);
			GetNewLocation=false;
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
