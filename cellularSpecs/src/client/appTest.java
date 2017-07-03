package client;
import javax.swing.UIManager;

import Controller.Router;
import Controller.WorkSpaceController;
import ToolGUI.AddParamterGUI;
import ToolGUI.NewSpecGUI;
import ToolGUI.ParamManagment;


public class appTest {

	public static void main(String[] args) {
		try {
            //here you can put the selected theme class name in JTattoo
            UIManager.setLookAndFeel("com.jtattoo.plaf.texture.TextureLookAndFeel");
 
        } catch (ClassNotFoundException ex) {
        //    java.util.logging.Logger.getLogger(PC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
        //    java.util.logging.Logger.getLogger(PC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
        //    java.util.logging.Logger.getLogger(PC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            //java.util.logging.Logger.getLogger(PC.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
		NewSpecGUI newSpecGUI=new NewSpecGUI();
		Router.createRouter(newSpecGUI);
		WorkSpaceController.setup("test");
		AddParamterGUI gui=	new AddParamterGUI();
		gui.setVisible(true);
		//ParamManagment p = new ParamManagment();
		//p.getFrame().setVisible(true);
	//	gui.setAddParamListener(Router.getInstance());
			
	}

}
