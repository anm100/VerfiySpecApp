import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;

import Controller.*;
import Controller.*;
import Model.Screen;
import Model.WorkSpace;
import ToolGUI.MainScreenGui;
import ToolGUI.NewSpecGUI;

public  class Application{
	private static NewSpecGUI newSpecGUI=new NewSpecGUI();
	private static MainScreenGui mainScreenGui;
	static JFrame mainFram;
	public static void main(String[] args) {
	   WorkSpace workSpace=WorkSpace.getInstance();	
		mainScreenGui=MainScreenGui.getInstance();
		Router.setInstance(newSpecGUI);
		
		newSpecGUI.addWorkSpaceListener(Router.getInstance());
		newSpecGUI.setVisible(true);
		
		mainScreenGui.setSpecNameLabel(WorkSpace.getInstance().getWorkSpaceName());
		mainScreenGui.addMainScreenListener(Router.getInstance());
			synchronized(workSpace){
				try {
					workSpace.wait();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	
		newSpecGUI.dispose();
	
		//mainScreenGui.addMainScreenMouseListener(workSpaceController);
		mainScreenGui.setVisible(true);
		
	}

}