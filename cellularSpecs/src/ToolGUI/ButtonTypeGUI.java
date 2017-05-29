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
import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;
import java.awt.Component;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JMenuBar;
import javax.swing.DropMode;
import java.awt.TextArea;
import java.awt.Button;
import java.awt.Panel;
import javax.swing.JScrollBar;
import javax.swing.ScrollPaneConstants;

public class ButtonTypeGUI extends JFrame {
	private JTextField txtUndefined;
	private JTextField elementName;
	private int i ; 
	private JButton butSave;
	private String ScreenName; 
	private JComboBox toScreenComboBox;
	private Button addNewCond;
	public ButtonTypeGUI(String ScreenName)
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
		separator.setBounds(10, 123, 418, 5);
		getContentPane().add(separator);
		
		i=0;
		setSize(464, 390);
		
		JButton button = new JButton("cancel");
		button.setBounds(226, 312, 116, 23);
		getContentPane().add(button);
		
		 butSave = new JButton("Save");
		butSave.setBounds(104, 312, 112, 23);
		getContentPane().add(butSave);
		butSave.setActionCommand("_save_standart_button");
		
		JButton btnException = new JButton("Exception");
		btnException.setBounds(10, 171, 91, 23);
		//getContentPane().add(btnException);
		
		JButton btnCondition = new JButton("condition");
		btnCondition.setBackground(Color.WHITE);
		btnCondition.setBounds(107, 171, 91, 23);
		//getContentPane().add(btnCondition);
		
		JPanel panel = new JPanel();
		panel.setBackground(Color.WHITE);
		panel.setBounds(10, 136, 311, 23);
		getContentPane().add(panel);
		panel.setLayout(null);
		
		JMenuBar bar = new JMenuBar();
		bar.setBounds(0, 0, 456, 21);
		panel.add(bar);
		bar.add(btnCondition);
		bar.add(btnException);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
		scrollPane.setBounds(20, 198, 304, 103);
		getContentPane().add(scrollPane);
		
		Panel panel_1 = new Panel();
		scrollPane.setViewportView(panel_1);
		panel_1.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("New label");
		lblNewLabel.setBounds(0, 28, 229, 14);
		panel_1.add(lblNewLabel);
		
		 addNewCond = new Button("+");
		addNewCond.setBounds(20, 170, 33, 22);
		addNewCond.setActionCommand("_add_conditions");
		getContentPane().add(addNewCond);

	   
		
			
	}

	public JTextField getElementName() {
		return elementName;
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

	public void setButtonTListener(ActionListener ButtonTypeListener ){       
		butSave.addActionListener(ButtonTypeListener);
		addNewCond.addActionListener(ButtonTypeListener);
	}

}
