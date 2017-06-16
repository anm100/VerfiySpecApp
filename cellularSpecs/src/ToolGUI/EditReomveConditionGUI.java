package ToolGUI;

import java.awt.Color;
import java.awt.Font;
import java.util.ArrayList;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;

import ui.utils.MyTableModel;

public class EditReomveConditionGUI extends JFrame {
	private JTable apps_table;
	private Object[][] data = {};
	private int colums=3;
	
	public EditReomveConditionGUI(	ArrayList<String> a) {
		setVisible(true);
		setSize(650,300);
		getContentPane().setLayout(null);
		data=BuildTable(a);
		JScrollPane apps_scrollPane = new JScrollPane();
		apps_scrollPane.setBounds(38, 106, 465, 117);
		getContentPane().add(apps_scrollPane);


	}
    private Object[][] BuildTable(ArrayList<String> a) {
    	Object[][] arr=new Object [colums][a.size()];
    	for (int i=0;i<a.size();i++) {
    		arr[i][0]=a.get(i);
    		
    		
    	}
		return null;
	}
	public static void main(String[] args)
    {
     
    	ArrayList<String> a  =new ArrayList<String>();
      	a.add("wifi==ON");
      	 EditReomveConditionGUI e=new EditReomveConditionGUI(a);
        e.setDefaultCloseOperation( EXIT_ON_CLOSE );
        e.setVisible(true);
    }


}
