package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.border.LineBorder;

import Controller.AddScreenController;
import Controller.WorkSpaceController;

import java.awt.Color;

import javax.swing.JButton;
import javax.swing.SwingConstants;

import java.awt.Font;

import javax.swing.JLabel;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.JTextField;
import javax.swing.JScrollPane;

import java.awt.event.MouseMotionAdapter;
import java.awt.event.MouseMotionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.border.BevelBorder;
import javax.swing.border.EmptyBorder;
import javax.swing.UIManager;
import javax.swing.border.EtchedBorder;
import java.awt.SystemColor;
import java.awt.event.MouseAdapter;
import javax.swing.ScrollPaneConstants;

public class ScreenGUI extends JScrollPane {
	private int x=0,y=0,width=143,hight=40;
	private JTextField	textField;
	protected String screenName;
	private JMenuItem onOff;
	private JMenuItem button;
	private JMenuItem emptyNempty;
	private JMenuItem List;
	private JMenuItem changeName;
	private JMenuItem deleteScreen;
	private JMenuItem moveScreen;
	public ScreenGUI(String screenName,int getCordinateX,int getCordinateY) 
	{

		setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
		setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		
		JPanel mainScreenPanel = new JPanel();
		mainScreenPanel.setBackground(Color.WHITE);
		setViewportView(mainScreenPanel);
		mainScreenPanel.setSize(163, 228);
		setSize(163, 228);
		mainScreenPanel.setLayout(null);
		
		JLabel element = new JLabel("New element");

		element.setBounds(1, 21, 143, 39);
		mainScreenPanel.add(element);
		

		JLabel screenLabel = new JLabel("");

		screenLabel.setBounds(1, 0, 119, 22);
		mainScreenPanel.add(screenLabel);
	       screenLabel.setFont(new Font("Tahoma", Font.PLAIN, 10));
	       
	       JMenuBar menuBar = new JMenuBar();
	       menuBar.setBounds(120, 0, 93, 21);
	       mainScreenPanel.add(menuBar);
	       JMenu newMenu = new JMenu("+");
	        onOff = new JMenuItem("On/Off");
	         button = new JMenuItem("button");
	         emptyNempty = new JMenuItem("Empty/NotEmpty");
	         List = new JMenuItem("List");
	        
	        
	        newMenu.add(onOff);
	        newMenu.add(button);
	        newMenu.add(List);
	        newMenu.add(emptyNempty);
	        menuBar.add(newMenu);
	      
	    
		       JMenuBar menuOpt = new JMenuBar();
      	       menuOpt.setBounds(5, 5, 10, 10);
      	       add(menuOpt);
      	       

      	        menuOpt.setBackground(UIManager.getColor("Button.disabledShadow"));
      	        menuOpt.setBorderPainted(false);					 
      	        JMenu opt1 = new JMenu("");
      	        
      	        	opt1.setBounds(1, 1, 1, 1);
      	        	opt1.setBackground(Color.WHITE);
      	        	 changeName = new JMenuItem("Change screen name");
      	        	 moveScreen = new JMenuItem("Move screen");
      	        	 deleteScreen = new JMenuItem("Delete screen");
      
      	        	opt1.add(changeName);
      	        	opt1.add(moveScreen);
      	        	opt1.add(deleteScreen);
      	        	
      	        	    
      	        	     //  opt1.setLocation(arg0.getX(),arg0.getY());
      	        	       menuOpt.add(opt1);
      	        			addMouseListener(new MouseAdapter() {
      	        				@Override
      	        				public void mousePressed(MouseEvent e) {
      	        					menuOpt.setLocation(e.getX(), e.getY());
      	        					opt1.doClick();
      	        					repaint();
      	        					revalidate();

      	        				}
      	        			});       	       
	
		 
	}
	public void addScreenMouseListener(AddScreenController addScreenController) {
		// TODO Auto-generated method stub
		this.addMouseMotionListener(addScreenController);
		this.addMouseListener(addScreenController);
	}
	public void addScreenMouseListener2(WorkSpaceController addScreenController) {
		// TODO Auto-generated method stub
		this.addMouseMotionListener(addScreenController);
		this.addMouseListener(addScreenController);
	}
	public void addScreenListener(ActionListener listenForOperation){       
		changeName.addActionListener(listenForOperation);
		moveScreen.addActionListener(listenForOperation);
		deleteScreen.addActionListener(listenForOperation);  
			onOff.addActionListener(listenForOperation);
			button.addActionListener(listenForOperation);
			emptyNempty.addActionListener(listenForOperation);
			List.addActionListener(listenForOperation);
}
	
}
