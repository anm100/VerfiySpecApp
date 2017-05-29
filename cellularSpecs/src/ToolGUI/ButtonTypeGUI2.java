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

import Controller.ScreenController;

import java.awt.Color;
import java.awt.Font;

import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JSeparator;
import javax.swing.JRadioButton;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;

public class ButtonTypeGUI2 extends JFrame {
	private JTextField txtUndefined;
	private JTextField elementName;
	private int i ; 
	private JButton butSave;
	private String ScreenName; 
	private JComboBox toScreenComboBox;
	private JComboBox paramName;
	private JComboBox comboBoxVal;
	private JComboBox OpComboBox; 
	public ButtonTypeGUI2(String ScreenName)
	{
		this.ScreenName=ScreenName; 
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
		
		JLabel lblMoveTo = new JLabel("Move To : ");
		lblMoveTo.setBounds(37, 95, 57, 14);
		getContentPane().add(lblMoveTo);
		
		elementName = new JTextField();
		elementName.setBounds(104, 65, 152, 20);
		getContentPane().add(elementName);
		elementName.setColumns(10);
		
		 toScreenComboBox = new JComboBox();
		toScreenComboBox.setModel(new DefaultComboBoxModel(new String[] {"Show Screens"}));
		toScreenComboBox.setBounds(104, 92, 152, 20);
		getContentPane().add(toScreenComboBox);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(10, 144, 418, 14);
		getContentPane().add(separator);
		
		JLabel lblConditions = new JLabel("conditions:");
		lblConditions.setFont(new Font("Tahoma", Font.BOLD, 13));
		lblConditions.setBounds(20, 144, 93, 20);
		getContentPane().add(lblConditions);
 
		JButton btnAddCond = new JButton("+");
		JLabel lblParam = new JLabel("Choose param");
		lblParam.setBounds(10, 198, 74, 14);
		getContentPane().add(lblParam);
		
		 paramName = new JComboBox();
		 paramName.addItemListener(new ItemListener() {
		 	public void itemStateChanged(ItemEvent e) {
		 	}
		 });



		paramName.setBounds(73, 195, 80, 20);
		getContentPane().add(paramName);
		
		JLabel lblValue = new JLabel("value\r\n");
		lblValue.setBounds(172,198, 41, 14);
		getContentPane().add(lblValue);
		
		 comboBoxVal = new JComboBox();
		comboBoxVal.setBounds(252, 195, 80, 20);
		getContentPane().add(comboBoxVal);
		i=0;
		setSize(464, 390);
		btnAddCond.addActionListener(new ActionListener() {
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
		btnAddCond.setBounds(98, 144, 41, 23);
		getContentPane().add(btnAddCond);
		
		OpComboBox = new JComboBox();
		OpComboBox.setModel(new DefaultComboBoxModel(new String[] {"=", "<>", ">", "<"}));
		OpComboBox.setBounds(202, 195, 41, 20);
		getContentPane().add(OpComboBox);
		
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
		
		 butSave = new JButton("Save");
		butSave.setBounds(104, 312, 112, 23);
		getContentPane().add(butSave);
			
	}

	public JTextField getElementName() {
		return elementName;
	}
	public String getParmName(){
		return (String) paramName.getSelectedItem(); 
	}
	public String getParmVal(){
		return (String) comboBoxVal.getSelectedItem(); 
	}
	public String getCondopt(){
		return (String) OpComboBox.getSelectedItem(); 
	}
	public String getMoveTo(){
		return (String) toScreenComboBox.getSelectedItem(); 
	}
	
	
	public String getScreenName() {
		return ScreenName;
	}
	public void addTooScreenComboBox(String[] arr) {
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(arr);
        toScreenComboBox.setModel(cbm);
		//this.toScreenComboBox = toScreenComboBox;
	}
	public void addParamsNameToComboBox(String[] arr) {
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(arr);
        paramName.setModel(cbm);
		//this.paramName = paramName;
	}
	public void addParamsValuesToComboBox(String[] arr) {
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(arr);
        comboBoxVal.setModel(cbm);
		//this.toScreenComboBox = toScreenComboBox;
	}
	public void setButtonTListener(ActionListener ButtonTypeListener ){       
		butSave.addActionListener(ButtonTypeListener);
		butSave.setActionCommand("_save_standart_button");
	}
	public void setParamChangeListener(ItemListener ButtonTypeListener )
	{       
		paramName.addItemListener(ButtonTypeListener);
		
	}
}
