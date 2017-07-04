package ToolGUI;

import java.util.List;

import javax.swing.DefaultListModel;
import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.ListSelectionModel;
import javax.swing.SwingConstants;
import javax.swing.SwingUtilities;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.JLabel;

import java.awt.BorderLayout;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JButton;

import Controller.ScreenController;
import Model.ElementType;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
 
public class ChoosenParamtersGUI extends JFrame  {
    private JList<String> countryList;
    ChoosenParamtersGUI thisRef = this;
    JButton btnNewButton;
    public JButton getBtnNewButton() {
		return btnNewButton;
	}
	public void setActionCommand(String btnNewButton) {
		this.btnNewButton.setActionCommand(btnNewButton);
	}
	public ChoosenParamtersGUI() {
        //create the model and add elements
        DefaultListModel<String> listModel = new DefaultListModel<>();
       
        
                //create the list
                countryList = new JList<>(ScreenController.getParams(ElementType.getEmptyNotEmptyType()));
                        JScrollPane scrollPane = new JScrollPane(countryList);
                    //  scrollPane.setVerticalScrollBarPolicy(scrollPane.VERTICAL_SCROLLBAR_NEVER);
                getContentPane().add(scrollPane);

        
         btnNewButton = new JButton("Ok");
        
        getContentPane().add(btnNewButton, BorderLayout.SOUTH);
        JLabel lblKeepPressingCtrl = new JLabel("Keep pressing CTRL to choose multi paramteres");
        getContentPane().add(lblKeepPressingCtrl, BorderLayout.NORTH);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setTitle("JList Example");       
        this.setSize(249,419);
        this.setLocationRelativeTo(null);
    }
    public void setOklistner(ActionListener e){
    btnNewButton.addActionListener((ActionListener) e);
}

	public List<String> getparams(){
	
	 return countryList.getSelectedValuesList();
	}
}
     
   
