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
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;

public class AddActionGUI extends JFrame {
	private JComboBox comboBox;
	private JComboBox comboBox_2;
	private String[] parameterNames=null ;
	private String[] parameterValue=null ;
	private String paramName;
	private JButton btnSave;

	private String value;
	public AddActionGUI() {
		setSize(400,150);
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		JLabel lblAddNewConditons = new JLabel("add a condition");
		lblAddNewConditons.setBounds(10, 11, 338, 14);
		getContentPane().add(lblAddNewConditons);
		
		 btnSave = new JButton("save");
		btnSave.setBounds(66, 80, 91, 23);
		getContentPane().add(btnSave);
		btnSave.setActionCommand("_save_new_condition");
		
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
		 		paramName=s.getSelectedItem().toString();
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
		  comboBox_2.addItemListener(new ItemListener() {
		  	public void itemStateChanged(ItemEvent arg0) {
		  		JComboBox s=(JComboBox)(arg0.getSource());
		  		value=s.getSelectedItem().toString();
		  	}
		  });
		  comboBox_2.setBounds(202, 1, 80, 20);
		  panel.add(comboBox_2);
		//panel.add(label_3);
			addToCombo();
			
	}
	private void addToCombo() {
		parameterNames=ScreenController.getparams();
		if(parameterNames!=null)
		{
		paramName=parameterNames[0];
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterNames);
        comboBox.setModel(cbm);
       parameterValue=ScreenController.getdefaultValues(comboBox.getSelectedItem().toString());
       value=parameterValue[0];
        cbm = new DefaultComboBoxModel(parameterValue);
       comboBox_2.setModel(cbm);
		}
		
	}
	public String getParamName() {
		return paramName;
	}
	public void setParamName(String paramName) {
		this.paramName = paramName;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public void setAddAconditionListener(ActionListener addConditionsListener ){    
		btnSave.addActionListener(addConditionsListener);
	}
	public static void main(String[] args) {
		BulidSpec.build();
		AddActionGUI a=new AddActionGUI();
		a.setVisible(true);
	}
}

