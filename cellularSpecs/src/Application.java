
import javax.swing.JFrame;
import javax.swing.UIManager;

import Controller.Router;
import Model.WorkSpace;
import ToolGUI.NewSpecGUI;

public  class Application{
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
		Router.setInstance(newSpecGUI);
		newSpecGUI.addWorkSpaceListener(Router.getInstance());
		newSpecGUI.setVisible(true);	
		//newSpecGUI.dispose();	
		}
	
	}
