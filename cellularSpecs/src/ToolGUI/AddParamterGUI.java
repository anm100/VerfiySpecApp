package ToolGUI;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;




import javax.swing.border.LineBorder;





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

import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;

public class AddParamterGUI extends JFrame {
	protected JTextField txtUndefined;
	protected JTextField elementName;
	protected  int  x=0,y=0,hight=143,width=30;
	protected static JButton btnSave;
	private String values[]={""} ; 
	String ScreenName; 
	public AddParamterGUI()
	{
		this.ScreenName=ScreenName; 
		setTitle("ON-OFF");
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
		
		elementName = new JTextField();
		elementName.setBounds(129, 65, 202, 20);
		getContentPane().add(elementName);
		elementName.setColumns(10);
		
		 btnSave = new JButton("Save");
		 btnSave.setActionCommand("_save_on_off");
			
		btnSave.setBounds(84, 286, 112, 23);
		getContentPane().add(btnSave);
		
		JButton btnCancel = new JButton("Cancel");
		btnCancel.setBounds(206, 286, 116, 23);
		getContentPane().add(btnCancel);
		
		JRadioButton rdbtnOn = new JRadioButton();
		rdbtnOn.setBounds(130, 119, 100, 28);
		rdbtnOn.setVisible(false);
		getContentPane().add(rdbtnOn);
		
		JRadioButton rdbtnOff = new JRadioButton();
		rdbtnOff.setText("off");
		rdbtnOff.setVisible(false);
		rdbtnOff.setSelected(true);
		rdbtnOff.setBounds(232, 119, 100, 28);
		getContentPane().add(rdbtnOff);
		
		JLabel lblType = new JLabel("Type:");
		lblType.setBounds(30, 95, 78, 14);
		getContentPane().add(lblType);
		
		JComboBox TypeBox = new JComboBox();
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
		
		JTextArea	textArea = new JTextArea();
		scrollPane.setViewportView(textArea);
		scrollPane.setVisible(false);
		values=textArea.getText().split("\n");
		setSize(410, 361);
		comboBox.setModel(new DefaultComboBoxModel(values));
		
		
		
		
		TypeBox.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
				comboBox.setVisible(false);
				lblValues.setVisible(false);
				scrollPane.setVisible(false);
				lblDefaulval.setVisible(false);
				rdbtnOff.setVisible(false);
				rdbtnOn.setVisible(false);
				switch(TypeBox.getSelectedItem().toString()){
				case"ON/OFF Type":
					lblDefaulval.setBounds(30, 126, 64, 14);
					rdbtnOff.setText("OFF");
					rdbtnOn.setText("ON");
					lblDefaulval.setVisible(true);
					rdbtnOff.setVisible(true);
					rdbtnOn.setVisible(true);
					break; 
				case"Empty/NotEmpty Type":
					lblDefaulval.setBounds(30, 126, 64, 14);
					rdbtnOff.setText("Empty");
					rdbtnOn.setText("NotEmpty");
					lblDefaulval.setVisible(true);
					rdbtnOff.setVisible(true);
					rdbtnOn.setVisible(true);
					break; 
				case"List Type":
					comboBox.setVisible(true);
					lblDefaulval.setBounds(30, 241, 64, 14);
					lblValues.setVisible(true);
					scrollPane.setVisible(true);
					lblDefaulval.setVisible(true);

					break; 
				default:
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
	
		ImageIcon imageForOne = new ImageIcon(getClass().getResource("../add.png"));
		setSize(410, 360);
		
	}
	protected JLabel CreateLabel(String string, int x2, int y2, int hight2, int width2) {
	       JLabel lblNewLabel = new JLabel(string);
	        lblNewLabel.setBorder(new LineBorder(new Color(0, 0, 0), 1));
	        lblNewLabel.setBounds(x2, y2, hight2, width2);
	      lblNewLabel.setText(" "+elementName.getText().toString()+"");
	      return lblNewLabel;
		// TODO Auto-generated method stub
	}
	
	public JTextField getElementName() {
		return elementName;
	}
	
	public String getScreenName() {
		return ScreenName;
	}
	public void setOnOffListener(ActionListener OnOfTypeListener ){       
		btnSave.addActionListener(OnOfTypeListener);
	}
}
