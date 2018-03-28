package Controller;

import java.awt.event.ActionEvent;

import javax.swing.JFrame;

import Model.WorkSpace;
import ToolGUI.AddCommentGUI;
import ToolGUI.NewSpecGUI;

// This is Code Generator project Router. Here we handle 'Add comment' and 'Add Index'

public class CodeGeneratorRouter {
	
	private NewSpecGUI newSpecGui; // connection with current spec
	private String comment=" "; // comment of element
	
	private  CodeGeneratorRouter(NewSpecGUI newSpecGui){
		this.newSpecGui=newSpecGui;		
	}
	
	public void actionPerformed(ActionEvent e){ // this is the listener for comment and index actions
		switch(e.getActionCommand())	{
		
		case ("_add_comment"):
			WorkSpace.getLog().debug("CodeGenerationRouter > add comment pressed...");
			AddCommentGUI addComGUI = new AddCommentGUI();
  			addComGUI.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
  			addComGUI.setLocation(300, 300);
  			addComGUI.setVisible(true);
  			comment = addComGUI.getComment();
		break;
		
		case ("_add_index"):
		break;
		}
	}

}
