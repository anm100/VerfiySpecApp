package Controller;

import javax.swing.DefaultComboBoxModel;

import Model.ElementType;
import ToolGUI.OnOfGUI;

public class checkInputs {
	public static boolean checkTextfields(OnOfGUI frame, String onOffType) {
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
	if(ScreenController.IsParameterExist(frame.getScreenName(), ElementType.getOnOffType(),frame.getParameterName())
			&&frame.getComboParameterName().equals("New.."))
	{
		frame.setLblNewLabel_3("this parameter is defined in the list");
		flag=false;
	}
	return flag;
}
}
