package ToolGUI;

import javax.swing.JFrame;

import java.awt.Color;

import javax.swing.JLabel;
import javax.swing.JCheckBox;
import javax.swing.JButton;

import java.awt.Font;

import javax.swing.JProgressBar;
import javax.swing.JComboBox;
import javax.swing.JSeparator;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.JScrollPane;

import ui.utils.MyTableModel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class ShowResultsGUI extends JFrame{
	private JTable tblToday;
	public ShowResultsGUI() {
		getContentPane().setBackground(Color.WHITE);
		getContentPane().setLayout(null);
		
		JLabel lblVerifySpec = new JLabel("<Spec name> - Result verfication");
		lblVerifySpec.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblVerifySpec.setBounds(23, 0, 333, 45);
		getContentPane().add(lblVerifySpec);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(33, 64, 568, 372);
		getContentPane().add(scrollPane);
		tblToday = new JTable();
		scrollPane.setViewportView(tblToday);
		tblToday.setModel(
				new MyTableModel(new String[] { "Requirement Number", "Counterexample"}, new Object[][] {}));
		
		JButton button = new JButton("Close");
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		button.setBounds(244, 454, 112, 23);
		getContentPane().add(button);
	}
}
