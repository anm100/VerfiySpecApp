package ToolGUI;

import javax.swing.JFrame;

import java.awt.Color;

import javax.swing.JLabel;
import javax.swing.JTextField;

import java.awt.Dimension;
import java.awt.Button;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionListener;

import javax.swing.JTextPane;
import javax.swing.JScrollPane;
import javax.swing.JButton;

import Model.WorkSpace;

public class AddScreenGUI extends JFrame {
	private JTextField ScreenName;
	private JButton bnSave;
	private JTextPane description;
	public AddScreenGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		setLocationRelativeTo(null);
		JLabel lblAddScreenDetails = new JLabel("Screen details");
		lblAddScreenDetails.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblAddScreenDetails.setBounds(10, 11, 159, 20);
		getContentPane().add(lblAddScreenDetails);
		
		JLabel lblScreenName = new JLabel("Screen name:");
		lblScreenName.setBounds(10, 53, 84, 14);
		getContentPane().add(lblScreenName);
		
		ScreenName = new JTextField("Screen"+WorkSpace.numScreen++);
		ScreenName.setBounds(91, 50, 309, 20);
		getContentPane().add(ScreenName);
		ScreenName.setColumns(10);
		
		JLabel lblDescription = new JLabel("Description:");
		lblDescription.setBounds(10, 128, 69, 14);
		getContentPane().add(lblDescription);
		
		Button button = new Button("Save");
		button.setBounds(10, 285, 70, 22);
		getContentPane().add(button);
		
		Button button_1 = new Button("Cancel");
		button_1.setBounds(99, 285, 70, 22);
		getContentPane().add(button_1);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(91, 81, 298, 106);
		getContentPane().add(scrollPane);
		
		 description = new JTextPane();
		scrollPane.setViewportView(description);
		
		JButton button_2 = new JButton("cancel");
		button_2.setBounds(237, 206, 116, 23);
		getContentPane().add(button_2);
		
		 bnSave = new JButton("Save");
		bnSave.setBounds(115, 206, 112, 23);
		getContentPane().add(bnSave);
		
		Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
		setSize(400, 300);
	    int x = (int) ((dimension.getWidth() - getWidth()) / 6);
	    int y = (int) ((dimension.getHeight() - getHeight()) / 6);
	    setLocation(x, y);
	}
	
	public JTextField getScreenName() {
		return ScreenName;
	}

	public void setScreenName(String screenName) {
		ScreenName.setText(screenName); }

	public JTextPane getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description.setText(description); 
	}

	public void addScreenListener(ActionListener listenForOperation){       
		bnSave.addActionListener(listenForOperation);
		bnSave.setActionCommand("_save_add_screen");
}
	public void editScreenListener(ActionListener listenForOperation){       
		bnSave.addActionListener(listenForOperation);
		bnSave.setActionCommand("_save_edit_screen");
}

}
