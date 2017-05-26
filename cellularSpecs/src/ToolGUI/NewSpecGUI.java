package ToolGUI;
import java.awt.Event;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.KeyStroke;

import javax.swing.JFrame;
import java.awt.Color;
import java.awt.Dimension;

import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JCheckBox;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.Toolkit;

import javax.swing.JProgressBar;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JSeparator;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.UIManager;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

import java.awt.SystemColor;
import javax.swing.JRadioButton;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;

public class NewSpecGUI extends JFrame{
	private JTextField specLocation;
	private JButton btnOK;
	private JButton btnBrowse;
	private JPanel panel_1;
	private JTextField SPECName;
	private JRadioButton rdbtnOpenSpec;
	private JButton btnCancel;
	public NewSpecGUI() {
	getContentPane().setBackground(Color.WHITE);
	getContentPane().setLayout(null);	 
	 JLabel Spec = new JLabel("SPEC");
	 Spec.setBounds(10, 11, 40, 37);
	 getContentPane().add(Spec);
	 Spec.setFont(new Font("Times New Roman", Font.BOLD, 14));
	 
	 JRadioButton rdbtnCreateNewSpec = new JRadioButton("Create New SPEC");
	 rdbtnCreateNewSpec.setActionCommand("Create_New_SPEC");



	 rdbtnCreateNewSpec.setBackground(Color.WHITE);
	 rdbtnCreateNewSpec.setBounds(10, 55, 195, 23);
	 getContentPane().add(rdbtnCreateNewSpec);
	
	 SPECName = new JTextField();
	 SPECName.setText("DefaultSpec");
	 SPECName.setBounds(87, 85, 189, 20);
	 getContentPane().add(SPECName);
	 SPECName.setColumns(10);
	 
	 JLabel lblSpecName = new JLabel("SPEC name:");
	 
	 lblSpecName.setBounds(10, 88, 75, 14);
	 getContentPane().add(lblSpecName);
	 
	 rdbtnOpenSpec = new JRadioButton("Open SPEC");
	 rdbtnOpenSpec.setActionCommand("Open_SPEC");

	 rdbtnOpenSpec.setBackground(Color.WHITE);
	 rdbtnOpenSpec.setBounds(10, 112, 109, 23);
	 getContentPane().add(rdbtnOpenSpec);
	    setVisible(true);
		Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
		setSize(319, 333);
	    int x = (int) ((dimension.getWidth() - getWidth()) / 2);
	    int y = (int) ((dimension.getHeight() - getHeight()) / 2);
	    setLocation(x, y);
	    btnOK = new JButton("OK");
		btnOK.setActionCommand("_create_NewSpec");
		btnOK.setBounds(47, 211, 89, 23);
		getContentPane().add(btnOK);  
		btnBrowse = new JButton("Browse..");
		btnBrowse.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent arg0) {   		
			JFileChooser chooser = new JFileChooser();
			chooser.setAcceptAllFileFilterUsed(false);
			
			FileFilter filter = new FileNameExtensionFilter("SPEC file", new String[] {"ser"});
			chooser.addChoosableFileFilter(filter);

			String workingDir = System.getProperty("user.dir");
			chooser.setCurrentDirectory(new java.io.File("."));
			chooser.getCurrentDirectory();
			chooser.setDialogTitle("select a directory as workspace ");
	    if (chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
	    	System.out.println("getSelectedFile() : " + chooser.getSelectedFile());
	    	specLocation.setText(chooser.getSelectedFile().getPath());
	    } else {
	      System.out.println("No Selection ");
	    }
		   	}
		   });
		   btnBrowse.setBounds(10, 146, 75, 23);
		   btnBrowse.setActionCommand("_open_Spec");
		   

		  getContentPane().add(btnBrowse);
		   
		   specLocation = new JTextField();
		   specLocation.setEditable(false);
		   specLocation.setBounds(87, 147, 189, 20);
		   getContentPane().add(specLocation);
		   specLocation.setText(System.getProperty("user.dir"));
		   specLocation.setColumns(10);
		   
		   btnCancel = new JButton("Cancel");
		   btnCancel.setBounds(174, 211, 91, 23);
		   getContentPane().add(btnCancel);
		   
		   ButtonGroup group = new ButtonGroup();
		   rdbtnCreateNewSpec.setSelected(true);
		   group.add(rdbtnCreateNewSpec);
		   group.add(rdbtnOpenSpec);
			btnBrowse.setEnabled(false);
 			specLocation.setEnabled(false);
 			SPECName.setEnabled(true);
		   	rdbtnCreateNewSpec.addActionListener(new ActionListener() {
				 	public void actionPerformed(ActionEvent arg0) {
				 		{
				 			btnOK.setActionCommand("_create_NewSpec");
				 			btnBrowse.setEnabled(false);
				 			specLocation.setEnabled(false);
				 			SPECName.setEnabled(true);
				 			
				 		}
				 	}
				 });
			 rdbtnOpenSpec.addActionListener(new ActionListener() {
				 	public void actionPerformed(ActionEvent arg0) {
				 		btnOK.setActionCommand("_open_Spec");
				 		SPECName.setEnabled(false);
			 			btnBrowse.setEnabled(true);
			 			specLocation.setEnabled(true);
				 		
				 	}
				 });
			 
	} 
	public String getSpecName() {
		return SPECName.getText().toString();
	}

	public String getSpecLocation() {
		return specLocation.getText().toString();
	}
	public void setSpecLocation(JTextField specLocation) {
		this.specLocation = specLocation;
	}
	public void addWorkSpaceListener(ActionListener listenForOperation){           
		  btnOK.addActionListener(listenForOperation);
		      }
	/*  private class EditListener implements ActionListener {  				""
		    public void actionPerformed(ActionEvent e) {
		      System.out.println(e.getActionCommand());
		    }
		  }*/
}
