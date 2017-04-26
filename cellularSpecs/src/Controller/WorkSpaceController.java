package Controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import Model.EmptyNEmptyType;
import Model.ListElementType;
import Model.OnOffType;
import Model.StandartButtonType;
import Model.WorkSpace;
import ToolGUI.ButtonTypeGUI;
import ToolGUI.EmptyNotEmptyGUI;
import ToolGUI.ListTypeGUI;
import ToolGUI.MainScreenGui;
import ToolGUI.OnOfGUI;
import ToolGUI.ScreenGUI;

public class WorkSpaceController {
	
	public static void OpenSpecFromFile(String fileName){
		
		try (ObjectInputStream ois
			= new ObjectInputStream(new FileInputStream(fileName+".ser"))) {

			WorkSpace.setInstance( (WorkSpace) ois.readObject());

		} catch (Exception ex) {
			ex.printStackTrace();
		}


	}
	public static void SaveSpecToFile(String fileName){
				
		try (ObjectOutputStream oos =
				new ObjectOutputStream(new FileOutputStream(fileName+".ser"))) {

			oos.writeObject(WorkSpace.getInstance());
			System.out.println("Done.. write to file "+fileName+".ser");

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	public static void addelementToGUI(ScreenGUI screenGUI,ListTypeGUI elementGui,ListElementType l)
	{
	
		l.setParamName(elementGui.getElementName().getText());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		MainScreenGui.getInstance().getContentPane().repaint();
		MainScreenGui.getInstance().getContentPane().revalidate();
		
	}
	public static void addelementToGUI(ScreenGUI screenGUI,EmptyNotEmptyGUI elementGui,EmptyNEmptyType l)
	{
	
		l.setParamName(elementGui.getElementName().getText());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		MainScreenGui.getInstance().getContentPane().repaint();
		MainScreenGui.getInstance().getContentPane().revalidate();
		
	}
	public static void addelementToGUI(ScreenGUI screenGUI, OnOfGUI elementGui,	OnOffType l) {
		
		l.setParamName(elementGui.getElementName().getText());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		MainScreenGui.getInstance().getContentPane().repaint();
		MainScreenGui.getInstance().getContentPane().revalidate();		
	}
	public static void addelementToGUI(ScreenGUI screenGUI, ButtonTypeGUI elementGui,StandartButtonType l) {
		
		l.setParamName(elementGui.getElementName().getText());
		WorkSpace.getInstance().getScreenByName(elementGui.getScreenName()).addElement(l.getParamName(), l);
		WorkSpace.getLog().debug("do "+l.getParamName()+l.toString());
		
		WorkSpace.getLog().debug("--show element in GUI");
		screenGUI.addElementLabel(l);
		MainScreenGui.getInstance().getContentPane().repaint();
		MainScreenGui.getInstance().getContentPane().revalidate();		
	}
}
