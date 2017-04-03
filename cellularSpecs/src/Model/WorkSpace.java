package Model;

import java.util.*;

public class WorkSpace { 
private  String  workSpaceName;
private   ArrayList<Screen> screens=new ArrayList<Screen>() ;
private   boolean IsPressed;
public static   boolean IsClicked;
private static WorkSpace instance =null ; 


public  static WorkSpace  getInstance()
{
	if (instance== null)
	{
	instance=new WorkSpace();
	}
	return instance;
}



public boolean isIsPressed() {
	return IsPressed;
}

private  WorkSpace()
{
		this.IsPressed=false;
		this.IsClicked=false;
}

/**
 * @return the workSpaceName
 */
public String getWorkSpaceName() {
	return workSpaceName;
}

/**
 * @param workSpaceName the workSpaceName to set
 */
public void setWorkSpaceName(String workSpaceName) {
	this.workSpaceName = workSpaceName;
}
public void addScreen(Screen screen) {
	this.screens.add(screen);
}
/**
 * @return the isPressed
 */
public boolean getisIsPressed() {
	return IsPressed;
}
/**
 * @param isPressed the isPressed to set
 */
public void setIsPressed(boolean isPressed) {
	IsPressed = isPressed;
}
public boolean getisIsClicked() {
	return IsClicked;
}

public void setIsClicked(boolean isClicked) {
	IsClicked = isClicked;
}
public Screen getScreenByname(String screeName) {
	return null;
//	return screens;
}
public Screen getTheLastScreen() {
	int index=screens.size()-1;
	Screen screen2=new Screen();
	 screen2=screens.get(index);
	 screens.remove(index);
	return screen2;
}
public ArrayList<Screen> getScreenArray() {
	return screens;
}

public void setScreens(Screen screen) {
	this.screens.add(screen);
}

}
