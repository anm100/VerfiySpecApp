package ToolGUI;

import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;

import Controller.Router;
import Model.Element;
import Model.ElementType;
import Model.WorkSpace;

import java.awt.Color;
import java.awt.Font;

import javax.swing.JLabel;

import java.awt.event.ActionListener;

import javax.swing.JScrollPane;

import java.awt.event.MouseEvent;

import javax.swing.UIManager;

import java.awt.event.MouseAdapter;
import java.util.ArrayList;

import javax.swing.ScrollPaneConstants;
import javax.swing.border.MatteBorder;

public class ScreenGUI extends JScrollPane {
	private int x=0,y=0,width=143,hight=40;
	
	protected String screenName;
	private JMenuItem onOff;
	private JMenuItem button;
	private JMenuItem emptyNempty;
	private JMenuItem List;
	private JMenuItem changeName;
	private JMenuItem deleteScreen;
	private JMenuItem moveScreen;
	private int lastCoordinateElem=21; 
	private JPanel mainScreenPanel;
	private ArrayList<JLabel> lablelelement = new ArrayList<JLabel>();
	public ScreenGUI(String screenName,int getCordinateX,int getCordinateY) 
	{
		setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		this.screenName=screenName;
		
		mainScreenPanel = new JPanel();
		mainScreenPanel.setBackground(Color.WHITE);
		
		setViewportView(mainScreenPanel);
		mainScreenPanel.setSize(163, 228);
		setSize(163, 228);
		mainScreenPanel.setBounds(getCordinateX, getCordinateY, 163, 228);
		mainScreenPanel.setLayout(null);
		
		

		JLabel screenLabel = new JLabel(screenName);

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
      	        					if(e.getButton()== MouseEvent.BUTTON3)
      	        					{
      	        					menuOpt.setLocation(e.getX(), e.getY());
      	        					opt1.doClick();
      	        					repaint();
      	        					revalidate();
      	        					}

      	        				}
      	        			});       	       
	
		 
	}

	public void addScreenMouseListener(Router addScreenController) {
		// TODO Auto-generated method stub
		this.addMouseMotionListener(addScreenController);
		this.addMouseListener(addScreenController);
	}
	public void addScreenMouseListener2(Router addScreenController) {
		// TODO Auto-generated method stub
		this.addMouseMotionListener(addScreenController);
		this.addMouseListener(addScreenController);
	}
	public void addScreenListener(ActionListener listenForOperation){       
		changeName.addActionListener(listenForOperation);
		moveScreen.addActionListener(listenForOperation);
		deleteScreen.addActionListener(listenForOperation);  
		
		onOff.addActionListener(listenForOperation);
		onOff.setActionCommand("_menu_onOff_type");
			
		button.addActionListener(listenForOperation);
		button.setActionCommand("_menu_button_type");
			
		emptyNempty.addActionListener(listenForOperation);
		emptyNempty.setActionCommand("_menu_emptyNotEmpty_type");
		
		List.addActionListener(listenForOperation);
		List.setActionCommand("_menu_list_type");

}
	
	public String getScreenName() {
		return screenName;
	}
	
	public void addElementLabel (Element elem){
		
		JLabel element = new JLabel(elem.getParamName()+":"+elem.getType());
		this.lastCoordinateElem+=25; 
		element.setBounds(1, lastCoordinateElem, 143, 25);
		element.setBorder(new MatteBorder(0, 0, 1, 0, (Color) new Color(180, 180, 180)));

		element.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                onMouseClicked(e);
            }
        });
   
		this.lablelelement.add(element); 
		mainScreenPanel.add(element);
	}
	private void onMouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		// to know what the label we are clicked 
		String [] params;
		for (int i = 0; i < lablelelement.size(); i++)
            if (e.getSource() == lablelelement.get(i)) {
            	// search the label is selcted
                WorkSpace.getLog().debug("Label  " + lablelelement.get(i).getText() + " was clicked");
                params=lablelelement.get(i).getText().toString().split(":");
                // getText split in ":" the index 1 is type of element 
                if(params[1].equals(ElementType.getEmptyNotEmptyType())){
                	
                }else if (params[1].equals(ElementType.getOnOffType())){
                	
                }else if (params[1].equals(ElementType.getListType())){
                	
                
                }else if (params[1].equals(ElementType.getStandartBtnType())){
                	
                }
            }
    }
}
	

