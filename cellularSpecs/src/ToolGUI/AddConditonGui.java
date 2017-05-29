package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

import Controller.ScreenController;
import Model.Param;

import java.awt.Color;
import javax.swing.JComboBox;
import javax.swing.JRadioButton;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.BoxLayout;
import javax.swing.DefaultComboBoxModel;

import java.awt.FlowLayout;
import java.util.ArrayList;
import java.util.Arrays;

import javax.swing.JScrollPane;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;

public class AddConditonGui extends JFrame {
	private JComboBox comboBox;
	private JComboBox comboBox_2;
	private String[] parameterNames ;
	private String[] parameterValue ;
	public AddConditonGui() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JLabel lblAddNewConditons = new JLabel("  In order to move to another screen, a list of condition must be  met");
		lblAddNewConditons.setBounds(10, 11, 338, 14);
		getContentPane().add(lblAddNewConditons);
		
		JLabel label_2 = new JLabel("operator:");
		label_2.setBounds(164, 47, 46, 14);
		getContentPane().add(label_2);
		
		JRadioButton radioButton = new JRadioButton("AND");
		radioButton.setBounds(215, 36, 46, 36);
		getContentPane().add(radioButton);
		
		JRadioButton radioButton_1 = new JRadioButton("OR");
		radioButton_1.setBounds(263, 36, 46, 36);
		getContentPane().add(radioButton_1);
		
		JButton btnAddCondiotin = new JButton("add a condition");
		btnAddCondiotin.setBounds(10, 43, 127, 23);
		getContentPane().add(btnAddCondiotin);
		btnAddCondiotin.setActionCommand("_add_a_new_condition");
		
		JButton btnSave = new JButton("save");
		btnSave.setBounds(68, 239, 91, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("cancel");
		btnCancel.setBounds(218, 239, 91, 23);
		getContentPane().add(btnCancel);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 72, 369, 159);
		getContentPane().add(scrollPane);
		
		JPanel panel_1 = new JPanel();
		scrollPane.setViewportView(panel_1);
		panel_1.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 365, 23);
		panel_1.add(panel);
		panel.setBackground(Color.WHITE);
		panel.setLayout(null);
		
		JLabel label_1 = new JLabel("Choose param");
		label_1.setBounds(0, 0, 69, 23);
		panel.add(label_1);
		
		 comboBox = new JComboBox();
		 comboBox.addItemListener(new ItemListener() {
		 	public void itemStateChanged(ItemEvent arg0) {
		 		JComboBox s=(JComboBox)(arg0.getSource());
		 		s.getSelectedItem().toString();
		 		comboBox_2.
		 	}
		 });
		comboBox.setBounds(72, 1, 80, 20);
		panel.add(comboBox);
		
		//addToCombo();
		
       
        
		
		JLabel label_3 = new JLabel("=");
		label_3.setBounds(155, 4, 13, 14);
		panel.add(label_3);
		
		JLabel label = new JLabel("value\r\n");
		label.setBounds(167, 4, 41, 14);
		panel.add(label);
		
		 comboBox_2 = new JComboBox();
		comboBox_2.setBounds(202, 1, 80, 20);
		panel.add(comboBox_2);
		//panel.add(label_3);
	}
	private void addToCombo() {
		parameterNames=ScreenController.getparams();
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterNames);
        comboBox.setModel(cmb);
        String st;
        st= comboBox.getSelectedItem().toString();
        parameterValue=ScreenController.getdefaultValues(st);
		
	}

	public static void main(String[] args) {

		AddConditonGui a=new AddConditonGui();
		a.setVisible(true);
	}
}

