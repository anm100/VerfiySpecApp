package ToolGUI;

import javax.swing.JFrame;
import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.JCheckBox;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JProgressBar;
import javax.swing.JComboBox;
import javax.swing.JSeparator;

public class VerifySpecGUI extends JFrame{
	public VerifySpecGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JCheckBox chckbxAll = new JCheckBox("All");
		chckbxAll.setBackground(Color.WHITE);
		chckbxAll.setBounds(23, 138, 97, 23);
		getContentPane().add(chckbxAll);
		
		JCheckBox chckbxThereIs = new JCheckBox("There is Always an exit from any screen.");
		chckbxThereIs.setBackground(Color.WHITE);
		chckbxThereIs.setBounds(23, 162, 243, 23);
		getContentPane().add(chckbxThereIs);
		
		JCheckBox chckbxNewCheckBox = new JCheckBox("There is a screen (root), such that each screen is reached from it.");
		chckbxNewCheckBox.setBackground(Color.WHITE);
		chckbxNewCheckBox.setBounds(23, 188, 371, 23);
		getContentPane().add(chckbxNewCheckBox);
		
		JCheckBox chckbxNewCheckBox_1 = new JCheckBox("We can't  move from screen_j to screen_i without changing or defining a parameter.");
		chckbxNewCheckBox_1.setBackground(Color.WHITE);
		chckbxNewCheckBox_1.setBounds(23, 216, 459, 23);
		getContentPane().add(chckbxNewCheckBox_1);
		
		JCheckBox chckbxNewCheckBox_2 = new JCheckBox("Parameter cannot accept value that is not defined in the List of the possible values.");
		chckbxNewCheckBox_2.setBackground(Color.WHITE);
		chckbxNewCheckBox_2.setBounds(23, 242, 427, 23);
		getContentPane().add(chckbxNewCheckBox_2);
		
		JCheckBox chckbxNewCheckBox_3 = new JCheckBox("There is no path to a screen that allows  \"Illegal parameters values\".");
		chckbxNewCheckBox_3.setBackground(Color.WHITE);
		chckbxNewCheckBox_3.setBounds(23, 268, 427, 23);
		getContentPane().add(chckbxNewCheckBox_3);
		
		JCheckBox chckbxNewCheckBox_5 = new JCheckBox("Each list of parameters must be defined before entering a screen.");
		chckbxNewCheckBox_5.setBackground(Color.WHITE);
		chckbxNewCheckBox_5.setBounds(23, 322, 427, 23);
		getContentPane().add(chckbxNewCheckBox_5);
		
		JCheckBox chckbxNewCheckBox_6 = new JCheckBox("Parameters values cannot change unless it was intended to do so in its path");
		chckbxNewCheckBox_6.setBackground(Color.WHITE);
		chckbxNewCheckBox_6.setBounds(23, 348, 427, 23);
		getContentPane().add(chckbxNewCheckBox_6);
		
		JCheckBox chckbxNewCheckBox_7 = new JCheckBox("If a Parameter changes  in a specific state the change should be updated wherever the parameter is used.");
		chckbxNewCheckBox_7.setBackground(Color.WHITE);
		chckbxNewCheckBox_7.setBounds(23, 374, 543, 23);
		getContentPane().add(chckbxNewCheckBox_7);
		
		JCheckBox chckbxNewCheckBox_8 = new JCheckBox("All parameters always must be consistent.");
		chckbxNewCheckBox_8.setBackground(Color.WHITE);
		chckbxNewCheckBox_8.setBounds(23, 399, 270, 23);
		getContentPane().add(chckbxNewCheckBox_8);
		
		JLabel lblNote = new JLabel("note: (Illegal i.e. value that does not defined in the list of the parameters values)");
		lblNote.setBounds(33, 298, 443, 14);
		getContentPane().add(lblNote);
		
		JButton btnSave = new JButton("Run");
		btnSave.setBounds(265, 433, 113, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("cancel");
		btnCancel.setBounds(388, 433, 107, 23);
		getContentPane().add(btnCancel);
		
		JLabel lblVerifySpec = new JLabel("<Spec name> - Verify spec");
		lblVerifySpec.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblVerifySpec.setBounds(23, 0, 263, 45);
		getContentPane().add(lblVerifySpec);
		
		JLabel lblChooseRequirments = new JLabel("Choose requirments to verify:");
		lblChooseRequirments.setFont(new Font("Tahoma", Font.BOLD, 11));
		lblChooseRequirments.setBounds(23, 116, 192, 14);
		getContentPane().add(lblChooseRequirments);
		
		JLabel lblChooseRootScreen = new JLabel("Choose root screen:");
		lblChooseRootScreen.setFont(new Font("Tahoma", Font.BOLD, 11));
		lblChooseRootScreen.setBounds(23, 71, 122, 14);
		getContentPane().add(lblChooseRootScreen);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setBounds(142, 67, 102, 23);
		getContentPane().add(comboBox);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(65, 108, 586, 23);
		getContentPane().add(separator);
	}
}
