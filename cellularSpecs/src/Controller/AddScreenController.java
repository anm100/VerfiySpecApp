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

public class AddScreenController {
	private AddScreenGUI addScreenGUI;
	private   MainScreenGui mainScreenGui ;
	private  int x,y;
	private String elementName;

	public AddScreenController()
	{
		this.x=0;
		this.y=0;	
	}
public AddScreenController(MainScreenGui mainScreenGui,ScreenGUI screenGui)
{
	

}
public int getX() {
	return x;
}
public void setX(int x) {
	this.x = x;
}
public int getY() {
	return y;
}
public void setY(int y) {
	this.y = y;
}
public void actionPerformed(ActionEvent arg0) {
	WorkSpace.getLog().debug(" which operation we will do in AddScreenControll");
	switch(arg0.getActionCommand())
	{

	case("List"):
	
	break;
	case("Empty/NotEmpty"):
		WorkSpace.getLog().debug("this empty/notEmpty button to create new window");
		break;

	case("button"):
		WorkSpace.getLog().debug("you chosed button type element");
	break;
	}

	//System.out.println(arg0.getActionCommand().toString()); Button name
	System.out.println(elementName+""+arg0.getActionCommand());
	switch(elementName+" "+arg0.getActionCommand())
	{
	case ("List Save"):
	System.out.println(elementName+""+arg0.getActionCommand());
	break;
	}
}
}
