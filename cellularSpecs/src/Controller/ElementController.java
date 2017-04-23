package Controller;

import java.awt.Color;
import java.awt.Panel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;

import javax.swing.JButton;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.UIManager;

import Model.Screen;
import Model.WorkSpace;
import ToolGUI.*;

public class ElementController implements ActionListener {
	private OnOfGUI onOfGUI;
	private ListTypeGUI listTypeGUI; 
	

	public ElementController(OnOfGUI onOfGUI)
	{
		this.onOfGUI=onOfGUI; 
	}

public ElementController(ListTypeGUI listTypeGUI) {
	this.listTypeGUI=listTypeGUI; 	
	}

public void actionPerformed(ActionEvent arg0) {
	WorkSpace.getLog().debug("choose which operation we will do in element");
	switch(arg0.getActionCommand())
	{
	/*
	 * 
	 */
	case "_save_on_off":
//		WorkSpace.getLog().debug("do _save_on_off.. ");
//		String nameElm =onOfGUI.getElementName().getText();
//		WorkSpace.getInstance().
//		
//		break;
		
	}


}




}
