package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

import Controller.ScreenController;
import Model.Param;
import Model.WorkSpace;
import our.Utils.BulidSpec;

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
		
		JButton btnSave = new JButton("save");
		btnSave.setBounds(66, 80, 91, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("cancel");
		btnCancel.setBounds(195, 80, 91, 23);
		getContentPane().add(btnCancel);
		
	
		JPanel panel = new JPanel();
		panel.setBounds(10, 35, 365, 23);
		getContentPane().add(panel);
		panel.setBackground(Color.WHITE);
		panel.setLayout(null);
		
		JLabel label_1 = new JLabel("Choose param");
		label_1.setBounds(0, 0, 69, 23);
		panel.add(label_1);
		
		 comboBox = new JComboBox();
		comboBox.addItemListener(new ItemListener() {
		 	public void itemStateChanged(ItemEvent arg0) {
		 		JComboBox s=(JComboBox)(arg0.getSource());
		 		parameterValue=ScreenController.getdefaultValues(s.getSelectedItem().toString());
		        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterValue);
		        comboBox_2.setModel(cbm);	 		
		 	}
		 });
		 comboBox.setBounds(72, 1, 80, 20);
		 panel.add(comboBox);
		 
       
        
		 
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
			addToCombo();
			
	}
	private void addToCombo() {
		parameterNames=ScreenController.getparams();
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterNames);
        comboBox.setModel(cbm);
        String st;
        st= parameterNames[0];
       parameterValue=ScreenController.getdefaultValues(comboBox.getSelectedItem().toString());
        cbm = new DefaultComboBoxModel(parameterValue);
       comboBox_2.setModel(cbm);
		
	}

	public static void main(String[] args) {
		BulidSpec.build();
		AddConditonGui a=new AddConditonGui();
		a.setVisible(true);
	}
}

