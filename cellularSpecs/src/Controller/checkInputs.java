package Controller;

import javax.swing.DefaultComboBoxModel;

import Model.ElementType;
import ToolGUI.OnOfGUI;

public class checkInputs {
	public static boolean checkTextfieldsAdd(OnOfGUI frame, String type) {
		boolean flag=true;
	if(frame.getElementName().isEmpty())
	{
	frame.setLblNewLabel_2("Element name is Empty");
	flag=false;
	}
	if(ElementController.elementIsExist(frame.getScreenName(), frame.getElementName()))
	{
		frame.setLblNewLabel_2("Element name is existd");
		flag=false;	
	}

	if((frame.getComboParameterName().equals("New..") &&frame.getParameterName().equals("parameter name"))
			||frame.getParameterName().isEmpty())
	{
	frame.setLblNewLabel_3("Parameter name is Empty");
	flag=false;
	}
	if(ScreenController.IsParameterExist(frame.getScreenName(), type,frame.getParameterName())
			&&frame.getComboParameterName().equals("New.."))
	{
		frame.setLblNewLabel_3("this parameter is defined in the list");
		flag=false;
	}
	return flag;
}
	public static boolean checkTextfieldsEdit(OnOfGUI frame, String type) {
		boolean flag=true;
	if(frame.getElementName().isEmpty())
	{
	frame.setLblNewLabel_2("Element name is Empty");
	flag=false;
	}

	if((frame.getComboParameterName().equals("New..") &&frame.getParameterName().equals("parameter name"))
			||frame.getParameterName().isEmpty())
	{
	frame.setLblNewLabel_3("Parameter name is Empty");
	flag=false;
	}
	if(ScreenController.IsParameterExist(frame.getScreenName(),type,frame.getParameterName())
			&&frame.getComboParameterName().equals("New.."))
	{
		frame.setLblNewLabel_3("this parameter is defined in the list");
		flag=false;
	}
	return flag;
}
}
