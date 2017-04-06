package Controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import Model.Screen;
import Model.WorkSpace;
import ToolGUI.*;

public class AddScreenController implements ActionListener {
	private AddScreenGUI addScreenGUI;
	private   MainScreenGui mainScreenGui ;
	public AddScreenController()
	{
		
	}
public AddScreenController(AddScreenGUI addScreen, MainScreenGui mainScreenGui)
{
	this.addScreenGUI=addScreen;
	this.mainScreenGui=mainScreenGui;
}
@Override
public void actionPerformed(ActionEvent arg0) {
	// TODO Auto-generated method stub
}
}
