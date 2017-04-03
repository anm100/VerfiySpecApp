package Controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;




import Model.Screen;
import Model.WorkSpace;
import ToolGUI.*;

public class WorkSpaceController implements ActionListener,MouseListener {
	NewSpecGUI newSpecGui;
	 MainScreenGui mainScreenGui;
	AddScreenGUI addScreen;
	WorkSpace wk=WorkSpace.getInstance();
	
	private  static boolean  clicked;
	
	public WorkSpaceController(NewSpecGUI newSpecGui,MainScreenGui mainSpecGui)
	{
		this.newSpecGui=newSpecGui;
		//this.workSpace=workSpace;
		this.mainScreenGui=mainSpecGui;
			 
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
			String st=null;
			st=newSpecGui.getSpecName().getText().toString();
			wk.setWorkSpaceName(st);
			wk.setIsPressed(true);
			synchronized(wk){
				wk.notify();
			}
		break;
		
		case("AddScreen"):

		System.out.println("AddScreen");

					mainScreenGui.addMainScreenMouseListener((MouseListener)this);
					wk.setIsClicked(true);
        break;
		case("New"):
		break;
		case("Open.."):
		break;
		case("Save SPEC"):
		break;
		case("Verifiy SPEC"):
		break;
		case("ShowResults"):
		break;
		case("Save"):
			Screen screen=wk.getTheLastScreen();
			System.out.println(addScreen.getScreenName().getText().toString());
			screen.setScreenName(addScreen.getScreenName().getText().toString());
			System.out.println(addScreen.getDescription().getText().toString());
			screen.setDescription(addScreen.getDescription().getText().toString());
			ScreenGUI screenGUI=new ScreenGUI(screen.getScreenName(),screen.getCordinateX(),screen.getCordinateY());//there is a problem
			AddScreenController a=new AddScreenController();
			//screenGUI.addScreenListener(a);
			wk.addScreen(screen);
			mainScreenGui.setSpecNameLabel("saeed");
			mainScreenGui.getContentPane().add(screenGUI);
			mainScreenGui.getContentPane().repaint();
			mainScreenGui.getContentPane().revalidate();
			addScreen.dispose();
			break;
		case("List"):
		break;
		case("defined/undefined"):
			break;
		case("On/Off"):
			break;
		case("button"):
		break;
		
		}

	}
	@Override
	public void mouseClicked(MouseEvent arg0) {
		if(wk.getisIsClicked()==true)
		{
			
			Screen screen=new Screen();
			screen.setCordinateX((arg0.getX()-9));
			screen.setCordinateY((arg0.getY()-29));	
			
			mainScreenGui.removeMouseListener((MouseListener)this);
			System.out.print("b");
			wk.addScreen(screen);
			 addScreen=new AddScreenGUI();
			AddScreenController addScreenControlle=new AddScreenController(addScreen,wk,mainScreenGui);
			addScreen.addScreenListener(this);
			addScreen.setVisible(true);
			
		}
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
	}
	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}
}
