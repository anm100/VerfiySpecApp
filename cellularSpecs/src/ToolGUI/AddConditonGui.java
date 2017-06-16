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
import javax.swing.SwingConstants;

public class AddConditonGui extends JFrame {
	private JComboBox parameterNameCombo;
	private  JLabel equal_lbl;
	private String[] parameterNames=null ;
	private String[] parameterValue=null ;
	private String paramName;
	private JButton btnSave;
	private JLabel switchlbl;
	private String value;
	private JComboBox parameterValueCombo;
	public AddConditonGui() {
		setVisible(true);
		 switchlbl = new JLabel("");
		setSize(400,150);
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		JLabel lblAddNewConditons = new JLabel("-add a condition");
		lblAddNewConditons.setBounds(60, 10, 125, 14);
		getContentPane().add(lblAddNewConditons);
		
		 btnSave = new JButton("save");
		 btnSave.setActionCommand("_save_Condition");
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
		
		JLabel chooseparamLbl = new JLabel("Choose param");
		chooseparamLbl.setHorizontalAlignment(SwingConstants.LEFT);
		chooseparamLbl.setBounds(10, 0, 86, 23);
		panel.add(chooseparamLbl);
		
		 parameterNameCombo = new JComboBox();
		 parameterNameCombo.setModel(new DefaultComboBoxModel(new String[] {"Wifi", "AirPlane", "blutooth"}));
		parameterNameCombo.addItemListener(new ItemListener() {
		 	public void itemStateChanged(ItemEvent arg0) {
		 		JComboBox s=(JComboBox)(arg0.getSource());
		 		paramName=s.getSelectedItem().toString();
		 		parameterValue=ScreenController.getdefaultValues(s.getSelectedItem().toString());
		        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterValue);
		        parameterValueCombo.setModel(cbm);	 		
		 	}
		 });
		 parameterNameCombo.setBounds(106, 1, 80, 20);
		 panel.add(parameterNameCombo);
		 
       
        
		 
		  equal_lbl = new JLabel("==");
		 equal_lbl.setBounds(196, 4, 24, 14);
		 panel.add(equal_lbl);
		 
		 JLabel valueLbl = new JLabel("value\r\n");
		 valueLbl.setBounds(224, 4, 41, 14);
		 panel.add(valueLbl);
		 
		  parameterValueCombo = new JComboBox();
		  parameterValueCombo.setModel(new DefaultComboBoxModel(new String[] {"On", "Off"}));
		  parameterValueCombo.addItemListener(new ItemListener() {
		  	public void itemStateChanged(ItemEvent arg0) {
		  		JComboBox s=(JComboBox)(arg0.getSource());
		  		value=s.getSelectedItem().toString();
		  	}
		  });
		  parameterValueCombo.setBounds(275, 1, 80, 20);
		  panel.add(parameterValueCombo);
		  
		 
		  switchlbl.setBounds(10, 10, 46, 14);
		  getContentPane().add(switchlbl);
		//panel.add(label_3);
			addToCombo();
			
	}
	private void addToCombo() {
		parameterNames=ScreenController.getparams();
		if(parameterNames!=null)
		{
		paramName=parameterNames[0];
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterNames);
        parameterNameCombo.setModel(cbm);
       parameterValue=ScreenController.getdefaultValues(parameterNameCombo.getSelectedItem().toString());
       value=parameterValue[0];
        cbm = new DefaultComboBoxModel(parameterValue);
       parameterValueCombo.setModel(cbm);
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
	public String getLabel_equal() {
		return equal_lbl.getText().toString();
	}
	public String getParameterNameCombo() {
		return parameterNameCombo.getSelectedItem().toString();
	}
	public String getParameterValueCombo() {
		return parameterValueCombo.getSelectedItem().toString();
	}
	public String getSwitchlbl() {
		return switchlbl.getText().toString();
	}
	public void setSwitchlbl(String text) {
		switchlbl.setText(text);
	}
	public void setAddAconditionListener(ActionListener addConditionsListener ){    
		btnSave.addActionListener(addConditionsListener);
	}
}

