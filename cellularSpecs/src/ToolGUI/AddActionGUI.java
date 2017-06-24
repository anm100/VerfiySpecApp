package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JLabel;

import Controller.ScreenController;

import java.awt.Color;
import javax.swing.JComboBox;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.DefaultComboBoxModel;


import java.awt.event.ItemListener;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;

public class AddActionGUI extends JFrame {
	private JComboBox parameterNameCombo;
	private JComboBox parameterValueCombo;
	private String[] parameterNames=null ;
	private String[] parameterValue=null ;
	private String paramName;
	private JButton btnSave;
	private JLabel label_3;
private JLabel switchlbl;
	private String value;
	public AddActionGUI() {
		setSize(400,150);
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		JLabel lblAddNewAction = new JLabel("add an action");
		lblAddNewAction.setBounds(122, 10, 338, 14);
		getContentPane().add(lblAddNewAction);
		
		 btnSave = new JButton("save");
		btnSave.setBounds(66, 80, 91, 23);
		getContentPane().add(btnSave);
		btnSave.setActionCommand("_save_Action_param");
		
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
		
		 parameterNameCombo = new JComboBox();
		parameterNameCombo.addItemListener(new ItemListener() {
		 	public void itemStateChanged(ItemEvent arg0) {
		 		JComboBox s=(JComboBox)(arg0.getSource());
		 		paramName=s.getSelectedItem().toString();
		 		parameterValue=ScreenController.getdefaultValues(s.getSelectedItem().toString());
		        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterValue);
		        parameterValueCombo.setModel(cbm);	 		
		 	}
		 });
		 parameterNameCombo.setBounds(72, 1, 80, 20);
		 panel.add(parameterNameCombo);
		 
       
        
		 
		  label_3 = new JLabel("=");
		 label_3.setBounds(155, 4, 13, 14);
		 panel.add(label_3);
		 
		 JLabel label = new JLabel("value\r\n");
		 label.setBounds(167, 4, 41, 14);
		 panel.add(label);
		 
		  parameterValueCombo = new JComboBox();
		  parameterValueCombo.addItemListener(new ItemListener() {
		  	public void itemStateChanged(ItemEvent arg0) {
		  		JComboBox s=(JComboBox)(arg0.getSource());
		  		value=s.getSelectedItem().toString();
		  	}
		  });
		  parameterValueCombo.setBounds(202, 1, 80, 20);
		  panel.add(parameterValueCombo);
		  
		   switchlbl = new JLabel("");
		  switchlbl.setBounds(10, 11, 102, 14);
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
	public void setAddActionListener(ActionListener addConditionsListener ){    
		btnSave.addActionListener(addConditionsListener);
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
	public String getLabel_3() {
		return label_3.getText().toString();
	}
	public void setLabel_3(JLabel label_3) {
		this.label_3 = label_3;
	}
}

