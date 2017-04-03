package ToolGUI;

import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.border.LineBorder;

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
import java.awt.event.MouseEvent;
import javax.swing.border.BevelBorder;
import javax.swing.border.EmptyBorder;
import javax.swing.UIManager;
import javax.swing.border.EtchedBorder;
import java.awt.SystemColor;

public class ScreenGUI extends JPanel {

	public static JPanel panel;
	private int x=0,y=0,width=143,hight=40;
	private JTextField	textField;
	protected String screenName;
	private JMenuItem onOff;
	private JMenuItem button;
	private JMenuItem defUndef;
	private JMenuItem List;
	
	public ScreenGUI(String screenName,int getCordinateX,int getCordinateY) {
		setBackground(Color.WHITE);
		setBorder(new LineBorder(new Color(0, 0, 0), 1, true));
		setSize(163, 220);
		setLayout(null);
		setLocation(getCordinateX, getCordinateY);
  		textField = new JTextField();
		JPanel panel_1 = new JPanel();
		panel_1.setBorder(new BevelBorder(BevelBorder.RAISED, null, null, null, null));
		panel_1.setBackground(Color.WHITE);
		panel_1.setBounds(1, 1, 123, 32);
		add(panel_1);
		panel_1.setLayout(null);
		
		JLabel label = new JLabel(screenName);
		label.setFont(new Font("Tahoma", Font.PLAIN, 10));
		label.setBounds(1, 5, 122, 22);
		panel_1.add(label);
		
		JPanel panel_2 = new JPanel();
		panel_2.setBorder(new BevelBorder(BevelBorder.RAISED, null, null, null, null));
		panel_2.setBackground(Color.WHITE);
		panel_2.setBounds(125, 1, 35, 32);
		add(panel_2);
		   OnOfGUI onOffGui=new OnOfGUI(screenName);
			 DefUndefGUI  defUndefGUI=new DefUndefGUI(screenName);
	  		  ListTypeGUI listTypeGui=new ListTypeGUI(screenName);
		   
        JScrollPane scrollPane = new JScrollPane();
        scrollPane.setBorder(null);
        scrollPane.setViewportBorder(null);
        scrollPane.setBounds(1, 35, 159, 174);
        add(scrollPane);
         panel = new JPanel();
         panel.setForeground(Color.WHITE);
         panel.setBackground(Color.WHITE);
        scrollPane.setViewportView(panel);
        panel.setBorder(null);
        panel.setLayout(null);
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
	}
	public void addScreenListener(ActionListener listenForOperation){       
		onOff.addActionListener(listenForOperation);
		button.addActionListener(listenForOperation);
		defUndef.addActionListener(listenForOperation);
		List.addActionListener(listenForOperation);
}
}
