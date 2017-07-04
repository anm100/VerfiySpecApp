package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;

import java.awt.event.ActionListener;

import javax.swing.table.DefaultTableModel;

import Controller.ElementController;
import Controller.Router;
import Controller.ScreenController;
import Model.WorkSpace;
import our.Utils.BulidSpec;
import ui.utils.MyTableModel;

import java.awt.Color;
import java.awt.Font;

import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JSeparator;
import javax.swing.JTable;
import javax.swing.JRadioButton;

import java.util.ArrayList;

import javax.swing.JMenuBar;

import java.awt.Button;
import java.awt.event.ActionEvent;


public class ButtonTypeGUI extends JFrame {
	private JTextField elementName;
	private int i ; 
	private  int colNumber=3;
	private JButton butSave;
	private String ScreenName; 
	private JComboBox toScreenComboBox;
	private Button addNewCond;
	private Object[][] data = {};
	private   JTable apps_table;
	JTextArea exception;
	public ButtonTypeGUI(String ScreenName,String eName)
	{
		this.ScreenName=ScreenName; 
		setTitle(ScreenName+"-Standard Button" );
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		setLocationRelativeTo(null);

		
		JLabel lblOnoff = new JLabel(ScreenName+"- Standard Button ");
		lblOnoff.setFont(new Font("Arial", Font.BOLD, 22));
		lblOnoff.setBounds(11, 21, 348, 36);
		getContentPane().add(lblOnoff);
		
		JLabel lblName = new JLabel("Name:");
		lblName.setBounds(37, 68, 46, 14);
		getContentPane().add(lblName);
		
		JLabel lblMoveTo = new JLabel("Move To: ");
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
		
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		tabbedPane.setBounds(20, 133, 435, 282);
		getContentPane().add(tabbedPane);

		
		i=0;
		setSize(472, 488);
		
		JButton button = new JButton("cancel");
		button.setBounds(236, 426, 116, 23);
		getContentPane().add(button);
		
		 butSave = new JButton("Save");
		butSave.setBounds(114, 426, 112, 23);
		getContentPane().add(butSave);

			
			JPanel panel_1 = new JPanel();
			panel_1.setBounds(10, 156, 436, 172);
			tabbedPane.addTab("Reqular Transation", null, panel_1, null);
			panel_1.setLayout(null);
				
				JScrollPane apps_scrollPane = new JScrollPane();
				apps_scrollPane.setBounds(0, 45, 344, 224);
				panel_1.add(apps_scrollPane);
				String[] doc_columnNames = { "Parameter Name", "Opt", "Value"};
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
					radioButton.setBounds(346, 90, 78, 36);
					panel_1.add(radioButton);
					
					JRadioButton radioButton_1 = new JRadioButton("OR");
					radioButton_1.setBounds(346, 62, 78, 36);
					panel_1.add(radioButton_1);
					
					JLabel lblChooseOperator = new JLabel("Operator:");
					lblChooseOperator.setBounds(346, 45, 78, 14);
					panel_1.add(lblChooseOperator);
					
					 addNewCond = new Button("Add Condition");
					 addNewCond.addActionListener(new ActionListener() {
					 	public void actionPerformed(ActionEvent e) {
					 	}
					 });
					 addNewCond.setBounds(10, 4, 95, 22);
					 panel_1.add(addNewCond);
					 addNewCond.setActionCommand("_add_conditions");
					 
					 JLabel lblSetAList = new JLabel("Set a list of condtions to move to another screen ");
					 lblSetAList.setBounds(4, 32, 420, 14);
					 panel_1.add(lblSetAList);
					 JPanel panel = new JPanel();
					 panel.setLayout(null);
					 tabbedPane.addTab("Exception", null, panel, null);
					 
					 JLabel lblExceptionForParamter = new JLabel("Exception for paramter (optional)");
					 lblExceptionForParamter.setFont(new Font("Microsoft New Tai Lue", Font.BOLD, 14));
					 lblExceptionForParamter.setBounds(21, 11, 284, 14);
					 panel.add(lblExceptionForParamter);
					 
					 JLabel lblWriteExceptionFor = new JLabel("Write exception for this param");
					 lblWriteExceptionFor.setBounds(20, 268, 190, 14);
					 panel.add(lblWriteExceptionFor);
					 
					 JScrollPane scrollPane = new JScrollPane();
					 scrollPane.setBounds(10, 36, 410, 192);
					 panel.add(scrollPane);
					 
					 exception = new JTextArea();
					 scrollPane.setViewportView(exception);
					 if (ElementController.elementIsExist(ScreenName,eName ))
						{
							WorkSpace.getLog().debug(" filling data to ButtonTypegui");
							loadData(ElementController.getDataOfElement(ScreenName,eName), eName); 
						}
			        DefaultComboBoxModel cbm = new DefaultComboBoxModel(ScreenController.getScreenNameNames());
			        toScreenComboBox.setModel(cbm);
			        
			        JButton btnNewButton = new JButton("Delete Element");
			        btnNewButton.setBounds(10, 4, 95, 22);
			        getContentPane().add(btnNewButton);
				}
				private void loadData(ArrayList <String> e,String eName) {
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
	public void setEditButtonTListener(ActionListener ButtonTypeListener ){       
		butSave.addActionListener(ButtonTypeListener);
		butSave.setActionCommand("_Edit_standart_button");
		addNewCond.addActionListener(ButtonTypeListener);
	}
}
