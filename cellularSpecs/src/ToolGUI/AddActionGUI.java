package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JLabel;

import java.awt.Color;

import javax.swing.JComboBox;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Font;

import javax.swing.ImageIcon;
import javax.swing.SwingConstants;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JSeparator;
import javax.swing.Icon;

public class AddActionGUI extends JFrame
{
	public AddActionGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"<dynamic>"}));
		comboBox.setEnabled(false);
		comboBox.setBounds(116, 83, 84, 20);
		getContentPane().add(comboBox);
		
		JLabel lblChooseParam = new JLabel("Choose param:\r\n");
		lblChooseParam.setBounds(42, 152, 84, 14);
		getContentPane().add(lblChooseParam);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setBounds(118, 149, 79, 20);
		getContentPane().add(comboBox_1);
		
		JLabel label_2 = new JLabel("Change VAL:");
		label_2.setBounds(207, 152, 69, 14);
		getContentPane().add(label_2);
		
		JComboBox comboBox_2 = new JComboBox();
		comboBox_2.setBounds(273, 149, 78, 20);
		getContentPane().add(comboBox_2);
		
		JLabel lblOnoff = new JLabel("<dynamic>- ON/OFF - Add Action");
		lblOnoff.setFont(new Font("Arial", Font.BOLD, 22));
		lblOnoff.setBounds(22, 21, 361, 36);
		getContentPane().add(lblOnoff);
		
		JLabel lblNewLabel = new JLabel("Condition for action: ");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 11));
		lblNewLabel.setBounds(10, 216, 116, 20);
		getContentPane().add(lblNewLabel);
		ImageIcon imageForOne = new ImageIcon(getClass().getResource("../delete.png"));
		JButton btnAddOtherConditon = new JButton("+");
		btnAddOtherConditon.setBounds(502, 216, 41, 21);
		getContentPane().add(btnAddOtherConditon);
		
		JLabel lblAction = new JLabel("Action:");
		lblAction.setFont(new Font("Tahoma", Font.BOLD, 11));
		lblAction.setBounds(10, 121, 63, 20);
		getContentPane().add(lblAction);
		
		JLabel lblChooseParam_1 = new JLabel("Choose param:");
		lblChooseParam_1.setBounds(35, 86, 84, 14);
		getContentPane().add(lblChooseParam_1);
		
		JLabel lblValue = new JLabel("Value=");
		lblValue.setBounds(231, 86, 41, 14);
		getContentPane().add(lblValue);
		
		JComboBox comboBox_3 = new JComboBox();
		comboBox_3.setBounds(267, 83, 84, 20);
		getContentPane().add(comboBox_3);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(22, 213, 550, 20);
		getContentPane().add(separator);
		
		JLabel lblChooseParam_2 = new JLabel("Choose param:");
		lblChooseParam_2.setBounds(42, 247, 84, 14);
		getContentPane().add(lblChooseParam_2);
		
		JComboBox comboBox_4 = new JComboBox();
		comboBox_4.setBounds(116, 244, 79, 20);
		getContentPane().add(comboBox_4);
		
		JLabel label_3 = new JLabel("Value=");
		label_3.setBounds(231, 244, 63, 14);
		getContentPane().add(label_3);
		
		JComboBox comboBox_5 = new JComboBox();
		comboBox_5.setBounds(267, 244, 84, 20);
		getContentPane().add(comboBox_5);
		
		JButton button = new JButton("+");
		button.setBounds(502, 121, 41, 21);
		getContentPane().add(button);
		
		JButton btnSave = new JButton("Save");
		btnSave.setBounds(133, 320, 112, 23);
		getContentPane().add(btnSave);
		
		JButton button_2 = new JButton("cancel");
		button_2.setBounds(255, 320, 116, 23);
		getContentPane().add(button_2);
		
		JLabel lblNewLabel_1 = new JLabel(imageForOne);
		lblNewLabel_1.setBounds(22, 247, 25, 14);
		getContentPane().add(lblNewLabel_1);
		
		JLabel label_4 = new JLabel(imageForOne);
		label_4.setBounds(22, 152, 25, 14);
		getContentPane().add(label_4);
		
		JSeparator separator_1 = new JSeparator();
		separator_1.setBounds(22, 114, 550, 20);
		getContentPane().add(separator_1);
	}
}
