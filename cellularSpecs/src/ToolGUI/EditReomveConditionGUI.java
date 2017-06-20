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
import javax.swing.JCheckBox;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.ImageIcon;
import javax.swing.ScrollPaneConstants;
import javax.swing.table.DefaultTableModel;

import our.Utils.ButtonEditor;
import our.Utils.ButtonRenderer;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.table.*;

public class EditReomveConditionGUI extends JFrame {
	  private ArrayList<String> on_To_Off_Action;
	  private 	 int col=3;

	public EditReomveConditionGUI(ArrayList<String> on_To_Off_Action){
	    super( "Edit/Delete " );
	    this.on_To_Off_Action=on_To_Off_Action;
	    DefaultTableModel dm=getdm();                   
	    JTable table = new JTable(dm);

	    table.getColumn("Remove").setCellRenderer(new ButtonRenderer());
	    table.getColumn("Remove").setCellEditor(new ButtonEditor(new JCheckBox()));
	    table.getColumn("Edit").setCellRenderer(new ButtonRenderer());
	    table.getColumn("Edit").setCellEditor(new ButtonEditor(new JCheckBox()));
	    JScrollPane scroll = new JScrollPane(table);
	    getContentPane().add( scroll );
	   setSize( 400, 100 );
	    setVisible(true);
	  }

	private DefaultTableModel getdm() {
		 DefaultTableModel dm = new DefaultTableModel();
		Object[][] obj= new Object[on_To_Off_Action.size()][col];
		for(int i=0;i<on_To_Off_Action.size();i++)
		{
		obj[i][0]=on_To_Off_Action.get(i);
		obj[i][1]="Remove"+i+1;
		obj[i][2]="Edit"+i+1;
		}
		    dm.setDataVector(obj,new Object[]{"String","Remove","Edit"});
			return dm;
	}
	  


	}