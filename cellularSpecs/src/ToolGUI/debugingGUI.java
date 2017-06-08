package ToolGUI;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JLabel;

import java.awt.Color;
import java.awt.Dimension;





import javax.swing.ButtonGroup;
import javax.swing.JButton;

import java.awt.Font;
import java.awt.Toolkit;



import java.io.IOException;
import java.io.PrintWriter;

import javax.swing.JFileChooser;
import javax.swing.JTextField;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.JRadioButton;

import our.Utils.BulidSpec;
import Controller.Router;
import Controller.VerificationController;
import Controller.WorkSpaceController;
import Controller.FormulaTranslate;
import Model.WorkSpace;

public class debugingGUI extends JFrame{
	private JFileChooser chooser; 
	public debugingGUI() {
		setTitle("debug");
	getContentPane().setBackground(Color.WHITE);
	getContentPane().setLayout(null);
	
	JButton button = new JButton("debug open spec");
	button.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent arg0) {
			BulidSpec.build();
			WorkSpaceController.createSpecGUI();
		}
	});
	button.setBounds(11, 49, 273, 41);
	getContentPane().add(button);
	
	JButton button_1 = new JButton("create promela");
	button_1.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent arg0) {
			WorkSpace.getLog().debug("create pml file ");

			try{
			    PrintWriter writer = new PrintWriter(WorkSpace.getInstance().getWorkSpaceName()+".pml", "UTF-8");
			    writer.println(Router.getInstance().getVerificationController().translateToPROMELA());
			    writer.close();
			} catch (IOException eb) {
			   // do something
			}
		}
	});
	button_1.setBounds(11, 115, 273, 41);
	getContentPane().add(button_1);
	
	JButton CreateFormula = new JButton("Create Formula");
	CreateFormula.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent arg0) {
			BulidSpec.build();
			WorkSpaceController.createSpecGUI();
			VerificationController verificationController = new VerificationController();
			verificationController.translateToPROMELA();
			FormulaTranslate.translateReq1();
			FormulaTranslate.translateReq2a();
			FormulaTranslate.translateReq2b();
			
		}
	});
	CreateFormula.setBounds(11, 188, 273, 41);
	getContentPane().add(CreateFormula);
	    setVisible(true);
		setSize(319, 289);
		setLocation(800, 50);
		   
			 
	} 
}
