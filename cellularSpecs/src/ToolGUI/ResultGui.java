package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JTextArea;
import javax.swing.JTextPane;
import javax.swing.JLabel;
import javax.swing.JScrollPane;

public class ResultGui extends JFrame {

	private JTextArea txtResult;
	public ResultGui()
	{
		getContentPane().setLayout(null);
		setSize(1062,602);
		
		JLabel lblNewLabel = new JLabel("Verifcation Results:");
		lblNewLabel.setBounds(28, 11, 291, 14);
		getContentPane().add(lblNewLabel);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(28, 43, 1002, 456);
		getContentPane().add(scrollPane);
		txtResult = new JTextArea();
		scrollPane.setViewportView(txtResult);
		txtResult.setLineWrap(true);
		txtResult.setWrapStyleWord(true);
	}
	public void addToResult(String reqid, String req, String result)
	{
		txtResult.append(reqid+"\n"+req+"\n"+result+"\n\n");
	}
}
