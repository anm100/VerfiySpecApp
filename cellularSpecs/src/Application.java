
import javax.swing.JFrame;

import Controller.Router;
import Model.WorkSpace;
import ToolGUI.NewSpecGUI;

public  class Application{
	public static void main(String[] args) {
		NewSpecGUI newSpecGUI=new NewSpecGUI();
		Router.setInstance(newSpecGUI);
		newSpecGUI.addWorkSpaceListener(Router.getInstance());
		newSpecGUI.setVisible(true);	
		//newSpecGUI.dispose();	
	}

}