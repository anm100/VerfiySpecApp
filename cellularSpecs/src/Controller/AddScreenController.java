package Controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import Model.Screen;
import Model.WorkSpace;
import ToolGUI.*;

public class AddScreenController implements ActionListener {
	private AddScreenGUI addScreenGUI;
	private   MainScreenGui mainScreenGui ;
	private WorkSpace workSpace;
	public AddScreenController()
	{
		
	}
public AddScreenController(AddScreenGUI addScreen,WorkSpace workSpace, MainScreenGui mainScreenGui)
{
	this.addScreenGUI=addScreen;
	this.workSpace=workSpace;		
	this.mainScreenGui=mainScreenGui;
}
@Override
public void actionPerformed(ActionEvent arg0) {
	// TODO Auto-generated method stub
}
}
