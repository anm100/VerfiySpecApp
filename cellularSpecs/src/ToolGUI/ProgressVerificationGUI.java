package ToolGUI;

import javax.swing.JFrame;
import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.JCheckBox;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JProgressBar;
import javax.swing.JComboBox;
import javax.swing.JSeparator;
import javax.swing.SwingConstants;

public class ProgressVerificationGUI extends JFrame{
	public ProgressVerificationGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JButton btnCancel = new JButton("Abort");
		btnCancel.setBounds(227, 218, 107, 23);
		getContentPane().add(btnCancel);
		
		JLabel lblVerifySpec = new JLabel("<Spec name> - Progress");
		lblVerifySpec.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblVerifySpec.setBounds(23, 0, 263, 45);
		getContentPane().add(lblVerifySpec);
		
		JProgressBar progressBar = new JProgressBar();
		progressBar.setBounds(51, 112, 461, 29);
		getContentPane().add(progressBar);
		
		JLabel lblThisWillTake = new JLabel("This will take a few moments ");
		lblThisWillTake.setFont(new Font("Tahoma", Font.ITALIC, 11));
		lblThisWillTake.setBounds(207, 78, 150, 23);
		getContentPane().add(lblThisWillTake);
		
		JLabel lblStatus = new JLabel("status:");
		lblStatus.setBounds(29, 194, 46, 14);
		getContentPane().add(lblStatus);
	}
}
