package ToolGUI;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

import Controller.Router;
import Controller.ScreenController;

import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import java.awt.Color;
import javax.swing.JTextField;

public class GenerateCodeGUI extends JFrame{

	private JPanel contentPane;
	private JComboBox comboBox;
	private boolean checkCombo = false, checkPath = false;
	private JFileChooser chooser; 
	private Path path = null;

	private JTextField textField;

	
	public GenerateCodeGUI() {
		setTitle("Generate Android Code...");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 713, 348);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblChooseRootScreen = new JLabel("Choose root screen:");
		lblChooseRootScreen.setFont(new Font("Tahoma", Font.PLAIN, 22));
		lblChooseRootScreen.setBounds(51, 32, 214, 40);
		contentPane.add(lblChooseRootScreen);
		
		comboBox = new JComboBox();
		comboBox.setBounds(280, 42, 170, 26);
		 String [] st=ScreenController.getScreenNameNames();
		 comboBox.setModel(new DefaultComboBoxModel(st));
		 comboBox.setSelectedItem(null);
		 contentPane.add(comboBox);
		 comboBox.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					checkCombo = true;
				}
			});
		 
		
		JLabel lblChooseLocation = new JLabel("Choose location:");
		lblChooseLocation.setFont(new Font("Tahoma", Font.PLAIN, 22));
		lblChooseLocation.setBounds(51, 117, 170, 27);
		contentPane.add(lblChooseLocation);
		
		JButton btnBrowse = new JButton("Browse...");
		btnBrowse.setBounds(561, 119, 115, 29);
		contentPane.add(btnBrowse);
	//	btnBrowse.setActionCommand("_browse_code_location");
	//	btnBrowse.addActionListener(Router.getInstance());
		btnBrowse.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {   		
				 chooser = new JFileChooser();
				chooser.setAcceptAllFileFilterUsed(false);
				
			//	FileFilter filter = new FileNameExtensionFilter("SPEC file", new String[] {"ser"});
			//	chooser.addChoosableFileFilter(filter);

				chooser.setCurrentDirectory(new java.io.File("."));
				chooser.getCurrentDirectory();
				chooser.setDialogTitle("Select a directory for generated code... ");
		    if (chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
		    	System.out.println("getSelectedFile() : " + chooser.getSelectedFile());
		    	path = Paths.get(chooser.getSelectedFile().getPath());	   
		    	checkPath = true;
		    	

		    } else {
		      System.out.println("No Selection ");
		      checkPath = false;
		    }
			   	}
			   });
		
		JButton btnGenerateCode = new JButton("Generate Code");
		btnGenerateCode.setFont(new Font("Tahoma", Font.PLAIN, 20));
		btnGenerateCode.setBounds(255, 242, 195, 29);
		contentPane.add(btnGenerateCode);
		btnGenerateCode.setActionCommand("_begin_generation");
		btnGenerateCode.addActionListener(Router.getInstance());
	//	btnGenerateCode.setEnabled(false);		GREEN UNTIL PATH WORKS
		
		JLabel lblPleaseChooseRoot = new JLabel("Please choose root screen and location");
		lblPleaseChooseRoot.setForeground(Color.RED);
		lblPleaseChooseRoot.setBounds(214, 206, 301, 20);
		contentPane.add(lblPleaseChooseRoot);
		
		textField = new JTextField();
		textField.setBounds(224, 120, 322, 26);
		contentPane.add(textField);
		textField.setColumns(10);
		
	//	if (checkCombo && checkPath)			GREEN UNTIL PATH WORKS
	//		btnGenerateCode.setEnabled(true);
		
	
	}
	
	public String getRootScreen() {
		String st=comboBox.getSelectedItem().toString();
		return st;
	}
	
	public void setCheckPath(boolean checkPath) {
		this.checkPath = checkPath;
	}
	
	 public Path getPath() {
			return path;
		}
}
