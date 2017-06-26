package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JTextArea;
import javax.swing.JTextPane;
import javax.swing.JLabel;

public class ResultGui extends JFrame {

	private JTextArea txtResult;
	public ResultGui()
	{
		getContentPane().setLayout(null);
		setSize(650,380);
		 txtResult = new JTextArea();
		txtResult.setBounds(28, 43, 569, 243);
		txtResult.setLineWrap(true);
		txtResult.setWrapStyleWord(true);
		getContentPane().add(txtResult);
		
		JLabel lblNewLabel = new JLabel("Verifcation Results:");
		lblNewLabel.setBounds(28, 11, 291, 14);
		getContentPane().add(lblNewLabel);
	}
	public void addToResult(String st)
	{
		txtResult.append(st+"\n");
	}
}
