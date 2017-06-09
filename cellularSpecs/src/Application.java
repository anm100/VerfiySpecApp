
import java.io.FileReader;

import javax.swing.UIManager;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

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
		Router.createRouter(newSpecGUI);
		newSpecGUI.addWorkSpaceListener(Router.getInstance());
		JSONParser parser = new JSONParser();
	     try {
	         Object obj = parser.parse(new FileReader("Config.txt"));
	         JSONObject jsonObject = (JSONObject) obj;
	         WorkSpace.getLog().setDebug((boolean) jsonObject.get("isDebug"));
	         System.out.println("Application:	" + jsonObject.get("Application Name"));
	         System.out.println("Author:		" + jsonObject.get("Author"));
	         System.out.println("Debug mode:	" + (boolean) jsonObject.get("isDebug"));
	         System.out.println("version:	" + jsonObject.get("Version"));


	     } catch (Exception e) {
	         e.printStackTrace();
	     }
		newSpecGUI.setVisible(true);	
		//newSpecGUI.dispose();	
		}
	
	}
