package ToolGUI;

import javax.swing.ButtonGroup;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.border.LineBorder;
import javax.swing.plaf.TextUI;
import javax.swing.table.DefaultTableModel;

import org.omg.PortableServer.ServantActivatorOperations;

import ui.utils.MyTableModel;

import java.awt.Color;
import java.awt.Font;

import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JSeparator;
import javax.swing.JTable;
import javax.swing.UIManager;

import Controller.ElementController;
import Controller.ScreenController;
import Model.ElementType;
import Model.WorkSpace;

import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;
import java.util.ArrayList;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;

public class OnOfGUI extends JFrame {
	protected JTextField txtUndefined;
	protected JTextField elementName;
	protected JButton AddAction;
	protected  int  x=0,y=0,hight=143,width=30;
	protected static JButton btnSave;
	private JComboBox parameterName;
	private String defaultValue=new String("OFF");
	private JRadioButton rdbtnOff,rdbtnOn ;
	private  JTable apps_table;
	private  int colNumber=3;
	private Object[][] data = {};
	String ScreenName; 
	private JTextField txtNewParameterName;
	private String parameterName1;
	public String getParameterName1() {
		return parameterName1;
	}
	public void setParameterName1(String parameterName1) {
		this.parameterName1 = parameterName1=txtNewParameterName.getText().toString();;
	}
	public OnOfGUI(String ScreenName,String eName)
	{
	
		this.ScreenName=ScreenName; 
		setTitle("ON-OFF");
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		
		JLabel lblOnoff = new JLabel(ScreenName+"- ONOFF");
		lblOnoff.setFont(new Font("Arial", Font.BOLD, 22));
		lblOnoff.setBounds(20, 11, 361, 36);
		getContentPane().add(lblOnoff);
		
		JLabel lblName = new JLabel("Element name:");
		lblName.setBounds(30, 68, 78, 14);
		getContentPane().add(lblName);
		
		JLabel lblDefaulval = new JLabel("DefaultVal:");
		lblDefaulval.setBounds(30, 120, 64, 14);
		getContentPane().add(lblDefaulval);
		
		elementName = new JTextField();
		elementName.setBounds(118, 65, 152, 20);
		getContentPane().add(elementName);
		elementName.setColumns(10);

		parameterName = new JComboBox();
		parameterName.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
				if((arg0.getItem().toString().equals("New..")))
				{
					txtNewParameterName.setVisible(true);
					txtNewParameterName.setText("parameter name");
					getStyle();
				}
				else
				{
					txtNewParameterName.setVisible(false);
					getStyle();
					parameterName1=arg0.getItem().toString();
				}
			}

