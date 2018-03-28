package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import javax.swing.UIManager;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;



import java.awt.Color;
import java.awt.Font;

import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;


import javax.swing.event.PopupMenuListener;

import Controller.Router;

import javax.swing.event.PopupMenuEvent;

public class ListTypeGUI extends JFrame {
	private JTextArea textArea;
	private JTextField elementName;
	private String values[]={""} ; 
	JButton butListSave;
	String ScreenName; 
	private String comment=" ";

	public ListTypeGUI(String screenName)
	{
		this.ScreenName=screenName; 
		setTitle("List Element");
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		setLocationRelativeTo(null);
		
		JLabel lblOnoff = new JLabel(screenName+"-List Element");
		lblOnoff.setFont(new Font("Arial", Font.BOLD, 22));
		lblOnoff.setBounds(10, 9, 361, 36);
		getContentPane().add(lblOnoff);
		
		JLabel lblName = new JLabel("Element Name:");
		lblName.setBounds(20, 56, 74, 14);
		getContentPane().add(lblName);
		
		JLabel lblDefaulval = new JLabel("DefaultVal:");
		lblDefaulval.setBounds(20, 242, 64, 14);
		getContentPane().add(lblDefaulval);
		
		elementName = new JTextField();
		elementName.setBounds(104, 53, 152, 20);
		getContentPane().add(elementName);
		elementName.setColumns(10);
		
		JComboBox parameterNAme = new JComboBox();
		parameterNAme.setModel(new DefaultComboBoxModel(new String[] {"new parameter", "1", "2", "3", "4", "5"}));
		parameterNAme.setBounds(104, 84, 152, 22);
		getContentPane().add(parameterNAme);
		setSize(501, 367);
		
		JComboBox comboBox = new JComboBox();


		comboBox.setModel(new DefaultComboBoxModel(values));
		comboBox.setBounds(104, 239, 152, 20);
		getContentPane().add(comboBox);
		
		
		JLabel lblValues = new JLabel("Values:");
		lblValues.setBounds(20, 116, 64, 14);
		getContentPane().add(lblValues);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(104, 117, 149, 108);
		getContentPane().add(scrollPane);
		
		textArea = new JTextArea();
		scrollPane.setRowHeaderView(textArea);
		setSize(501, 405);
		
		values=textArea.getText().split("\n");
		comboBox.setModel(new DefaultComboBoxModel(values));
		
		JButton btnSave = new JButton("save");
		btnSave.setBounds(73, 365, 89, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("cancel");
		btnCancel.setBounds(201, 365, 89, 23);
		getContentPane().add(btnCancel);
		System.out.println(values.toString());
		
		 butListSave = new JButton("Save");
		 butListSave.setToolTipText("");
		butListSave.setBounds(120, 295, 112, 23);
		getContentPane().add(butListSave);
		
		JButton button_2 = new JButton("Cancel");
		button_2.setBounds(242, 295, 116, 23);
		getContentPane().add(button_2);
		
		JLabel lblParameterName = new JLabel("Parameter name");
		lblParameterName.setBounds(20, 88, 89, 14);
		getContentPane().add(lblParameterName);
		
		JButton button_1 = new JButton("Delete Element");
		button_1.setBounds(329, 51, 120, 25);
		getContentPane().add(button_1);
		
		JButton btnAddComment = new JButton("Add comment");
		btnAddComment.addActionListener(Router.getInstance());
		btnAddComment.setBounds(329, 84, 120, 23);
		getContentPane().add(btnAddComment);
		setSize(501, 378);
		btnAddComment.setActionCommand("_add_comment_pressed");
		
		Router.getInstance().setElemWeCameFrom(4);	// for COMMENT. we need to know what type of element we came from (in the router)
		
		comboBox.addPopupMenuListener(new PopupMenuListener() {
			public void popupMenuCanceled(PopupMenuEvent arg0) {
			}
			
			public void popupMenuWillBecomeInvisible(PopupMenuEvent arg0) {
			}
			public void popupMenuWillBecomeVisible(PopupMenuEvent arg0) {
				values=textArea.getText().split("\n");
				comboBox.setModel(new DefaultComboBoxModel(values));
				System.out.println(values.toString());
			}
		});
		
	}
	public String[] getValues() {
		return textArea.getText().split("\n");
	}
	public void setValues(String[] values) {
		this.values = values;
	}
	public void setListTypeListener(ActionListener listTypeListener ){       
		
		 butListSave.addActionListener(listTypeListener);
		 butListSave.setActionCommand("_save_List");
	}
	public JTextField getElementName() {
		return elementName;
	}
	public String getScreenName() {
		return ScreenName;
	}
	
	public String getComment() {
		return comment;
	}
	
	public void setComment(String comment) {
		this.comment = comment;
	}
}
