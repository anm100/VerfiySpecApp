
import javax.swing.JFrame;

import Controller.*;
import Model.WorkSpace;
import ToolGUI.MainScreenGui;
import ToolGUI.NewSpecGUI;

public  class Application{
	private static NewSpecGUI newSpecGUI=new NewSpecGUI();
	private static MainScreenGui mainScreenGui;
	static JFrame mainFram;
	public static void main(String[] args) {
	   WorkSpace workSpace=WorkSpace.getInstance();	
		Router.setInstance(newSpecGUI);
		
		newSpecGUI.addWorkSpaceListener(Router.getInstance());
		newSpecGUI.setVisible(true);
		
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
		
		
	}

}