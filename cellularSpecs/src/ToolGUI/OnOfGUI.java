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
import java.awt.TextField;

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
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeEvent;
import javax.swing.JPanel;
import javax.swing.JMenuBar;
import java.awt.TextArea;
import java.awt.Button;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class OnOfGUI extends JFrame implements ActionListener {
	protected JTextField txtUndefined;
	protected JTextField elementName;
	protected  int  x=0,y=0,hight=143,width=30;
	protected static JButton btnSave;
	private JComboBox ComboparameterNames;
	private String defaultValue;;
	private JRadioButton rdbtnOff,rdbtnOn ;
	private  int colNumber=3;
	private Object[][] data = {};
	String ScreenName; 
	private JTextField ParameterName;
	private JLabel lblNewLabel_2;
	private JLabel lblNewLabel_3;
	private ArrayList<String> On_To_Off_Condition;
	private ArrayList<String>  Off_To_On_Condition;
	private ArrayList<String> On_To_Off_Action;
	private ArrayList<String>  Off_To_On_Action;
	private TextArea textAreaOnToOff;
	private TextArea textAreaOffToON;
	private  AddConditonGui addconditonGui;
	private AddActionGUI addactionGui;
	private String switchTo="";
	private EditReomveConditionGUI edRmCon;
	private String on=ElementType.getOn();
	private String off=ElementType.getOff();
	private TextArea ActionAreaOnToOff ;
	private TextArea ActionAreaOffToON;
	
	public OnOfGUI(String ScreenName,String eName)
	{
		On_To_Off_Condition=new ArrayList<String>();
		Off_To_On_Condition=new ArrayList<String>();
		On_To_Off_Action=new ArrayList<String>();
		Off_To_On_Action=new ArrayList<String>();
		this.ScreenName=ScreenName; 
		setTitle("ON-OFF");
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		lblNewLabel_3 = new JLabel("New label");
		lblNewLabel_3.setFont(new Font("Tahoma", Font.PLAIN, 10));
		 lblNewLabel_2 = new JLabel("New label");
		 lblNewLabel_2.setFont(new Font("Tahoma", Font.PLAIN, 10));
		JLabel lblOnoff = new JLabel(ScreenName+"- ONOFF");
		lblOnoff.setFont(new Font("Arial", Font.BOLD, 22));
		lblOnoff.setBounds(30, 11, 361, 36);
		getContentPane().add(lblOnoff);
		
		JLabel lblName = new JLabel("Element name:");
		lblName.setBounds(30, 68, 78, 14);
		getContentPane().add(lblName);
		
		JLabel lblDefaulval = new JLabel("DefaultVal:");
		lblDefaulval.setBounds(30, 120, 64, 14);
		getContentPane().add(lblDefaulval);
		
		elementName = new JTextField();
		elementName.addPropertyChangeListener(new PropertyChangeListener() {
			public void propertyChange(PropertyChangeEvent arg0) {
				lblNewLabel_2.setVisible(false);
			}
		});
		elementName.setBounds(118, 65, 152, 20);
		getContentPane().add(elementName);
		elementName.setColumns(10);

		ComboparameterNames = new JComboBox();
		ComboparameterNames.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
				if((arg0.getItem().toString().equals("New..")))
				{
					ParameterName.setVisible(true);
					ParameterName.setText("parameter name");
				}
				else
				{
					ParameterName.setVisible(false);
					lblNewLabel_3.setVisible(false);
					ParameterName.setText(arg0.getItem().toString());
				}
			}
		});
		ComboparameterNames.setBounds(118, 89, 152, 22);
		getContentPane().add(ComboparameterNames);
	
		
		 btnSave = new JButton("Save");
		 
		 btnSave.setActionCommand("_save_on_off");
			
		btnSave.setBounds(118, 339, 112, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("Cancel");
		btnCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
		 	//	edRmCon=new EditReomveConditionGUI();
		 		edRmCon.setVisible(true);
			}
		});
		btnCancel.setBounds(305, 339, 116, 23);
		getContentPane().add(btnCancel);
		rdbtnOff = new JRadioButton("OFF");
		rdbtnOff.setSelected(true);
		setDefaultValue(rdbtnOff.getText());
		 rdbtnOn = new JRadioButton("ON");
		rdbtnOn.setSelected(false);
		rdbtnOn.setBounds(118, 113, 72, 28);
		getContentPane().add(rdbtnOn);
		rdbtnOff.setBounds(192, 113, 78, 28);
		getContentPane().add(rdbtnOff);
		ButtonGroup group = new ButtonGroup();
		group.add(rdbtnOn);
		group.add(rdbtnOff);
		
		rdbtnOn.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent e) {
				if(rdbtnOn.isSelected())
					setDefaultValue(rdbtnOn.getText());
				}
		});

		rdbtnOff.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
			if(rdbtnOff.isSelected())
				setDefaultValue(rdbtnOff.getText());
			}
		});
		ImageIcon imageForOne = new ImageIcon(getClass().getResource("../add.png"));
		
		JLabel lblNewLabel_1 = new JLabel("Parameter name");
		lblNewLabel_1.setBounds(29, 93, 79, 14);
		getContentPane().add(lblNewLabel_1);
		setSize(600, 400);
			
			ParameterName = new JTextField();
			ParameterName.addPropertyChangeListener(new PropertyChangeListener() {
				public void propertyChange(PropertyChangeEvent arg0) {
					lblNewLabel_3.setVisible(false);
				}
			});
			
			getContentPane().add(ParameterName);
			ParameterName.setForeground(Color.GRAY);
			ParameterName.setText("parameter name");
			ParameterName.setVisible(true);
			ParameterName.setBounds(280, 90, 152, 20);
			ParameterName.setToolTipText("add new Parameter");
			

			 lblNewLabel_2.setVisible(false);
			lblNewLabel_2.setForeground(Color.RED);
			lblNewLabel_2.setBounds(280, 68, 184, 14);
			getContentPane().add(lblNewLabel_2);
			
			 
			 lblNewLabel_3.setVisible(false);
			lblNewLabel_3.setForeground(Color.RED);
			lblNewLabel_3.setBounds(281, 113, 194, 14);
			getContentPane().add(lblNewLabel_3);
			String[] doc_columnNames = { "ON->OFF","OFF->ON"};
				
				JPanel panel_1 = new JPanel();
				panel_1.setBounds(30, 169, 552, 159);
				getContentPane().add(panel_1);
				panel_1.setLayout(null);
				
				JLabel lblOnoff_1 = new JLabel("ON->OFF");
				lblOnoff_1.setBounds(10, 11, 57, 14);
				panel_1.add(lblOnoff_1);
				
				JLabel lblConditions = new JLabel("Conditions:");
				lblConditions.setBounds(10, 36, 62, 14);
				panel_1.add(lblConditions);
				
				JLabel lblActrions = new JLabel("Actions :");
				lblActrions.setBounds(10, 87, 57, 14);
				panel_1.add(lblActrions);
				
				 textAreaOnToOff = new TextArea("",5,100,TextArea.SCROLLBARS_NONE);
				 textAreaOnToOff.setEditable(false);
				 textAreaOnToOff.addMouseListener(new MouseAdapter() {
				 	@Override
				 	public void mouseClicked(MouseEvent arg0) {
				 		
				 		System.out.println("2");
				 	//	edRmCon=new EditReomveConditionGUI();
				 	//	edRmCon.setVisible(true);
				 	}
				 });
				textAreaOnToOff.setBounds(73, 31, 190, 50);
				panel_1.add(textAreaOnToOff);
				
				 ActionAreaOnToOff = new TextArea("", 5, 100, TextArea.SCROLLBARS_NONE);
				 ActionAreaOnToOff.addMouseListener(new MouseAdapter() {
				 	@Override
				 	public void mouseClicked(MouseEvent arg0) {
				 		edRmCon=new EditReomveConditionGUI(On_To_Off_Action);
				 	}
				 });
				ActionAreaOnToOff.setEditable(false);
				ActionAreaOnToOff.setBounds(73, 87, 190, 55);
				panel_1.add(ActionAreaOnToOff);
				
				
						
						
						JSeparator separator = new JSeparator();
						separator.setBounds(281, 0, 2, 159);
						panel_1.add(separator);
						separator.setOrientation(SwingConstants.VERTICAL);
						separator.setBackground(Color.RED);
		
						ActionAreaOffToON = new TextArea("", 5, 100, TextArea.SCROLLBARS_NONE);
						ActionAreaOffToON.setEnabled(false);
						ActionAreaOffToON.setEditable(false);
						ActionAreaOffToON.setBounds(352, 87, 190, 55);
						panel_1.add(ActionAreaOffToON);
						
						 textAreaOffToON = new TextArea("", 5, 100, TextArea.SCROLLBARS_NONE);
						textAreaOffToON.setEditable(false);
						textAreaOffToON.setBounds(352, 31, 190, 50);
						panel_1.add(textAreaOffToON);
						
						JLabel label = new JLabel("Actions :");
						label.setBounds(289, 87, 253, 14);
						panel_1.add(label);
						
						JLabel label_1 = new JLabel("Conditions:");
						label_1.setBounds(289, 36, 253, 14);
						panel_1.add(label_1);
						
						JLabel lblOffon = new JLabel("OFF->ON");
						lblOffon.setBounds(289, 11, 51, 14);
						panel_1.add(lblOffon);
						
						Button button_1 = new Button("Add Condition");
						button_1.setActionCommand("_add_condition_ON_To_Off");
						button_1.addActionListener(this);
						button_1.setBounds(72, 0, 81, 22);
						panel_1.add(button_1);
						
						Button button_3 = new Button("Add Condition");
						button_3.setActionCommand("_add_condition_Off_To_On");
						button_3.addActionListener(this);
						button_3.setBounds(350, 0, 81, 22);
						panel_1.add(button_3);
						
						Button button_2 = new Button("Add Action");
						button_2.setBounds(457, 0, 70, 22);
						panel_1.add(button_2);
						button_2.setActionCommand("_add_action_Off_To_On");
						button_2.addActionListener(this);
						
						Button button = new Button("Add Action");
						button.setBounds(159, 0, 70, 22);
						panel_1.add(button);
						button.setActionCommand("_add_action_ON_To_Off");
						button.addActionListener(this);
				
				JPanel panel = new JPanel();
				panel.setBounds(30, 145, 552, 22);
				getContentPane().add(panel);
				panel.setLayout(null);
				
				JMenuBar menuBar = new JMenuBar();
				menuBar.setBounds(0, 0, 551, 21);
				panel.add(menuBar);
				
				JButton btnNewButton = new JButton("transition");
				menuBar.add(btnNewButton);
				btnNewButton.setBackground(Color.WHITE);
				
				JButton btnNewButton_1 = new JButton("Exception");
				menuBar.add(btnNewButton_1);
				btnNewButton_1.setBackground(Color.WHITE);
				
				JSeparator separator_1 = new JSeparator();
				separator_1.setBackground(Color.RED);
				separator_1.setForeground(Color.RED);
				separator_1.setOrientation(SwingConstants.VERTICAL);
				separator_1.setBounds(50, 58, 445, 2);
				getContentPane().add(separator_1);
			ParameterName.addFocusListener(new FocusListener() {
		
				public void focusGained(FocusEvent arg0) {
					ParameterName.setForeground(Color.black);
					ParameterName.setText("");
				}

				@Override
				public void focusLost(FocusEvent arg0) {
					
				}
			});



			
			if (ElementController.elementIsExist(ScreenName,eName ))
			{
				WorkSpace.getLog().debug(" filling data to this gui");
				loadData(ElementController.getDataOfElement(ScreenName,eName),eName) ; 
			}
		
	}
	private void loadData(	ArrayList <String> dataOfelement,String eName) {
		elementName.setText(dataOfelement.get(0));
		setParameterName(ScreenController.getParams(ElementType.getOnOffType(), ScreenName,dataOfelement.get(1),dataOfelement.get(0)));
		ComboparameterNames.setSelectedItem(dataOfelement.get(1));
		setOnOff(dataOfelement.get(2));
		//addToTable(ElementController.getActrion(getScreenName(),eName));
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
	public JLabel getLblNewLabel_3() {
		return lblNewLabel_3;
	}
	public void setLblNewLabel_3(String hint) {
		this.lblNewLabel_3.setText(hint);
		this.lblNewLabel_3.setVisible(true);;
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
	public void setParameterName(String []  parameterNames) {		
        DefaultComboBoxModel cbm = new DefaultComboBoxModel(parameterNames);
        ComboparameterNames.setModel(cbm);
	}
	public void setOnOff(String defultval) {
	if(defultval.equals("OFF"))
	{
		rdbtnOff.setSelected(true);
		setDefaultValue(rdbtnOff.getText());
	}
	else
		rdbtnOn.setSelected(true);
	setDefaultValue(rdbtnOn.getText());
	}

	public void setOnOffListener(ActionListener OnOfTypeListener ){       
		btnSave.addActionListener(OnOfTypeListener);
	}
	public void setParamChangeListener(ItemListener OnOfTypeListener)
	{
	ComboparameterNames.addItemListener(OnOfTypeListener);
	}
	public JLabel getLblNewLabel_2() {
		return lblNewLabel_2;
	}
	public void setLblNewLabel_2(String hint) {
		lblNewLabel_2.setVisible(true);
		this.lblNewLabel_2.setText(hint);;
	}
	public void setParameterName(String parameterName) {
		JTextField tx=new JTextField();
		tx.setText(parameterName);
		ParameterName = tx;
	}
	public String getParameterName() {
		return ParameterName.getText().toString();
	}

	public String getComboParameterName() {
		return ComboparameterNames.getSelectedItem().toString();
	}
	public ArrayList<String> get_Off_To_On_Condition() {
		return Off_To_On_Condition;
	}

	public ArrayList<String> get_On_To_Off_Actions() {
		return On_To_Off_Action;
	}
	public ArrayList<String> get_Off_To_ON_Actions() {
		return Off_To_On_Action;
	}
	public ArrayList<String> get_On_To_Off_Conditions()
	{
		return On_To_Off_Condition;
	}
	


	public void addTotextAreaOnToOf(String textArea) {
		this.textAreaOnToOff.append(textArea);
	}
	public void addTotextAreaOffToOn(String textArea) {
		this.textAreaOffToON.append(textArea);
	}
	public void addToActionAreaOnToOff(String textArea) {
		this.ActionAreaOnToOff.append(textArea);
	}
	public void addToActionAreaOffToOn(String textArea) {
		this.ActionAreaOffToON.append(textArea);
	}
	
	
	public void setTextArea(ArrayList<String> CondionsArray, String switchTo) {
		if(switchTo.equals(ElementType.getOff()))
		{
			this.textAreaOnToOff.setText("");
			this.textAreaOnToOff.setText(CondionsArray.get(0));
			for(int i=1;i<CondionsArray.size();i++)
			{
				addTotextAreaOnToOf("&&");
				addTotextAreaOnToOf(CondionsArray.get(i));
			}
		}
		else
		{
			this.textAreaOffToON.setText("");
			this.textAreaOffToON.setText(CondionsArray.get(0));
			for(int i=1;i<CondionsArray.size();i++)
			{
				addTotextAreaOffToOn("&&");
				addTotextAreaOffToOn(CondionsArray.get(i));
			}	
		}
	}
	public void setActionArea(ArrayList<String> ActionArray, String switchTo) {
		if(switchTo.equals(ElementType.getOff()))
		{
			this.ActionAreaOnToOff.setText("");
			this.ActionAreaOnToOff.setText(ActionArray.get(0));
			for(int i=1;i<ActionArray.size();i++)
			{
				addToActionAreaOnToOff("&&");
				addToActionAreaOnToOff(ActionArray.get(i));
			}
		}
		else
		{
			this.ActionAreaOffToON.setText("");
			this.ActionAreaOffToON.setText(ActionArray.get(0));
			for(int i=1;i<ActionArray.size();i++)
			{
				addToActionAreaOffToOn("&&");
				addToActionAreaOffToOn(ActionArray.get(i));
			}	
		}
	}
	
	private void setaddActionGui(String st)
	{
		switchTo=st;
		addactionGui=new AddActionGUI();
		addactionGui.setSwitchlbl("switch to"+switchTo);
		addactionGui.setVisible(true);
		addactionGui.setAddAconditionListener(this);
		addactionGui.setAddAconditionListener(null);
	}
	private void addConditionToTextArea(String switchTo) {
		String st=addconditonGui.getParameterNameCombo()+addconditonGui.getLabel_equal()+addconditonGui.getParameterValueCombo();
		if(switchTo.equals(ElementType.getOff()))
		{
			On_To_Off_Condition.add(st);
			setTextArea(On_To_Off_Condition,switchTo);
			
		}
		else
		{
			Off_To_On_Condition.add(st);
			setTextArea(Off_To_On_Condition,switchTo);
		}
		addconditonGui.setVisible(false);	
	}
	private void addActionToTextArea(String switchTo) {
		String st=addactionGui.getParameterNameCombo()+addactionGui.getLabel_3()+addactionGui.getParameterValueCombo();
		if(switchTo.equals(ElementType.getOff()))
		{
			On_To_Off_Action.add(st);
			setActionArea(On_To_Off_Action,switchTo);
			
		}
		else
		{
			Off_To_On_Action.add(st);
			setActionArea(Off_To_On_Action,switchTo);
		}
		addactionGui.setVisible(false);	
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		switch (e.getActionCommand())
		{
		case ("_save_Condition"):
			addConditionToTextArea(switchTo);
			break;
		case ("_save_Action"):
			addActionToTextArea(switchTo);
			break;
		case ("_add_condition_ON_To_Off"):
			setaddconditonGui(ElementType.getOff());
			break;
		case ("_add_condition_Off_To_On"):
			setaddconditonGui(ElementType.getOn());
			break;
		case ("_add_action_ON_To_Off"):
			setaddActionGui(ElementType.getOff());
		break;
		case ("_add_action_Off_To_On"):
		setaddActionGui(ElementType.getOn());
		break;
	}
		
	}
}
