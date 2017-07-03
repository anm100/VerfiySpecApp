package Controller;

import java.awt.Color;

import javax.swing.DefaultComboBoxModel;
import javax.swing.border.MatteBorder;

import Model.ElementType;
import ToolGUI.EmptyNotEmptyGUI;
import ToolGUI.OnOfGUI;
import ToolGUI.VerifySpecGUI;

public class checkInputs {
	//On OFF GUI
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
	//Empty  NotEmpty GUI
	public static boolean checkTextfieldsAdd(EmptyNotEmptyGUI frame, String type) {
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
	public static boolean checkTextfieldsEdit(EmptyNotEmptyGUI frame, String type) {
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
	public static boolean CheckSelectedScreen(VerifySpecGUI verifySpecGUI) {
		boolean flag=true;
		if(verifySpecGUI.getRoot().getSelectedItem()==null)
		{
			verifySpecGUI.setRootComboScreenBoreder(true);
			flag=false;
		}
		else
		{
			verifySpecGUI.setRootComboScreenBoreder(false);
		}
		
		if(verifySpecGUI.getReq()[1])//req2
		{
			if(verifySpecGUI.getReq2ScreenCombo().getSelectedItem()==null)
			{
				verifySpecGUI.setReq2ComboScreenIBoredr(true);
				flag=false;
			}
			else
			{
				verifySpecGUI.setReq2ComboScreenIBoredr(false);	
			}
		}
		
		if(verifySpecGUI.getReq()[2])//req3
		{
			if(verifySpecGUI.getReq3ScreenICombo().getSelectedItem()==null)
			{
				verifySpecGUI.setReq3ComboScreenIBoredr(true);
				flag=false;
			}
			else
			{
				verifySpecGUI.setReq3ComboScreenIBoredr(false);	
			}
			if(verifySpecGUI.getReq3ScreenJCombo().getSelectedItem()==null)
			{
				verifySpecGUI.setReq3ComboScreenJBoredr(true);
				flag=false;
			}
			else
			{
				verifySpecGUI.setReq3ComboScreenJBoredr(false);	
			}
			
			if(verifySpecGUI.getChoosenParam()==null)
			{
				verifySpecGUI.setReq2button(true);
				flag=false;
			}
			else
			{
				verifySpecGUI.setReq2button(false);	
			}
		}
		if(verifySpecGUI.getReq()[5])//req6
		{
			if(verifySpecGUI.getChoosenParamreq6()==null)
			{
				verifySpecGUI.setReq6button(true);
				flag=false;
			}
			else
			{
				verifySpecGUI.setReq6button(false);	
			}
			
			if(verifySpecGUI.getReq6ScreenJComb().getSelectedItem()==null)
			{
				verifySpecGUI.setReq6ComboScreenIBoredr(true);
				flag=false;
			}
			else
			{
				verifySpecGUI.setReq6ComboScreenIBoredr(false);	
			}
		}
			if(verifySpecGUI.getReq()[7])//req8
			{
				if(verifySpecGUI.getreq8ScreenCombo().getSelectedItem()==null)
				{
					verifySpecGUI.setReq8ComboParams(true);
					flag=false;
				}
				else
				{
					verifySpecGUI.setReq8ComboParams(false);
				}
				if(verifySpecGUI.getChoosenParamreq8()==null)
				{
					verifySpecGUI.setReq8button(true);
					flag=false;
				}
				else
				{
					verifySpecGUI.setReq8button(false);
				}
				
			}

		return flag;
	}
	
	
	
}

