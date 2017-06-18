package ToolGUI;

import java.awt.Color;
import java.awt.Font;
import java.util.ArrayList;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;

import ui.utils.MyTableModel;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.ScrollPaneConstants;

public class EditReomveConditionGUI extends JFrame {
	private JTable apps_table;
	private ArrayList<JPanel> p=new ArrayList<JPanel>();
	private int colums=3;
	
	public EditReomveConditionGUI(	ArrayList<String> a) {
		setVisible(true);
		setSize(650,300);
		getContentPane().setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
		scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		scrollPane.setBounds(10, 40, 521, 133);
		getContentPane().add(scrollPane);
		JPanel panel = new JPanel();
		scrollPane.setViewportView(panel);
		panel.setLayout(null);
		p=BuildTable(a);
		for (int i=0;i<p.size();i++)
		{
			panel.add(p.get(i));
			panel.repaint();
		}
	}
    private ArrayList BuildTable(ArrayList<String> a) {
    	int add=11;
    	ArrayList<JPanel> p=new ArrayList<JPanel>();
    	for (int i=0;i<a.size();i++) {
    		JPanel panel_1 = new JPanel();
    		panel_1.setBounds(10, add, 447, 25);
    		panel_1.setLayout(null);
    		
    		JLabel lblNewLabel_1 = new JLabel("New label");
    		lblNewLabel_1.setBounds(10, 11, 46, 14);
    		panel_1.add(lblNewLabel_1);
    		
    		JButton btnNewButton = new JButton("New button");
    		btnNewButton.setBounds(102, 2, 91, 23);
    		panel_1.add(btnNewButton);
    		p.add(panel_1);
    		add+=25;
    	}
		return p;
	}
	public static void main(String[] args)
    {
     
    	ArrayList<String> a  =new ArrayList<String>();
      	a.add("wifi==ON");
      	a.add("param1==ON");
     	a.add("wifi==ON");
      	a.add("param1==ON");
     	a.add("wifi==ON");
      	a.add("param1==ON");
     	a.add("wifi==ON");
      	a.add("param1==ON");
      	 EditReomveConditionGUI e=new EditReomveConditionGUI(a);
        e.setDefaultCloseOperation( EXIT_ON_CLOSE );
        e.setVisible(true);
    }
}