			private void getStyle() {
				// TODO Auto-generated method stub
				
			}
		});
		
		parameterName.setModel(new DefaultComboBoxModel(new String[] {"new parameter"}));
		parameterName.setBounds(118, 89, 152, 22);
		getContentPane().add(parameterName);
		setSize(501, 367);
		
		 btnSave = new JButton("Save");
		 btnSave.setActionCommand("_save_on_off");
			
		btnSave.setBounds(20, 312, 112, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("Cancel");
		btnCancel.setBounds(192, 312, 116, 23);
		getContentPane().add(btnCancel);
		
		 rdbtnOn = new JRadioButton("ON");
		rdbtnOn.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent e) {
				if(rdbtnOn.isSelected())
					setDefaultValue(rdbtnOn.getText());
				}
		});

		rdbtnOn.setSelected(false);
		rdbtnOn.setBounds(118, 113, 72, 28);
		getContentPane().add(rdbtnOn);
		
		rdbtnOff = new JRadioButton("OFF");
		rdbtnOff.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
			if(rdbtnOff.isSelected())
				setDefaultValue(rdbtnOff.getText());
			}
		});
		rdbtnOff.setSelected(true);
		setDefaultValue(rdbtnOn.getText());
		rdbtnOff.setBounds(192, 113, 78, 28);
		getContentPane().add(rdbtnOff);
		ButtonGroup group = new ButtonGroup();

		group.add(rdbtnOn);
		group.add(rdbtnOff);
		
		
		JSeparator separator = new JSeparator();
		separator.setBounds(30, 145, 445, 2);
		getContentPane().add(separator);
		ImageIcon imageForOne = new ImageIcon(getClass().getResource("../add.png"));
		 AddAction = new JButton("Add action",imageForOne);
		AddAction.setFont(new Font("Tahoma", Font.BOLD, 11));
		AddAction.setHorizontalAlignment(SwingConstants.LEADING);
		AddAction.setBackground(UIManager.getColor("Button.highlight"));
		AddAction.setActionCommand("_add_Action_OnOff");
		AddAction.setBounds(20, 145, 307, 28);
		getContentPane().add(AddAction);
		
		JLabel lblNewLabel_1 = new JLabel("Parameter name");
		lblNewLabel_1.setBounds(29, 93, 79, 14);
		getContentPane().add(lblNewLabel_1);
		setSize(501, 378);
		
		JScrollPane apps_scrollPane = new JScrollPane();
		apps_scrollPane.setBounds(10, 184, 292, 117);
		getContentPane().add(apps_scrollPane);
		String[] doc_columnNames = { "action","condition"};
		apps_table = new JTable();
			apps_table.setModel(new MyTableModel(doc_columnNames,data));
			apps_table.setFillsViewportHeight(false);
			apps_table.setSurrendersFocusOnKeystroke(true);
			apps_table.setShowVerticalLines(false);
			apps_table.setRowHeight(20);
			apps_table.setFont(new Font("Tahoma", Font.PLAIN, 16));
			
			apps_scrollPane.setViewportView(apps_table);
			apps_table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
			apps_table.setBackground(Color.WHITE);
			
			txtNewParameterName = new JTextField();
			
			getContentPane().add(txtNewParameterName);
			txtNewParameterName.setForeground(Color.GRAY);
			txtNewParameterName.setText("parameter name");
			txtNewParameterName.setVisible(false);
			txtNewParameterName.setBounds(280, 90, 152, 20);
			txtNewParameterName.setToolTipText("add new Parameter");
			txtNewParameterName.addFocusListener(new FocusListener() {
		
				public void focusGained(FocusEvent arg0) {
					txtNewParameterName.setForeground(Color.black);
					txtNewParameterName.setText("");
				}

				@Override
				public void focusLost(FocusEvent arg0) {
					// TODO Auto-generated method stub
					txtNewParameterName.setText("s");
					
				}
			});



			
			if (ElementController.elementIsExist(ScreenName,eName ))
			{
				WorkSpace.getLog().debug(" filling data to this gui");
				loadData(ElementController.getDataOfElement(ScreenName,eName),eName) ; 
			}
		
	}
	private void loadData(	ArrayList <String> e,String eName) {
		elementName.setText(e.get(0));
		setParameterName(ScreenController.getParams(ElementType.getOnOffType(), ScreenName,e.get(1)));
		parameterName.setSelectedItem(e.get(1));
		setOnOff(e.get(2));
		addToTable(ElementController.getActrion(getScreenName(),eName));
		btnSave.setActionCommand("_edit_on_off");
	}
	protected JLabel CreateLabel(String string, int x2, int y2, int hight2, int width2) {
	       JLabel lblNewLabel = new JLabel(string);
	        lblNewLabel.setBorder(new LineBorder(new Color(0, 0, 0), 1));
	        lblNewLabel.setBounds(x2, y2, hight2, width2);
	      lblNewLabel.setText(" "+elementName.getText().toString()+"");
	      return lblNewLabel;
		// TODO Auto-generated method stub
	}
	
	public String getElementName() {
		return elementName.getText().toString();
	}
	
	public String getScreenName() {
		return ScreenName;
	}
	public String getDefaultValue() {
		return this.defaultValue;
	}
	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}
	public String getParameterName() {
		return parameterName1;
	}
	public void setParameterName(String []  parameterNames) {
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterNames);
        parameterName.setModel(cbm);
	}
	public void setOnOff(String defultvalue) {
	if(getDefaultValue().equals(defultvalue))
		rdbtnOff.setSelected(true);
	else
		rdbtnOn.setSelected(true);
		
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
	public  void addToTable(String [] st)//add new row with st value to the table 
	{
		DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
		dm.addRow(st);
	}
	public  void addToTable(String [][] st)//adding matrix to jtable 
	{
		WorkSpace.getLog().debug("add conditions to table");
		DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
		  int row = st.length;
		  for(int i=0;i<row;i++)
		dm.addRow(st[i]);
	}
	public int  getRowsNumber(){  
		return(apps_table.getRowCount());
	}
	public void setOnOffListener(ActionListener OnOfTypeListener ){       
		btnSave.addActionListener(OnOfTypeListener);
		AddAction.addActionListener(OnOfTypeListener);

	}
	public void setParamChangeListener(ItemListener OnOfTypeListener)
	{
	parameterName.addItemListener(OnOfTypeListener);
	}
}
