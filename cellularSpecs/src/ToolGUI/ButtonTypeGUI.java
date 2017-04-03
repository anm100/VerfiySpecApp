package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JList;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import javax.swing.border.LineBorder;
import java.awt.Color;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JSeparator;
import javax.swing.JRadioButton;

public class ButtonTypeGUI extends JFrame {
	private JTextField txtUndefined;
	private JTextField textField;
	private int i ; 
	public ButtonTypeGUI(String ScreenName)
	{
		setTitle(ScreenName+"standart button" );
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JLabel lblOnoff = new JLabel(ScreenName+"-standart button ");
		lblOnoff.setFont(new Font("Arial", Font.BOLD, 22));
		lblOnoff.setBounds(20, 11, 361, 36);
		getContentPane().add(lblOnoff);
		
		JLabel lblName = new JLabel("Name:");
		lblName.setBounds(37, 68, 46, 14);
		getContentPane().add(lblName);
		
		JLabel lblDetails = new JLabel("Move To : ");
		lblDetails.setBounds(37, 95, 57, 14);
		getContentPane().add(lblDetails);
		
		textField = new JTextField();
		textField.setBounds(104, 65, 152, 20);
		getContentPane().add(textField);
		textField.setColumns(10);
		
		JComboBox comboBox_1 = new JComboBox();
		comboBox_1.setModel(new DefaultComboBoxModel(new String[] {"Show Screens"}));
		comboBox_1.setBounds(104, 92, 152, 20);
		getContentPane().add(comboBox_1);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 144, 418, 14);
		getContentPane().add(separator);
		
		JLabel lblConditions = new JLabel("conditions:");
		lblConditions.setFont(new Font("Tahoma", Font.BOLD, 13));
		lblConditions.setBounds(20, 144, 93, 20);
		getContentPane().add(lblConditions);
 
		JButton btnNewButton = new JButton("+");
		JLabel lblElement = new JLabel("Choose param");
		lblElement.setBounds(10, 198, 74, 14);
		getContentPane().add(lblElement);
		
		JComboBox comboBox_2 = new JComboBox();
		comboBox_2.setBounds(82, 195, 80, 20);
		getContentPane().add(comboBox_2);
		
		JLabel lblValue = new JLabel("value\r\n");
		lblValue.setBounds(172,198, 41, 14);
		getContentPane().add(lblValue);
		
		JComboBox comboBox_3 = new JComboBox();
		comboBox_3.setBounds(252, 195, 80, 20);
		getContentPane().add(comboBox_3);
		i=0;
		setSize(464, 390);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
	
				JLabel lblElement = new JLabel("element:");
				lblElement.setBounds(48, 222+i, 46, 14);
				getContentPane().add(lblElement);
				
				JComboBox comboBox_2 = new JComboBox();
				comboBox_2.setBounds(104, 219+i, 80, 20);
				getContentPane().add(comboBox_2);
				
				JLabel lblValue = new JLabel("value:");
				lblValue.setBounds(210,222+i, 46, 14);
				getContentPane().add(lblValue);
				
				JComboBox comboBox_3 = new JComboBox();
				comboBox_3.setBounds(256, 219+i, 93, 20);
				getContentPane().add(comboBox_3);
				i+=30;
			       repaint();
			      revalidate();
				
				
			}
		});
		btnNewButton.setBounds(98, 144, 41, 23);
		getContentPane().add(btnNewButton);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setModel(new DefaultComboBoxModel(new String[] {"=", "<>", ">", "<"}));
		comboBox.setBounds(202, 195, 41, 20);
		getContentPane().add(comboBox);
		
		JLabel lblOperator = new JLabel("operator:");
		lblOperator.setBounds(263, 155, 46, 14);
		getContentPane().add(lblOperator);
		
		JRadioButton rdbtnAnd = new JRadioButton("AND");
		rdbtnAnd.setBounds(325, 144, 46, 36);
		getContentPane().add(rdbtnAnd);
		
		JRadioButton rdbtnOr = new JRadioButton("OR");
		rdbtnOr.setBounds(376, 144, 46, 36);
		getContentPane().add(rdbtnOr);
		
		JButton button = new JButton("cancel");
		button.setBounds(226, 312, 116, 23);
		getContentPane().add(button);
		
		JButton button_1 = new JButton("Save");
		button_1.setBounds(104, 312, 112, 23);
		getContentPane().add(button_1);
		

		
	}
}
