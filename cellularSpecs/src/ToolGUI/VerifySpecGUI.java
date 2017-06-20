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

import java.awt.event.ActionEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import javax.swing.JToggleButton;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.JPanel;
import java.awt.FlowLayout;

public class VerifySpecGUI extends JFrame{
	private static   JButton btnRun;
	private JComboBox comboBox,comboBox_2;
	
	private static JCheckBox allReq,req1,req2,req3,req4,req5,req6,req7,req8,req9;;
	private static ArrayList<JCheckBox> req =new ArrayList<JCheckBox>();

	private String [] st;
	private JPanel panel;
	private JComboBox comboBox_3;
	private JComboBox comboBox_4;
	public JPanel getPanel() {
		return panel;
	}

	public void addToPAnel(Container c) {
		panel.add(c);
	}

	public ArrayList<JCheckBox> getReq() {
		return req;
	}

	public void setReq(ArrayList<JCheckBox> req) {
		this.req = req;
	}

	public VerifySpecGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		 allReq = new JCheckBox("All");
		allReq.setBackground(Color.WHITE);
		allReq.setBounds(23, 138, 97, 23);

		allReq.addItemListener(new ItemListener() {
		    @Override
		    public void itemStateChanged(ItemEvent e) {
		    	selectall(IsSelect(e));
		    }
		});
		getContentPane().add(allReq);
		req.add(allReq);
		setSize(700,573);
		
		 req1 = new JCheckBox("There is Always an exit from any screen.");
		 req1.setActionCommand("req1");
		req1.setBackground(Color.WHITE);
		//Router.getInstance().getRequirementList().getRequirement(2).setFormula(formula);
		req1.setBounds(23, 162, 480, 23);
		getContentPane().add(req1);
		req.add(req1);
		
		 req2 = new JCheckBox("Each screen is reachable from screen:\r\n");
		req2.setBackground(Color.WHITE);
		req2.setBounds(23, 188, 221, 23);
		getContentPane().add(req2);
		req.add(req2);
		 req2.setActionCommand("req2");
		 
		 req3 = new JCheckBox("We can't  move from screen_j to screen_i without changing or defining a parameter.");
		req3.setBackground(Color.WHITE);
		req3.setBounds(23, 216, 642, 23);
		getContentPane().add(req3);
		req.add(req3);
		 req3.setActionCommand("req3");
		
		 req4 = new JCheckBox("Parameter cannot accept value that is not defined in the List of the possible values.");
		req4.setBackground(Color.WHITE);
		req4.setBounds(23, 242, 605, 23);
		getContentPane().add(req4);
		req.add(req4);
		 req4.setActionCommand("req4");
		
		 req5 = new JCheckBox("There is no path to a screen that allows  \"Illegal parameters values\".");
		req5.setBackground(Color.WHITE);
		req5.setBounds(23, 268, 427, 23);
		getContentPane().add(req5);
		req.add(req5);
		 req5.setActionCommand("req5");
		
		 req6 = new JCheckBox("Each list of parameters must be defined before entering a screen.");
		req6.setBackground(Color.WHITE);
		req6.setBounds(23, 322, 427, 23);
		getContentPane().add(req6);
		req.add(req6);
		 req6.setActionCommand("req6");
		
		 req7 = new JCheckBox("Parameters values cannot change unless it was intended to do so in its path");
		req7.setBackground(Color.WHITE);
		req7.setBounds(23, 348, 427, 23);
		getContentPane().add(req7);
		req.add(req7);
		 req7.setActionCommand("req7");
		
		 req8 = new JCheckBox("If a Parameter changes  in a specific state the change should be updated wherever the parameter is used.");
		req8.setBackground(Color.WHITE);
		req8.setBounds(23, 374, 543, 23);
		getContentPane().add(req8);
		req.add(req8);
		 req8.setActionCommand("req8");
		 
		 req9 = new JCheckBox("");
		req9.setBackground(Color.WHITE);
		req9.setBounds(23, 399, 21, 23);
		getContentPane().add(req9);
		req.add(req9);
		 req9.setActionCommand("req9");
		
		JLabel lblNote = new JLabel("note: (Illegal i.e. value that does not defined in the list of the parameters values)");
		lblNote.setBounds(33, 298, 443, 14);
		getContentPane().add(lblNote);
		
		 btnRun = new JButton("Run");
		btnRun.setActionCommand("Run_verifectaion");
		btnRun.setBounds(65, 433, 113, 23);
		getContentPane().add(btnRun);
		
		JButton btnCancel = new JButton("cancel");
		btnCancel.setBounds(213, 433, 107, 23);
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
		
		 comboBox = new JComboBox();
		  st=ScreenController.getScreenNameNames();
		 comboBox.setModel(new DefaultComboBoxModel(st));
		 comboBox.setSelectedItem(null);
		comboBox.setBounds(142, 67, 102, 23);
		getContentPane().add(comboBox);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(65, 108, 586, 23);
		getContentPane().add(separator);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setBounds(260, 188, 107, 22);
		getContentPane().add(comboBox_1);
		
		panel = new JPanel();
		panel.setBounds(50, 399, 527, 23);
		getContentPane().add(panel);
		panel.setLayout(new FlowLayout(FlowLayout.LEFT, 5, 5));
		
		 comboBox_2 = new JComboBox();

		
		comboBox_3 = new JComboBox();

		
		comboBox_4 = new JComboBox();

	}

	public JComboBox getComboBox_2() {
		return comboBox_2;
	}

	public void setComboBox_2(JComboBox comboBox_2) {
		this.comboBox_2 = comboBox_2;
	}

	public JComboBox getComboBox_3() {
		return comboBox_3;
	}

	public void setComboBox_3(JComboBox comboBox_3) {
		this.comboBox_3 = comboBox_3;
	}

	public JComboBox getComboBox_4() {
		return comboBox_4;
	}

	public void setComboBox_4(JComboBox comboBox_4) {
		this.comboBox_4 = comboBox_4;
	}

	private void selectall(boolean flag) {
		int i;
		for(i=1;i<10;i++)
		{
			JCheckBox  temp=req.get(i);
			temp.setSelected(flag);
			req.remove(i);
			req.add(i,temp);
		}
		
	}
	private boolean IsSelect(ItemEvent e) {
        if(e.getStateChange() == ItemEvent.SELECTED)
    		return true;
    else 
    	return false;
	}
	public String getRoot() {
		String st=comboBox.getSelectedItem().toString();
		return st;
	}

	public static  void setVerifySpecGUI(ActionListener verifySpecGUIListener) {
		btnRun.addActionListener(verifySpecGUIListener);

	}
	public static  void setCheckBoxListener(ItemListener checkBoxListenr) {

		for(int i=0;i<req.size();i++)
			req.get(i).addItemListener(checkBoxListenr);

	}
	public void addRootScreen(String[] st) {
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(st);
        comboBox.setModel(cbm);
		this.comboBox = comboBox;
		// TODO Auto-generated method stub
		
	}
	
	  public static void main(String[] args) {
		  VerifySpecGUI frame = new VerifySpecGUI();
		  String st="when X is equal to X all parameter always must be consistent.";
		  String [] s=st.split("X");
		  for(int i=0;i<s.length;i++)
		  {
			  System.out.println(s[i]);
			  frame.addToPAnel(frame.getComboBox_3());
			  JLabel Req = new JLabel(s[i]);  
			  frame.addToPAnel(Req);
		  }
		  frame.setVisible(true);
	  }
}
