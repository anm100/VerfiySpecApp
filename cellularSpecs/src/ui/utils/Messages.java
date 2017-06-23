package ui.utils;

import java.awt.Component;

/**
 * Public class Messages to use in GUI's 
 * @author Bolous Abo Jaber 
 */
import javax.swing.Icon;
import javax.swing.JOptionPane;

import client.Resources;



public class Messages {
/**
 * 
 * @param message: Error message 
 * @param title : title
 * @param c :
 */
	public static void errorMessage(String message, String title, Component c) {
		JOptionPane.showMessageDialog(c, message, title, JOptionPane.ERROR_MESSAGE);
	}
/**
 * 
 * @param message : warning message 
 * @param title : 
 * @param c : 
 */
	public static void warningMessage(String message, String title, Component c) {
		JOptionPane.showMessageDialog(c, message, title, JOptionPane.WARNING_MESSAGE);
	}

	public static void informationMessage(String message, String title, Component c) {
		// JOptionPane.showMessageDialog(c, message,title,
		// JOptionPane.INFORMATION_MESSAGE);
	}
/**
 * 
 * @param message : Success message
 * @param title : 
 * @param c : 
 */
	public static void successMessage(String message, String title, Component c) {
		JOptionPane.showMessageDialog(c, message, title, JOptionPane.INFORMATION_MESSAGE,
				Resources.getIcon("success.png"));
	}
/**
 * @param message: Confirm message
 * @param title:
 * @param c :
 * @return: 
 */
	public static int confirmMessage(String message, String title, Component c) {
		return JOptionPane.showConfirmDialog(c, message, title, JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE);
	}

}
