package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.JList;

import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

import javax.swing.border.LineBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;

import Controller.ElementController;
import Controller.ScreenController;
import Model.ElementType;
import Model.WorkSpace;
import our.Utils.BulidSpec;
import ui.utils.MyTableModel;

import java.awt.Color;
import java.awt.Font;

import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JSeparator;
import javax.swing.JTable;
import javax.swing.JRadioButton;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;
import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;
import java.awt.Component;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.ArrayList;

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
	private  int colNumber=3;
	private JButton butSave;
	private String ScreenName; 
	private JComboBox toScreenComboBox;
	private Button addNewCond;
	private Object[][] data = {};
	private   JTable apps_table;
	private String eName;
	
	public ButtonTypeGUI(String ScreenName,String eName)
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
		button.setBounds(226, 329, 116, 23);
		getContentPane().add(button);
		
		 butSave = new JButton("Save");
		butSave.setBounds(104, 329, 112, 23);
		getContentPane().add(butSave);
		
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

			
			JPanel panel_1 = new JPanel();
			panel_1.setBounds(10, 156, 436, 172);
			getContentPane().add(panel_1);
			panel_1.setLayout(null);
				
				JScrollPane apps_scrollPane = new JScrollPane();
				apps_scrollPane.setBounds(0, 45, 292, 117);
				panel_1.add(apps_scrollPane);
				String[] doc_columnNames = { "parameter Name", "=", "Value"};
				apps_table = new JTable();
					apps_table.setModel(new MyTableModel(doc_columnNames,data));
					apps_table.setFillsViewportHeight(false);
					apps_table.setSurrendersFocusOnKeystroke(true);
					apps_table.setShowVerticalLines(false);
					apps_table.setRowHeight(20);
					apps_table.setFont(new Font("Tahoma", Font.PLAIN, 16));
					apps_table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
					apps_scrollPane.setViewportView(apps_table);
					apps_table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
					apps_table.setBackground(Color.WHITE);
					
					
					JRadioButton radioButton = new JRadioButton("AND");
					radioButton.setBounds(298, 38, 46, 36);
					panel_1.add(radioButton);
					
					JRadioButton radioButton_1 = new JRadioButton("OR");
					radioButton_1.setBounds(346, 38, 46, 36);
					panel_1.add(radioButton_1);
					
					JLabel label = new JLabel("operator:");
					label.setBounds(312, 21, 46, 14);
					panel_1.add(label);
					
					 addNewCond = new Button("+");
					 addNewCond.setBounds(0, 21, 33, 27);
					 panel_1.add(addNewCond);
					 addNewCond.setActionCommand("_add_conditions");
					 
					 JLabel label_1 = new JLabel("  In order to move to another screen, a list of condition must be  met");
					 label_1.setBounds(0, 0, 377, 14);
					 panel_1.add(label_1);
					 if (ElementController.elementIsExist(ScreenName,eName ))
						{
							WorkSpace.getLog().debug(" filling data to ButtonTypegui");
							loadData(ElementController.getDataOfElement(ScreenName,eName)); 
						}
			        DefaultComboBoxModel cbm = new DefaultComboBoxModel(ScreenController.getScreenNameNames());
			        toScreenComboBox.setModel(cbm);
				}
				private void loadData(ArrayList <String> e) {
					elementName.setText(e.get(0));
			        DefaultComboBoxModel cbm = new DefaultComboBoxModel(ScreenController.getScreenNameNames());
			        toScreenComboBox.setModel(cbm);
			        addToTable(ElementController.getConditions(ScreenName,eName));

				}

	public String  getElementName() {
		return elementName.getText().toString();
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
		butSave.setActionCommand("_save_standart_button");
		addNewCond.addActionListener(ButtonTypeListener);

	}
	public  void addToTable(String [] st)//add new row with st value to the table 
	{
		DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
		dm.addRow(st);
	}
	public  void addToTable(String [][] st)//adding matrix to jtable 
	{
		DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
		  int row = st.length;
		  for(int i=0;i<row;i++)
		dm.addRow(st[i]);
	}
	public  void removeToTable(int index)//remove row number index
	{
		DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
		dm.removeRow(index);
	}
	public  String[] readFromTable(int index)//remove row number index
	{
		   String[] result = new String[colNumber];
		   for (int i = 0; i < colNumber; i++) {
		result[i]=apps_table.getModel().getValueAt(index, i).toString();
		   }
		   return result;
		  
	}
	public void addToTable(String paramName, String OP, String value) {
		String [] st={paramName,OP,value};
		 addToTable(st);
	}
	public int  getRowsNumber(){  
		return(apps_table.getRowCount());
	}
	
	public void addConditionListener(ActionListener listenForOperation){  
		butSave.addActionListener(listenForOperation);
	}
	
	
	public static void main(String[] args) {
		BulidSpec.build();
		ButtonTypeGUI a=new ButtonTypeGUI("aaa",null);
		a.setVisible(true);
	}

	
}
