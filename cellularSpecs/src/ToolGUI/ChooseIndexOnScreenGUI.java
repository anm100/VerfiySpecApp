package ToolGUI;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import java.awt.GridLayout;

import javax.imageio.ImageIO;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;

import java.awt.FlowLayout;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.RowSpec;

import Controller.Router;
import javax.swing.JRadioButton;
import javax.swing.SwingConstants;
import java.awt.Component;
import javax.swing.Box;
import java.awt.Dimension;
import javax.swing.JSeparator;
import javax.swing.JSpinner;
import java.awt.Color;

public class ChooseIndexOnScreenGUI extends JFrame {

	private JPanel contentPane;
	private int index;
	private JRadioButton radioButton, radioButton_1, radioButton_2, radioButton_3, radioButton_4, radioButton_5, radioButton_6, radioButton_7;
	private JRadioButton radioButton_8 = new JRadioButton(""); // not usable, for default

	
	public ChooseIndexOnScreenGUI() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 393, 569);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
	
		
		
		JLabel lblChooseElementLocation = new JLabel("Choose element location on screen");
		lblChooseElementLocation.setFont(new Font("Tahoma", Font.PLAIN, 19));
		lblChooseElementLocation.setBounds(35, 41, 311, 20);
		contentPane.add(lblChooseElementLocation);
		
		JButton btnSave = new JButton("Save");
		btnSave.setBounds(130, 468, 115, 29);
		contentPane.add(btnSave);
		btnSave.setActionCommand("_save_index");
		btnSave.addActionListener(Router.getInstance());
		
		
		ButtonGroup group = new ButtonGroup();
		
		radioButton = new JRadioButton("");
		radioButton.setBounds(130, 149, 29, 29);
		group.add(radioButton);
		
		radioButton_1 = new JRadioButton("");
		radioButton_1.setBounds(130, 215, 29, 29);
		group.add(radioButton_1);
		
		radioButton_2 = new JRadioButton("");
		radioButton_2.setBounds(130, 280, 29, 29);
		group.add(radioButton_2);
		
		radioButton_3 = new JRadioButton("");
		radioButton_3.setBounds(130, 348, 29, 29);
		group.add(radioButton_3);
		
		radioButton_8.setBounds(35, 456, 282, 41);
		contentPane.add(radioButton_8);
		radioButton_8.setVisible(false);
		radioButton_8.setSelected(true);
		group.add(radioButton_8);
			
		radioButton_4 = new JRadioButton("");
		radioButton_4.setBounds(216, 149, 29, 29);
		group.add(radioButton_4);
		
		radioButton_5 = new JRadioButton("");
		radioButton_5.setBounds(216, 215, 29, 29);
		group.add(radioButton_5);
		
		radioButton_6 = new JRadioButton("");
		radioButton_6.setBounds(216, 280, 29, 29);
		group.add(radioButton_6);
		
		radioButton_7 = new JRadioButton("");
		radioButton_7.setBounds(216, 348, 29, 29);
		group.add(radioButton_7);
		
		
		ActionListener radioListener = new ActionListener() {
			public void actionPerformed(ActionEvent actionEvent) {
				if (radioButton.isSelected())
					setIndexOfElement(0);
				if (radioButton_1.isSelected())
					setIndexOfElement(1);
				if (radioButton_2.isSelected())
					setIndexOfElement(2);
				if (radioButton_3.isSelected())
					setIndexOfElement(3);
				if (radioButton_4.isSelected())
					setIndexOfElement(4);
				if (radioButton_5.isSelected())
					setIndexOfElement(5);
				if (radioButton_6.isSelected())
					setIndexOfElement(6);
				if (radioButton_7.isSelected())
					setIndexOfElement(7);
		      }
		    };
		    
		radioButton_7.addActionListener(radioListener);
		radioButton_6.addActionListener(radioListener);
		radioButton_5.addActionListener(radioListener);
		radioButton_4.addActionListener(radioListener);
		radioButton_3.addActionListener(radioListener);
		radioButton_2.addActionListener(radioListener);
		radioButton_1.addActionListener(radioListener);
		radioButton.addActionListener(radioListener);
		
		contentPane.add(radioButton);
		contentPane.add(radioButton_1);
		contentPane.add(radioButton_2);
		contentPane.add(radioButton_3);
		contentPane.add(radioButton_4);
		contentPane.add(radioButton_5);
		contentPane.add(radioButton_6);
		contentPane.add(radioButton_7);
		
		JSeparator separator = new JSeparator();
		separator.setForeground(new Color(0, 0, 0));
		separator.setBounds(96, 195, 178, 8);
		contentPane.add(separator);
		
		JSeparator separator_1 = new JSeparator();
		separator_1.setForeground(Color.BLACK);
		separator_1.setBounds(96, 260, 178, 8);
		contentPane.add(separator_1);
		
		JSeparator separator_2 = new JSeparator();
		separator_2.setForeground(new Color(0, 0, 0));
		separator_2.setBounds(96, 328, 178, 8);
		contentPane.add(separator_2);
		
		JSeparator separator_3 = new JSeparator();
		separator_3.setForeground(new Color(0, 0, 0));
		separator_3.setBounds(96, 394, 178, 8);
		contentPane.add(separator_3);
		
		JSeparator separator_4 = new JSeparator();
		separator_4.setForeground(new Color(0, 0, 0));
		separator_4.setBounds(96, 125, 178, 8);
		contentPane.add(separator_4);
		
		JSeparator separator_5 = new JSeparator();
		separator_5.setOrientation(SwingConstants.VERTICAL);
		separator_5.setForeground(new Color(0, 0, 0));
		separator_5.setBounds(94, 125, 13, 268);
		contentPane.add(separator_5);
		
		JSeparator separator_6 = new JSeparator();
		separator_6.setOrientation(SwingConstants.VERTICAL);
		separator_6.setForeground(new Color(0, 0, 0));
		separator_6.setBounds(276, 125, 13, 268);
		contentPane.add(separator_6);
		
		JSeparator separator_7 = new JSeparator();
		separator_7.setOrientation(SwingConstants.VERTICAL);
		separator_7.setForeground(new Color(0, 0, 0));
		separator_7.setBounds(186, 125, 13, 268);
		contentPane.add(separator_7);
		
	
	}
	
	public void setIndexOfElement(int index) {
		this.index = index;
	}
	
	public int getIndexOfElement() {
		return index;
	}
	
	public void setTakenIndexes(boolean[] indexes) {	// array size is 8. each cell is either 0 or 1 - taken or not taken. array is saved in Screen
		for (int i=0; i<8; i++)
			switch (i) {
			case 0:
				radioButton.setEnabled(!indexes[i]);
				break;
			case 1:
				radioButton_1.setEnabled(!indexes[i]);
				break;
			case 2:
				radioButton_2.setEnabled(!indexes[i]);
				break;
			case 3:
				radioButton_3.setEnabled(!indexes[i]);
				break;
			case 4:
				radioButton_4.setEnabled(!indexes[i]);
				break;
			case 5:
				radioButton_5.setEnabled(!indexes[i]);
				break;
			case 6:
				radioButton_6.setEnabled(!indexes[i]);
				break;
			case 7:
				radioButton_7.setEnabled(!indexes[i]);
				break;		
			}
	}
}
