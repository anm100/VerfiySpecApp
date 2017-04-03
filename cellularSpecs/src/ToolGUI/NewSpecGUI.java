package ToolGUI;

import javax.swing.JFrame;
import java.awt.Color;
import java.awt.Dimension;

import javax.swing.JLabel;
import javax.swing.JCheckBox;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.Toolkit;

import javax.swing.JProgressBar;
import javax.swing.JComboBox;
import javax.swing.JSeparator;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class NewSpecGUI extends JFrame{
	private JTextField specName;
	private JTextField specLocation;
	private JButton btnCreate;
	private JButton btnCancel;
	private JButton btnBrowse;
	public NewSpecGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		 btnCancel = new JButton("Abort");
		btnCancel.setBounds(227, 218, 107, 23);
		getContentPane().add(btnCancel);
		
		JLabel lblVerifySpec = new JLabel("New workspace");
		lblVerifySpec.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblVerifySpec.setBounds(23, 0, 263, 45);
		getContentPane().add(lblVerifySpec);
		
		JLabel lblStatus = new JLabel("Spec name: ");
		lblStatus.setBounds(23, 70, 64, 14);
		getContentPane().add(lblStatus);
		
		JLabel lblPath = new JLabel("Location:");
		lblPath.setBounds(23, 108, 53, 14);
		getContentPane().add(lblPath);
		
		specName=new JTextField();
		specName.setBounds(86, 67, 284, 20);
		getContentPane().add(specName);
		specName.setColumns(10);
		
		specLocation = new JTextField();
		specLocation.setText("c:\\");
		specLocation.setColumns(10);
		specLocation.setBounds(86, 105, 208, 20);
		getContentPane().add(specLocation);
		
		 btnBrowse = new JButton("Browse..");
		btnBrowse.setBounds(297, 104, 75, 23);
		getContentPane().add(btnBrowse);
		
		 btnCreate = new JButton("Create");
		btnCreate.setBounds(86, 218, 89, 23);
		getContentPane().add(btnCreate);	
		Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
		setSize(400, 300);
	    int x = (int) ((dimension.getWidth() - getWidth()) / 2);
	    int y = (int) ((dimension.getHeight() - getHeight()) / 2);
	    setLocation(x, y);
	}
	public JTextField getSpecName() {
		return specName;
	}
	public void setSpecName(JTextField specName) {
		this.specName = specName;
	}
	public JTextField getSpecLocation() {
		return specLocation;
	}
	public void setSpecLocation(JTextField specLocation) {
		this.specLocation = specLocation;
	}
	public void addWorkSpaceListener(ActionListener listenForOperation){           
		  btnCreate.addActionListener(listenForOperation);
		  btnCancel.addActionListener(listenForOperation);
		  btnBrowse.addActionListener(listenForOperation);
		      }
}
