package ToolGUI;

import javax.swing.JFrame;

import java.awt.Color;
import java.awt.Component;
import java.awt.Container;

import javax.swing.JLabel;
import javax.swing.JCheckBox;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;

import java.awt.Font;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.ArrayList;

import javax.swing.JProgressBar;
import javax.swing.JComboBox;
import javax.swing.JSeparator;

import Controller.Router;
import Controller.ScreenController;
import Controller.FormulaTranslate;
import Model.WorkSpace;

import java.awt.event.ActionEvent;

import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import javax.swing.table.DefaultTableModel;
import javax.swing.JToggleButton;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.JPanel;

import client.ChoosenParamtersGUI;

import java.awt.FlowLayout;

public class VerifySpecGUI extends JFrame implements ItemListener ,ActionListener{
	private    JButton btnRun,btnCancel;
	private static int reqNum=9;
	private int inti=162,add=28;
	private int inti2=189,add2=28;
	private  JCheckBox[] req =new JCheckBox[reqNum];
	private JCheckBox reqAll;
	private String [] st;
	private JComboBox req3ComboScreenI,req3ComboScreenJ,req3CombboParam,req3CombboValue,req8parameterName,req8parameterValue,req2ScreenCombo;
	private JComboBox req6ComboScreen;
	private JButton req6ChoosParams;
	private JButton req2ChoosParams;
	private JPanel[] req_pan=new JPanel[reqNum];;
	private JComboBox root;
	private	ChoosenParamtersGUI choosparamGui = new ChoosenParamtersGUI();
	VerifySpecGUI thisRef = this;
	public String getRoot() {
		return root.getSelectedItem().toString();
	}
	public VerifySpecGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		intitCombo();
		prepareScreenCombo();
		createCheckBox();
		createJPanel();
		setSize(900,650);
		
		 btnRun = new JButton("Run");
		btnRun.setActionCommand("Run_verifectaion");
		btnRun.setBounds(66, 459, 113, 23);
		getContentPane().add(btnRun);
		
		 btnCancel = new JButton("cancel");
		btnCancel.setBounds(209, 459, 107, 23);
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
		
		
		JSeparator separator = new JSeparator();
		separator.setBounds(65, 108, 688, 23);
		getContentPane().add(separator);
		
