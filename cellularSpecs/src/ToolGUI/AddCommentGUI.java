package ToolGUI;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import Controller.Router;
import Model.WorkSpace;

import javax.swing.JTextPane;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.JTextArea;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class AddCommentGUI extends JFrame {

	private JPanel contentPane;
	private String comment;
	JTextArea textArea;


	public AddCommentGUI() {
		setTitle("Add comment...");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 390, 255);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		
		JLabel lblComment = new JLabel("Comment:");
		lblComment.setFont(new Font("Tahoma", Font.PLAIN, 15));
		lblComment.setBounds(24, 11, 82, 23);
		contentPane.add(lblComment);
		
		textArea = new JTextArea();
		textArea.setBounds(34, 45, 310, 114);
		contentPane.add(textArea);
		
		///////////////////////////////////////////////////////////////
		JButton btnSave = new JButton("Save");
		btnSave.setActionCommand("_save_comment");
		btnSave.setBounds(66, 179, 89, 23);
		contentPane.add(btnSave);
		btnSave.addActionListener(Router.getInstance());
		
		JButton btnCancel = new JButton("Cancel");
		btnCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				setVisible(false);
			}
		});
		btnCancel.setBounds(229, 179, 89, 23);
		contentPane.add(btnCancel);
		
	}
	
	
	public String getComment(){
		return comment;
	}
	
	public void setComment(String commentToSet){
		comment = commentToSet;
	}
	
	public String getTextFromArea(){
		return textArea.getText();
	}
	
	public void setTextInArea(String text){
		textArea.setText(text);
	}
}
