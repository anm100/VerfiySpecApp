
import javax.swing.JFrame;

import Controller.Router;
import Model.WorkSpace;
import ToolGUI.NewSpecGUI;

public  class Application{
	static JFrame mainFram;
	public static void main(String[] args) {
		
	    WorkSpace workSpace=WorkSpace.getInstance();
	    
		NewSpecGUI newSpecGUI;
		
		newSpecGUI=new NewSpecGUI();
		
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
	}

}