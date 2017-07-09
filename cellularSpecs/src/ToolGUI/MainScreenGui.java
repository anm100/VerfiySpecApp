package ToolGUI;

import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.UIManager;

import java.awt.Dialog.ModalExclusionType;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;

import javax.swing.JLabel;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

import Controller.Router;
import Controller.WorkSpaceController;
import Model.WorkSpace;

import java.awt.Font;

public class MainScreenGui extends JFrame  {
	private JLabel specNameLabel;
	private JButton btnAddscreen;
	private JButton btnOpen;
	private JButton btnNew;
	private JButton btnExport;
	private JButton btnRunVerification;
	private JButton btnShowresults;
	private JFileChooser chooser; 
	
	
	public  MainScreenGui() {
		
		setSize(1133,785);
		getContentPane().setLayout(null);
		setLocationRelativeTo(null);
		 btnAddscreen = new JButton("AddScreen");
		btnAddscreen.setBounds(25, 55, 99, 23);
		getContentPane().add(btnAddscreen);
		
		specNameLabel = new JLabel();
		specNameLabel.setFont(new Font("Tahoma", Font.BOLD, 18));
		specNameLabel.setBounds(34, 11, 356, 35);
		getContentPane().add(specNameLabel);
		
		 btnOpen = new JButton("Open");
		 btnOpen.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {   		
					 chooser = new JFileChooser();
					chooser.setAcceptAllFileFilterUsed(false);
					
					FileFilter filter = new FileNameExtensionFilter("SPEC file", new String[] {"ser"});
					chooser.addChoosableFileFilter(filter);

					String workingDir = System.getProperty("user.dir");
					chooser.setCurrentDirectory(new java.io.File("."));
					chooser.getCurrentDirectory();
					chooser.setDialogTitle("select a directory as workspace ");
			    if (chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
			    	System.out.println("getSelectedFile() : " + chooser.getSelectedFile());
			    	Router.getInstance().setPath(chooser.getSelectedFile().getPath());
					WorkSpace.getLog().debug("open spec"+chooser.getSelectedFile().getPath());
					WorkSpaceController.OpenSpecFromFile(chooser.getSelectedFile().getPath());
					WorkSpaceController.createSpecGUI();
			    } else {
			      System.out.println("No Selection ");
			    }
				   	}
				   });			    	
		 

		btnOpen.setBounds(872, 33, 89, 23);
		getContentPane().add(btnOpen);
		
		 btnNew = new JButton("New");
		btnNew.setBounds(773, 33, 89, 23);
		btnNew.setActionCommand("_create_NewSpec");
		getContentPane().add(btnNew);

		 btnExport = new JButton("Save SPEC");
		btnExport.setBounds(971, 33, 99, 23);
		getContentPane().add(btnExport);
		
		btnRunVerification= new JButton("Verifiy SPEC");

		btnRunVerification.setBounds(785, 674, 136, 23);
		getContentPane().add(btnRunVerification);
		
		 btnShowresults = new JButton("ShowResults");
		 btnShowresults.setEnabled(false);
		btnShowresults.setBounds(934, 674, 136, 23);
		getContentPane().add(btnShowresults);
	 }
		public void setBtnRunVerification(Boolean b) {
		this.btnRunVerification.setEnabled(b);;
	}
	public void setBtnShowresults(Boolean n) {
		this.btnShowresults.setEnabled(n);
	}
		public JLabel getSpecNameLabel() {
			return specNameLabel;
		}
		public void setSpecNameLabel(String specNameLabel) {
			this.specNameLabel.setText(specNameLabel); 
		}
		public void addMainScreenListener(ActionListener listenForOperation){       
			btnAddscreen.addActionListener(listenForOperation);
			btnExport.addActionListener(listenForOperation);
			btnNew.addActionListener(listenForOperation);
			btnOpen.addActionListener(listenForOperation);
			btnRunVerification.addActionListener(listenForOperation);
			btnShowresults.addActionListener(listenForOperation);
	}
		public void addMainScreenMouseListener(MouseListener WorkSpaceController){       
		
			this.addMouseListener(WorkSpaceController);
		}
		public void addMainScreenMouseListener(MouseMotionListener WorkSpaceController)
		{
			this.addMouseMotionListener(WorkSpaceController);
		}
		public void removeMainScreenMouseListener(MouseListener mouseListener){
			this.removeMouseListener(mouseListener);
		}
		public void removeMainScreenMouseListener(MouseMotionListener WorkSpaceController)
		{
			this.removeMouseMotionListener(WorkSpaceController);
		}
		public void refreshWorkspace(){
			getContentPane().repaint();
			getContentPane().revalidate();
		}
}