package ToolGUI;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;













import javax.swing.border.LineBorder;













import javax.swing.border.MatteBorder;

import java.awt.Color;
import java.awt.Font;

import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingConstants;
import javax.swing.JButton;
import javax.swing.JRadioButton;
import javax.swing.JSeparator;
import javax.swing.UIManager;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;

import Model.ElementType;

import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;

public class AddParamterGUI extends JFrame {
	protected JTextField txtUndefined;
	protected JTextField ParamName;
	protected  int  x=0,y=0,hight=143,width=30;
	protected static JButton btnSave;
	private String values[]={""} ; 
	private JRadioButton rdbtnOff; 
	private  JRadioButton rdbtnOn; 
	private String typeParam; 
	private String defaultValue; 
	private JTextArea	textArea; 
	private JComboBox TypeBox;
	public AddParamterGUI()
	{
		setTitle("Add new paramter");
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JLabel lblOnoff = new JLabel("Add New Parameter");
		lblOnoff.setFont(new Font("Arial", Font.BOLD, 22));
		lblOnoff.setBounds(20, 11, 361, 36);
		getContentPane().add(lblOnoff);
		
		JLabel lblName = new JLabel("Parameter Name");
		lblName.setBounds(30, 68, 112, 14);
		getContentPane().add(lblName);
		
		JLabel lblDefaulval = new JLabel("DefaultVal:");
		lblDefaulval.setVisible(false);
		lblDefaulval.setBounds(30, 241, 84, 14);
		getContentPane().add(lblDefaulval);
		
		ParamName = new JTextField();
		ParamName.setBounds(129, 65, 202, 20);
		getContentPane().add(ParamName);
		ParamName.setColumns(10);
		
		 btnSave = new JButton("Save");
		 btnSave.setActionCommand("_save_new_param_ex");
			
		btnSave.setBounds(84, 286, 112, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("Cancel");
		btnCancel.setBounds(206, 286, 116, 23);
		getContentPane().add(btnCancel);
		
		rdbtnOn = new JRadioButton();
		rdbtnOn.setBounds(130, 119, 100, 28);
		rdbtnOn.setVisible(false);
		rdbtnOn.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent e) {
				if(rdbtnOn.isSelected())
					setDefaultValue(rdbtnOn.getText());
				}
		});
		getContentPane().add(rdbtnOn);
		
	    rdbtnOff = new JRadioButton();
		rdbtnOff.setText("off");
		rdbtnOff.setVisible(false);
		rdbtnOff.setSelected(true);
		rdbtnOff.setBounds(232, 119, 100, 28);
		getContentPane().add(rdbtnOff);
		rdbtnOff.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent e) {
				if(rdbtnOff.isSelected())
					setDefaultValue(rdbtnOff.getText());
				}

			
		});
		JLabel lblType = new JLabel("Type:");
		lblType.setBounds(30, 95, 78, 14);
		getContentPane().add(lblType);
		
		TypeBox = new JComboBox();
		TypeBox.setModel(new DefaultComboBoxModel(new String[] {"", "ON/OFF Type", "Empty/NotEmpty Type", "List Type"}));
		TypeBox.setBounds(129, 92, 202, 20);
		getContentPane().add(TypeBox);
		
		JComboBox comboBox = new JComboBox();


		comboBox.setModel(new DefaultComboBoxModel(values));
		comboBox.setBounds(129, 238, 152, 20);
		getContentPane().add(comboBox);
		comboBox.setVisible(false);
	
		
		JLabel lblValues = new JLabel("Values:");
		lblValues.setBounds(30, 126, 64, 14);
		lblValues.setVisible(false);
		getContentPane().add(lblValues);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(129, 119, 149, 108);
		getContentPane().add(scrollPane);
		
		textArea = new JTextArea();
		scrollPane.setViewportView(textArea);
		scrollPane.setVisible(false);
		values=textArea.getText().split("\n");
		setSize(410, 361);
		comboBox.setModel(new DefaultComboBoxModel(values));
		
		TypeBox.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
				TypeBox.setBorder(new MatteBorder(1, 1, 1, 1, (Color) new Color(0, 0, 0)));		
				comboBox.setVisible(false);
				lblValues.setVisible(false);
				scrollPane.setVisible(false);
				lblDefaulval.setVisible(false);
				rdbtnOff.setVisible(false);
				rdbtnOn.setVisible(false);
				switch(TypeBox.getSelectedItem().toString()){
				case"ON/OFF Type":
					typeParam=ElementType.getOnOffType();
					lblDefaulval.setBounds(30, 126, 64, 14);
					rdbtnOff.setText("OFF");
					rdbtnOn.setText("ON");
					lblDefaulval.setVisible(true);
					rdbtnOff.setVisible(true);
					rdbtnOn.setVisible(true);
					break; 
				case"Empty/NotEmpty Type":
					typeParam=ElementType.getEmptyNotEmptyType();
					lblDefaulval.setBounds(30, 126, 64, 14);
					rdbtnOff.setText("Empty");
					rdbtnOn.setText("NotEmpty");
					lblDefaulval.setVisible(true);
					rdbtnOff.setVisible(true);
					rdbtnOn.setVisible(true);
					break; 
				case"List Type":
					typeParam=ElementType.getListType();

					comboBox.setVisible(true);
					lblDefaulval.setBounds(30, 241, 64, 14);
					lblValues.setVisible(true);
					scrollPane.setVisible(true);
					lblDefaulval.setVisible(true);
					break; 
					
				default:
					typeParam=null; 
					comboBox.setVisible(false);
					lblValues.setVisible(false);
					scrollPane.setVisible(false);
					lblDefaulval.setVisible(false);
					rdbtnOff.setVisible(false);
					rdbtnOn.setVisible(false);
					break; 	
				}
				
				
			}
		});
	
		setSize(410, 360);
		
	}

	public  void setOnOff(String defualtvalue) {
	if(getDefaultValue().equals(defualtvalue))
		rdbtnOff.setSelected(true);
	else
		rdbtnOn.setSelected(true);
		
	}
	public void expectionbtnSave(){
		TypeBox.setFocusable(true);
		TypeBox.requestFocus();
		TypeBox.setBorder(new MatteBorder(2, 2, 2, 2, (Color) new Color(255, 0, 0)));		
	}
	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}
	public  String getDefaultValue() {
		return this.defaultValue;
	}
	public String getParamType(){
		return this.typeParam;
	}
	public String[] getValues() {
		return textArea.getText().split("\n");
	}
	public String getParameterName() {
		return ParamName.getText();
	}
	public void setAddParamListener(ActionListener OnOfTypeListener ){       
		btnSave.addActionListener(OnOfTypeListener);
	}
	
}