		root.setBounds(138, 67, 148, 23);
		getContentPane().add(root);
		choosparamGui.setOklistner(thisRef);
		JButton btnNewButton = new JButton("New button");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				choosparamGui.setVisible(true);
			}
		});
		btnNewButton.setBounds(350, 459, 91, 23);
		getContentPane().add(btnNewButton);
	
	}
	private void createJPanel() {
		
		for(int i=0;i<reqNum;i++)
		{
			req_pan[i]=new JPanel();
			req_pan[i].setBounds(30, inti2,870, 27);
			getContentPane().add(req_pan[i]);
			req_pan[i].setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
			inti2+=add2;
		}
		
		
	}
	private void createCheckBox() {
		
		reqAll=new JCheckBox("check all");
		reqAll.setBackground(Color.WHITE);
		reqAll.addItemListener(this);
		reqAll.setBounds(5, 162,122, 23);
		reqAll.setActionCommand("reqAll");
		getContentPane().add(reqAll);
		inti=inti+add;
		
	
		for(int i=0;i<reqNum;i++)
		{
			req[i]=new JCheckBox("");
			req[i].setBackground(Color.WHITE);
			req[i].addItemListener(this);
			req[i].setBounds(5, inti,25, 23);
			req[i].setActionCommand("req"+(i+1));
			getContentPane().add(req[i]);
			inti=inti+add;
		}
	}
	private void intitCombo() {
		req3ComboScreenJ=new  JComboBox();
		req3ComboScreenI=new  JComboBox();
		req2ScreenCombo= new  JComboBox();
		req3CombboValue=new JComboBox();
		req3CombboParam=new JComboBox();
		req6ComboScreen=new JComboBox();
		req6ChoosParams=new JButton();
		req2ChoosParams=new JButton();
		req2ChoosParams.setText("Choose");
		root=new JComboBox();
		
	}
	private void prepareScreenCombo() {
		String st [] =ScreenController.getScreenNameNames();
		DefaultComboBoxModel cbm=new DefaultComboBoxModel(st);
		req2ScreenCombo.setModel(cbm);
		 cbm=new DefaultComboBoxModel(st);
		req3ComboScreenI.setModel(cbm);
		 cbm=new DefaultComboBoxModel(st);
		req3ComboScreenJ.setModel(cbm);
		 cbm=new DefaultComboBoxModel(st);
		root.setModel(cbm);
		 cbm=new DefaultComboBoxModel(st);
		 req6ComboScreen.setModel(cbm);
		String st1 [] =ScreenController.getparams();
		cbm=new DefaultComboBoxModel(st1);
		req3CombboParam.setModel(cbm);
		
	}

	public void setReq_pan(Container req_con,int index ) {
		this.req_pan[index].add(req_con);
	}

	public JComboBox getReq2ScreenCombo() {
		return req2ScreenCombo;
	}
	public JComboBox getReq3ScreenICombo() {
		return req3ComboScreenI;
	}
	public JComboBox getReq3ScreenJCombo() {
		return req3ComboScreenJ;
	}
	public JComboBox getReq3CombboParam() {
		return req3CombboParam;
	}

	public JComboBox getReq3CombboValue() {
		return req3CombboValue;
	}
	public JComboBox getReq6ScreenJComb() {
		return req6ComboScreen;
	}
	public JButton getreq6ChoosParams() {
		return req6ChoosParams;
	}
	public JButton getreq2ChoosParams() {
		return req2ChoosParams;
	}
	//=========================================
	//=========================================
	public void setReq2ScreenCombo(String [] req2ScreenCombo) {
		
		DefaultComboBoxModel cbm=new DefaultComboBoxModel(req2ScreenCombo);
		this.req2ScreenCombo.setModel(cbm);
		
	}
	public void setReq3ComboScreenI(String [] req3ScreenCombo) {
		DefaultComboBoxModel cbm =new DefaultComboBoxModel(req3ScreenCombo);
		this.req3ComboScreenI.setModel(cbm);
	}

	public void setReq3ComboScreenJ(String [] req3ComboScreenJ) {
		DefaultComboBoxModel cbm =new DefaultComboBoxModel(req3ComboScreenJ);
		this.req3ComboScreenJ.setModel(cbm);
	}
	public void setReq3CombboParam(String [] req3CombboParam) {
		DefaultComboBoxModel cbm=new DefaultComboBoxModel();
		this.req3CombboParam.setModel(cbm);
	}
	public void setReq3CombboValue(String[] req3CombboValue) {
		DefaultComboBoxModel cbm=new DefaultComboBoxModel();
		this.req3CombboValue.setModel(cbm);
	}
	//=======================================
	//=======================================

	private boolean IsSelect(ItemEvent e) {
        if(e.getStateChange() == ItemEvent.SELECTED)
    		return true;
    else 
    	return false;
	}
	public   void setVerifySpecGUI(ActionListener verifySpecGUIListener) {
		btnRun.addActionListener(verifySpecGUIListener);

	}
	public static  void setCheckBoxListener(ItemListener checkBoxListenr) {

		/*for(int i=0;i<req.size();i++)
			req.get(i).addItemListener(checkBoxListenr);*/

	}
	@Override
	public void itemStateChanged(ItemEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	public  Boolean[] getReq() {
		Boolean[] b=new Boolean[reqNum];
		for(int i=0;i<req.length;i++)
		{
			if(req[i].isSelected())
			b[i]=true;
			else
			b[i]=false;
		}
		return b;
	}
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		switch (arg0.getActionCommand())
		{
		case ("_set_params_ok"):
			//addConditionToTextArea(switchTo);
			choosparamGui.setVisible(false);
		System.out.println(choosparamGui.getparams());	
			break;

		}
	}
}
/* allReq = new JCheckBox("All");
allReq.setBackground(Color.WHITE);
allReq.setBounds(23, 138, 37, 23);
(new () {
    @Override
    public void itemStateChanged(ItemEvent e) {
    	selectall(IsSelect(e));
    }
});*/

/*private void selectall(boolean flag) {
int i;
for(i=1;i<10;i++)
{
	JCheckBox  temp=req.get(i);
	temp.setSelected(flag);
	req.remove(i);
	req.add(i,temp);
}*/

