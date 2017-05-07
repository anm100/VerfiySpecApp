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
import javax.swing.UIManager;
import java.awt.SystemColor;

public class NewSpecGUI extends JFrame{
	private JTextField specName2;
	private JTextField specName_new;
	private JTextField specLocation2;
	private JButton btnOpen2;
	private JButton btnCreate1;
	private JButton btnCancel2;
	private JButton btnCancel1;
	private JButton btnBrowse2;
	private JButton btnBrowse1;
	private JButton bntNewSpec;
	private JButton btnOpenSpec;
	private JPanel panel_1;
	private JPanel panel_2;
	public NewSpecGUI() {
	getContentPane().setBackground(Color.WHITE);
	getContentPane().setLayout(null);
	bntNewSpec = new JButton("New");
	btnOpenSpec = new JButton("Open");
	setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	 panel_2=new JPanel();
    panel_1 = new JPanel();
   
	bntNewSpec.setBackground(Color.WHITE);
	btnOpenSpec.setBackground(SystemColor.inactiveCaptionText);
	JMenuBar bar = new JMenuBar();
	setJMenuBar(bar);
	 NewPanel();
	 OpenPanel();
	 getContentPane().add(panel_1);
	 bntNewSpec.addActionListener(new ActionListener() {
	    	public void actionPerformed(ActionEvent arg0) {
	    		bntNewSpec.setBackground(Color.WHITE);
	    		btnOpenSpec.setBackground(SystemColor.inactiveCaptionText);
	    		getContentPane().remove(panel_2);
	    		getContentPane().add(panel_1);
	    		getContentPane().repaint();
	    	}
	    });
	 btnOpenSpec.addActionListener(new ActionListener() {
	    	public void actionPerformed(ActionEvent e) {
	    		btnOpenSpec.setBackground(Color.WHITE);
	    		bntNewSpec.setBackground(SystemColor.inactiveCaptionText);
	    		getContentPane().remove(panel_1);
	    		getContentPane().add(panel_2);
	    		getContentPane().repaint();
	    	}
	    });
	 	bar.add(bntNewSpec);
	    bar.add(btnOpenSpec);
	    setVisible(true);
		Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
		setSize(626, 333);
	    int x = (int) ((dimension.getWidth() - getWidth()) / 2);
	    int y = (int) ((dimension.getHeight() - getHeight()) / 2);
	    setLocation(x, y);
	}
	private void OpenPanel() {
		panel_2.setBounds(0, 0, 607, 248);
		panel_2.setBackground(Color.WHITE);;
		panel_2.setLayout(null);
		panel_2.setBounds(0, 0, 607, 248);
		panel_2.setBackground(Color.WHITE);;
		panel_2.setLayout(null);
		 btnCancel2 = new JButton("Abort");
		 btnCancel2.setBounds(287, 158, 107, 23);
		 panel_2.add(btnCancel2);
		 
		  btnOpen2 = new JButton("Open");
		  btnOpen2.setBounds(124, 155, 89, 23);
		  panel_2.add(btnOpen2);
		  
		   btnBrowse2 = new JButton("Browse..");
		   btnBrowse2.setBounds(469, 114, 75, 23);
		   panel_2.add(btnBrowse2);
		   
		   specLocation2 = new JTextField();
		   specLocation2.setBounds(78, 113, 390, 20);
		   panel_2.add(specLocation2);
		   specLocation2.setText(System.getProperty("user.dir"));
		   specLocation2.setColumns(10);
		   
		   specName2=new JTextField();
		   specName2.setEditable(false);
		   specName2.setBounds(78, 70, 465, 20);
		   panel_2.add(specName2);
		   specName2.setColumns(10);
		   
		   JLabel lblPath2 = new JLabel("Location:");
		   lblPath2.setBounds(10, 114, 53, 14);
		   panel_2.add(lblPath2);
		   
		   JLabel lblStatus2 = new JLabel("Spec name: ");
		   lblStatus2.setBounds(10, 74, 107, 14);
		   panel_2.add(lblStatus2);
		   
		   JLabel lblOpenSpec2 = new JLabel("Open workspace");
		   lblOpenSpec2.setBounds(0, 0, 263, 45);
		   panel_2.add(lblOpenSpec2);
		   lblOpenSpec2.setFont(new Font("Tahoma", Font.BOLD, 18));
	
	}

	private void NewPanel() {
		panel_1.setBounds(0, 0, 607, 248);
		panel_1.setBackground(Color.WHITE);;
		panel_1.setLayout(null);
		 btnCancel1 = new JButton("Abort");
		 btnCancel1.setBounds(287, 158, 107, 23);
		 panel_1.add(btnCancel1);
		 
		  btnCreate1 = new JButton("Create");
		  btnCreate1.setActionCommand("_create_NewSpec");
		  btnCreate1.setBounds(124, 155, 89, 23);
		  panel_1.add(btnCreate1);
		  
		   btnBrowse1 = new JButton("Browse..");
		   btnBrowse1.setBounds(469, 114, 75, 23);
		   btnBrowse1.setActionCommand("_open_Spec");

		   panel_1.add(btnBrowse1);
		   
		   specLocation2 = new JTextField();
		   specLocation2.setBounds(78, 113, 390, 20);
		   panel_1.add(specLocation2);
		   specLocation2.setText(System.getProperty("user.dir"));
		   specLocation2.setColumns(10);
		   
		   specName_new=new JTextField("DefaultSpec");
		   specName_new.setBounds(78, 70, 465, 20);
		   panel_1.add(specName_new);
		   specName_new.setColumns(10);
		   
		   JLabel lblPath1 = new JLabel("Location:");
		   lblPath1.setBounds(10, 114, 53, 14);
		   panel_1.add(lblPath1);
		   
		   JLabel lblStatus1 = new JLabel("Spec name: ");
		   lblStatus1.setBounds(10, 74, 107, 14);
		   panel_1.add(lblStatus1);
		   
		   JLabel lblVerifySpec1 = new JLabel("New workspace");
		   lblVerifySpec1.setBounds(0, 0, 263, 45);
		   panel_1.add(lblVerifySpec1);
		   lblVerifySpec1.setFont(new Font("Tahoma", Font.BOLD, 18));
	}
	public String getSpecName() {
		return specName_new.getText().toString();
	}

	public JTextField getSpecLocation() {
		return specLocation2;
	}
	public void setSpecLocation(JTextField specLocation) {
		this.specLocation2 = specLocation;
	}
	public void addWorkSpaceListener(ActionListener listenForOperation){           
		  btnOpen2.addActionListener(listenForOperation);
		  btnCancel2.addActionListener(listenForOperation);
		  btnBrowse2.addActionListener(listenForOperation);
		  btnBrowse1.addActionListener(listenForOperation);
		  btnCreate1.addActionListener(listenForOperation);
		      }
	  private class EditListener implements ActionListener {
		    public void actionPerformed(ActionEvent e) {
		      System.out.println(e.getActionCommand());
		    }
		  }
	  
}
