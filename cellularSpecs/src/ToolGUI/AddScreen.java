package ToolGUI;

import javax.swing.JFrame;

import java.awt.Color;

import javax.swing.JLabel;
import javax.swing.JTextField;

import java.awt.TextArea;
import java.awt.Button;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JOptionPane;
import javax.swing.JTextPane;
import javax.swing.JScrollPane;
import javax.swing.JButton;

import Controller.Router;

public class AddScreen extends JFrame {
	private JTextField textField;
	private AddScreen thisref=this;
	public AddScreen() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JLabel lblAddScreenDetails = new JLabel("Screen details");
		lblAddScreenDetails.setFont(new Font("Tahoma", Font.BOLD, 15));
		lblAddScreenDetails.setBounds(10, 11, 159, 20);
		getContentPane().add(lblAddScreenDetails);
		
		JLabel lblScreenName = new JLabel("Screen name:");
		lblScreenName.setBounds(10, 53, 84, 14);
		getContentPane().add(lblScreenName);
		
		textField = new JTextField();
		textField.setBounds(91, 50, 309, 20);
		getContentPane().add(textField);
		textField.setColumns(10);
		
		JLabel lblDescription = new JLabel("Description:");
		lblDescription.setBounds(10, 128, 69, 14);
		getContentPane().add(lblDescription);
		
		Button button = new Button("Save");
		button.setBounds(10, 285, 70, 22);
		getContentPane().add(button);
		
		Button button_1 = new Button("Cancel");
		button_1.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				int choise = JOptionPane.showConfirmDialog(null,
						"Are you sure you want to cancel this appointment setting", "Cancel", JOptionPane.YES_NO_OPTION,
						JOptionPane.WARNING_MESSAGE);
				if (choise == JOptionPane.YES_OPTION)
					thisref.setVisible(false);
					Router.getInstance().getMainScreenGui().setEnabled(true);
			}
		});
		button_1.setBounds(99, 285, 70, 22);
		getContentPane().add(button_1);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(91, 81, 298, 106);
		getContentPane().add(scrollPane);
		
		JTextPane textPane = new JTextPane();
		scrollPane.setViewportView(textPane);
		
		JButton button_2 = new JButton("cancel");
		button_2.setBounds(237, 206, 116, 23);
		getContentPane().add(button_2);
		
		JButton button_3 = new JButton("Save");
		button_3.setBounds(115, 206, 112, 23);
		getContentPane().add(button_3);
	}
}
