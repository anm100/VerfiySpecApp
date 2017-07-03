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
import java.util.ArrayList;
import javax.swing.JComboBox;
import javax.swing.JSeparator;

import Controller.ScreenController;
import Controller.VerificationController;
import Model.ElementType;
import Controller.FormulaTranslate;

import java.awt.event.ActionEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import javax.swing.JToggleButton;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.border.Border;
import javax.swing.border.MatteBorder;
import java.awt.event.ActionEvent;

import javax.swing.JPanel;
import java.awt.FlowLayout;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeEvent;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;

public class VerifySpecGUI extends  JFrame implements ActionListener,ItemListener {
	private    JButton btnRun,btnCancel;
	private static int reqNum=8;
	private int inti=162,add=28;
	private int inti2=189,add2=28;
	private  JCheckBox[] req =new JCheckBox[reqNum];
	private JCheckBox reqAll;
	private String [] st;
	private JComboBox req3ComboScreenI,req3ComboScreenJ,req2ScreenCombo;
	private JComboBox req6ComboScreen,req8ComboParams;
	private JButton req6ChoosParams;
	private JButton req3ChoosParams;
	private JButton req8ChoosParams;
	private JPanel[] req_pan=new JPanel[reqNum];;
	private JComboBox root;
	private ArrayList<String> ChoosenParam=null;
	private ArrayList<String> req6ChoosenParam=null;
	private ArrayList<String> req8ChoosenParam=null;
	private	ChoosenParamtersGUI choosparamGui = new ChoosenParamtersGUI();
	private	ChoosenParamtersGUI req6choosparamGui = new ChoosenParamtersGUI();
	private ParamManagment req8choosparamGui=new ParamManagment();
	private 	Border b,but;
//	private ActionManagment req8actionMangement=new ActionManagment(paramName, data, toSwitch);
	private Border temp;
	public VerifySpecGUI()  {
		setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		intitCombo();
		prepareScreenCombo();
		createCheckBox();
		createJPanel();
		setSize(900,650);
		disableAll();
		 b=root.getBorder();
		
		 btnRun = new JButton("Run");
		btnRun.setActionCommand("Run_verifectaion");
		btnRun.setBounds(67, 571, 113, 23);
		getContentPane().add(btnRun);
		 but=btnRun.getBorder();
		 btnCancel = new JButton("cancel");
		 btnCancel.addActionListener(new ActionListener() {
		 	public void actionPerformed(ActionEvent arg0) {
		 	setVisible(false);
			req3ComboScreenI.setBorder(b);
			req3ComboScreenJ.setBorder(b);
			req2ScreenCombo.setBorder(b);
			req6ComboScreen.setBorder(b);
			req6ChoosParams.setBorder(b);
			req3ChoosParams.setBorder(b);
			req8ChoosParams.setBorder(b);
			root.setBorder(b);
		 	}
		 });
		btnCancel.setBounds(224, 571, 107, 23);
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
		
		
		
		
		
		choosparamGui.setOklistner(this);
	
		req3ChoosParams.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				choosparamGui.setVisible(true);
				choosparamGui.setActionCommand("_set_params_ok");
			}
		});
		req6choosparamGui.setOklistner(this);
		req8choosparamGui.setOKlistenert(this);
		req6ChoosParams.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				req6choosparamGui.setVisible(true);
				req6choosparamGui.setActionCommand("_set_params_req6_ok");
			}
		});
		req8ChoosParams.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
		
				req8choosparamGui.getFrame().setVisible(true);
				req8choosparamGui.setActionCommand("_set_params_req8_ok");
			}
		});
		
	}

	private void disableAll() {

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
	//	reqAll.addItemListener(this);
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
			req[i].setEnabled(false);
			req[i].setActionCommand("req"+(i+1));
			req[i].addItemListener(this);
			getContentPane().add(req[i]);
			inti=inti+add;
		}
		req[0].setEnabled(true);
		req[1].setEnabled(true);
		if(ScreenController.getScreenNameNames().length>=2
			&&ScreenController.getparams().length>0 )
		{
		req[2].setEnabled(true);
		req[5].setEnabled(true);
		}
		if(ScreenController.getparams().length>0 )
		{
		req[3].setEnabled(true);
		req[4].setEnabled(true);
		req[6].setEnabled(true);
		req[7].setEnabled(true);
		}

		
		
	}
	private void intitCombo() {
		req3ComboScreenJ=new  JComboBox();
		req3ComboScreenJ.setEnabled(false);
		req3ComboScreenI=new  JComboBox();
		req3ComboScreenI.setEnabled(false);
		req2ScreenCombo= new  JComboBox();
		req2ScreenCombo.setEnabled(false);

		req6ComboScreen=new JComboBox();
		req6ComboScreen.setEnabled(false);
		req8ComboParams=new  JComboBox();
		req8ComboParams.setEnabled(false);
		
		root=new JComboBox();
		req3ChoosParams = new JButton("set of parameters");
		req6ChoosParams = new JButton("list of parameters");
		req8ChoosParams = new JButton("a set of params");
		req3ChoosParams.setEnabled(false);
		req6ChoosParams.setEnabled(false);
		req8ChoosParams.setEnabled(false);

	}
	private void prepareScreenCombo() {
		String st [] =ScreenController.getScreenNameNames();
		DefaultComboBoxModel cbm=new DefaultComboBoxModel(st);
		req2ScreenCombo.setModel(cbm);
		req2ScreenCombo.setSelectedItem(null);
		 cbm=new DefaultComboBoxModel(st);
		req3ComboScreenI.setModel(cbm);
		req3ComboScreenI.setSelectedItem(null);
		
		 cbm=new DefaultComboBoxModel(st);
		req3ComboScreenJ.setModel(cbm);
		req3ComboScreenJ.setSelectedItem(null);
		req3ComboScreenJ.setEnabled(false);
		 cbm=new DefaultComboBoxModel(st);
		root.setModel(cbm);
		root.setSelectedItem(null);
		 cbm=new DefaultComboBoxModel(st);
		 req6ComboScreen.setModel(cbm);
		 req6ComboScreen.setSelectedItem(null);
		String st1 [] =ScreenController.getParams(ElementType.getOnOffType());
		String st2[]=new String[2*st1.length];
		int j=0;
		for(int i=0;i<st1.length;i++)
		{
			st2[j]=st1[i]+"="+ElementType.getOn();
			st2[j+1]=st1[i]+"="+ElementType.getOff();
			System.out.println(st1[i]);
			j+=2;
		}
		cbm=new DefaultComboBoxModel(st2);
		 req8ComboParams.setModel(cbm);
		 req8ComboParams.setSelectedItem(null);

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
	public JComboBox getReq6ScreenJComb() {
		return this.req6ComboScreen;
	}
	public JButton getreq6ChoosParams() {
		return req6ChoosParams;
	}
	public  JButton getreq8ChoosParams()
	{
		return req8ChoosParams;
	}
	public  JComboBox getreq8ScreenCombo()
	{
		return req8ComboParams;
	}
	public JButton getreq2ChoosParams() {
		return req3ChoosParams;
	}
	//=========================================
	public void setReq3ComboScreenIBoredr(Boolean b) {
		if(b)
		this.req3ComboScreenI.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req3ComboScreenI.setBorder(this.b);
	}
	public void setReq3ComboScreenJBoredr(Boolean b) {
		if(b)
		this.req3ComboScreenJ.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req3ComboScreenJ.setBorder(this.b);
	}
	public void setReq2ComboScreenIBoredr(boolean c) {
		if(c)
		this.req2ScreenCombo.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req2ScreenCombo.setBorder(this.b);
		
	}
	public void setReq6ComboScreenIBoredr(boolean c) {
		if(c)
		this.req6ComboScreen.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req6ComboScreen.setBorder(this.b);
		
	}
	
	public void setRootComboScreenBoreder(boolean c) {
		if(c)
		this.root.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.root.setBorder(this.b);
		
	}
	//=========================================
	public void setReq2button(boolean c) {
		if(c)
		this.req3ChoosParams.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req3ChoosParams.setBorder(this.b);
		
	}
	public void setReq6button(boolean c) {
		if(c)
		this.req6ChoosParams.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req6ChoosParams.setBorder(this.b);
		
	}
	public void setReq8button(boolean c) {
		if(c)
		this.req8ChoosParams.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req8ChoosParams.setBorder(this.b);
		
	}
	public void setReq8ComboParams(boolean c) {
		if(c)
		this.req8ComboParams.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));	
		else
			this.req8ComboParams.setBorder(this.b);
		
	}
	//============================================
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
	//=======================================
	public void enableComboScreenJ()
	{
	req3ComboScreenJ.setEnabled(true);
	}
	public void enableComboScreenI()
	{
	req3ComboScreenI.setEnabled(true);
	}
	//=======================================
	public void enableReq3()
	{
	req[2].setEnabled(true);
	req[5].setEnabled(true);
	}
	public void enableReq()
	{
	req[3].setEnabled(true);
	req[4].setEnabled(true);
	req[6].setEnabled(true);
	req[7].setEnabled(true);
	}
	
	private boolean IsSelect(ItemEvent e) {
        if(e.getStateChange() == ItemEvent.SELECTED)
    		return true;
    else 
    	return false;
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
	public  int gerselectedNum() {
		int count=0;
		for(int i=0;i<req.length;i++)
		{
			if(req[i].isSelected())
				count++;
		}
		return count;
	}
	public ArrayList<String> getChoosenParam() {
		return ChoosenParam;
	}
	public ArrayList<String> getChoosenParamreq6() {
		return req6ChoosenParam;
	}
	public ArrayList<String> getChoosenParamreq8() {
		return req8ChoosenParam;
	}
	public JComboBox getRoot() {
			return root;
	}
	@Override
	public void itemStateChanged(ItemEvent arg0) {
		JCheckBox bo=(JCheckBox)(arg0.getItemSelectable());
		String st=bo.getActionCommand();
		switch(st)
		{
		case "reqAll":

			break;
		case "req1":
			if(bo.isSelected())
			{
				//req[0].setSelected(true);
			}
			else
			{
				//req[0].setSelected(false);
			}
			break;
		case "req2":
			if(ItemEvent.SELECTED==arg0.getStateChange())
			{
				req2ScreenCombo.setEnabled(true);
				
			}
			else
			{
				req2ScreenCombo.setEnabled(false);
				req2ScreenCombo.setBorder(b);
			}
			break;
		case "req3":
			if(ItemEvent.SELECTED==arg0.getStateChange())
			{
					req3ComboScreenI.setEnabled(true);
					req3ComboScreenJ.setEnabled(true);
					req3ChoosParams.setEnabled(true);
			}
			else
			{
					req3ComboScreenI.setEnabled(false);
					req3ComboScreenJ.setEnabled(false);
					req3ChoosParams.setEnabled(false);
			}
			break;
		case "req4":
			if(ItemEvent.SELECTED==arg0.getStateChange())
			{
				
			}
			else
			{
				//req[3].setSelected(false);
			}
			break;
		case "req5":
			if(ItemEvent.SELECTED==arg0.getStateChange())
			{
				//req[4].setSelected(true);
			}
			else
			{
				//req[4].setSelected(false);
			}
			break;
		case "req6":
			if(ItemEvent.SELECTED==arg0.getStateChange())
			{
				req6ComboScreen.setEnabled(true);
				req6ChoosParams.setEnabled(true);
			}
			else
			{
				req6ComboScreen.setEnabled(false);
				req6ChoosParams.setEnabled(false);
			}
			break;
		case "req7":
			if(ItemEvent.SELECTED==arg0.getStateChange())
			{
				//req[6].setSelected(true);
			}
			else
			{
				//req[6].setSelected(false);
			}
			break;
		case "req8":
			if(ItemEvent.SELECTED==arg0.getStateChange())
			{
				req8ChoosParams.setEnabled(true);
				req8ComboParams.setEnabled(true);
			}
			else
			{
				req8ChoosParams.setEnabled(false);
				req8ComboParams.setEnabled(false);
			}
			break;
		}
	if(gerselectedNum()==reqNum)
			reqAll.setSelected(true);
		else
			reqAll.setSelected(false);
		
	}
	private void checkAll(boolean b) {
		if(reqAll.isSelected()!=b)
		reqAll.setSelected(b);
		for(int i=0;i<req.length;i++)
		{
			if(req[i].isSelected()!=b)
				req[i].setSelected(b);
		}
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		switch (e.getActionCommand())
		{
		case ("_set_params_ok"):
			//addConditionToTextArea(switchTo);
			choosparamGui.setVisible(false);
		 ChoosenParam=(ArrayList<String>) (choosparamGui.getparams());	
			break;
		case ("_set_params_req6_ok"):
			//addConditionToTextArea(switchTo);
			req6choosparamGui.setVisible(false);
		 req6ChoosenParam=(ArrayList<String>) (req6choosparamGui.getparams());	
			break;
		case ("_set_params_req8_ok"):
			//addConditionToTextArea(switchTo);
			req8choosparamGui.getFrame().setVisible(false);
		 req8ChoosenParam=(ArrayList<String>) (req8choosparamGui.getAppointments());	
			break;

		}
	}
	public ArrayList<String> getReq8ChoosenParam() {
		return req8ChoosenParam;
	}

	public   void setVerifySpecGUI(ActionListener verifySpecGUIListener) {
		btnRun.addActionListener(verifySpecGUIListener);

	}

}


