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

public class ScreenGUI2 extends JPanel {
	private int x=0,y=0,width=143,hight=40;
	private JTextField	textField;
	protected String screenName;
	private JMenuItem onOff;
	private JMenuItem button;
	private JMenuItem defUndef;
	private JMenuItem List;
	private JLabel label;
	JPanel panel_3;
	public ScreenGUI2(String screenName,int getCordinateX,int getCordinateY) {
		addMouseMotionListener(new MouseMotionAdapter() {
			@Override
			public void mouseMoved(MouseEvent e) {
				System.out.println("aaaa");
			}
		});
		setBackground(Color.WHITE);
		setBorder(new LineBorder(new Color(0, 0, 0), 1, true));
		setSize(163, 310);
		setLayout(null);
		setLocation(getCordinateX, getCordinateY);
  		textField = new JTextField();
		JPanel panel_1 = new JPanel();
		panel_1.addMouseMotionListener(new MouseMotionAdapter() {
			@Override
			public void mouseMoved(MouseEvent arg0) {
				System.out.println("aaaa");
			}
		});
		panel_1.setBorder(new BevelBorder(BevelBorder.RAISED, null, null, null, null));
		panel_1.setBackground(Color.WHITE);
		panel_1.setBounds(37, 69, 123, 32);
		add(panel_1);
		panel_1.setLayout(null);
		

		
		JPanel panel_2 = new JPanel();
		panel_2.setBorder(new BevelBorder(BevelBorder.RAISED, null, null, null, null));
		panel_2.setBackground(Color.WHITE);
		panel_2.setBounds(125, 1, 35, 32);
		add(panel_2);
		   OnOfGUI onOffGui=new OnOfGUI(screenName);
			 DefUndefGUI  defUndefGUI=new DefUndefGUI(screenName);
	  		  ListTypeGUI listTypeGui=new ListTypeGUI(screenName);
        
		 JMenuBar menubar = new JMenuBar();
		 menubar.setBackground(UIManager.getColor("Button.disabledShadow"));
		 menubar.setBorderPainted(false);
		 panel_2.add(menubar);
		 JMenu newMenu = new JMenu("+");
		 newMenu.setBackground(Color.WHITE);
		 newMenu.addActionListener(new ActionListener() {
		 	public void actionPerformed(ActionEvent arg0) {
		 	//	frameScreenPanels.addElement(screenName, scrennGui);
		 	}
		 });
		 	JMenuItem onOff = new JMenuItem("On/Off");
	        JMenuItem button = new JMenuItem("button");
	        JMenuItem defUndef = new JMenuItem("defined/undefined");
	        JMenuItem List = new JMenuItem("List");
	        
	        newMenu.add(onOff);
	        newMenu.add(button);
	        newMenu.add(List);
	        newMenu.add(defUndef);
	        menubar.add(newMenu);
	        
	         panel_3 = new JPanel();
	         panel_3.setBounds(1, 112, 123, 32);
	         add(panel_3);
	         panel_3.setLayout(null);
	          	       label = new JLabel("saeed");
	          	       label.setBounds(1, 1, 68, 22);
	          	       add(label);
	          	       label.setFont(new Font("Tahoma", Font.PLAIN, 10));
	          	       
	          	       
	          	       JMenuBar menuOpt = new JMenuBar();
	          	       menuOpt.setBounds(0, 0, 10, 10);
	          	       add(menuOpt);
	          	       

	          	        menuOpt.setBackground(UIManager.getColor("Button.disabledShadow"));
	          	        menuOpt.setBorderPainted(false);					 
	          	        JMenu opt1 = new JMenu("");
	          	        
	          	        	opt1.setBounds(1, 1, 1, 1);
	          	        	opt1.setBackground(Color.WHITE);
	          	        	JMenuItem changeName = new JMenuItem("Change screen name");
	          	        	JMenuItem moveScreen = new JMenuItem("Move screen");
	          	        	moveScreen.addActionListener(new ActionListener() {
	          	        		public void actionPerformed(ActionEvent e) {
	          	        			WorkSpaceController.getInstance().setGetNewLocation(true);
	          	        			
	          	        		}
	          	        	});
	          	        	JMenuItem deleteScreen = new JMenuItem("Delete screen");
	          	        	deleteScreen.addActionListener(new ActionListener() {
	          	        		public void actionPerformed(ActionEvent e) {
	          	        		
	          	        		}
	          	        	});
	          	        	
	          	        	opt1.add(changeName);
	          	        	opt1.add(moveScreen);
	          	        	opt1.add(deleteScreen);
	          	        	
	          	        	    
	          	        	     //  opt1.setLocation(arg0.getX(),arg0.getY());
	          	        	       menuOpt.add(opt1);
	          	        	       
	          	        	       JLabel lblNewLabel = new JLabel("New label");
	          	        	       lblNewLabel.setBounds(10, 155, 150, 51);
	          	        	       add(lblNewLabel);
	          	       
	          	       		 
	          	       		panel_3.addMouseListener(new MouseAdapter() {
	          	       			@Override
	          	       			public void mouseClicked(MouseEvent arg0) {
	          	       				if(arg0.getButton()==MouseEvent.BUTTON3)
	          	       				{
	          	       					panel_3.removeAll();
	          	       					panel_3.add(label);
	          	       					 panel_3.add(menuOpt);
	          	       
	          	       					   menuOpt.setLocation(arg0.getX(), arg0.getY());
	          	       					opt1.doClick();
	          	       					panel_3.repaint();
	          	       					panel_3.revalidate();
	          	       
	          	       					 
	          	       			}
	          	       			}
	          	       			
	          	       			public void mouseMoved(MouseEvent arg0) {
	          	       					System.out.println(arg0.getXOnScreen());
	          	       
	          	       					 
	          	       			}
	          	       		});
	}
	public void addScreenListener(ActionListener listenForOperation){       
		onOff.addActionListener(listenForOperation);
		button.addActionListener(listenForOperation);
		defUndef.addActionListener(listenForOperation);
		List.addActionListener(listenForOperation);
}
	
	public void addScreenMouseListener(MouseListener addScreenController){       
		
		this.addMouseListener(addScreenController);
	}
}
