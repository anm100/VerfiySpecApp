package ToolGUI;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import java.awt.Image;
import java.awt.SystemColor;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;

import ui.utils.Messages;
import ui.utils.MyTableModel;

//import org.eclipse.wb.swing.FocusTraversalOnArray;

import Controller.AppointmentsController;
import Model.ElementType;
import Model.MyAction;
import Model.Param;
import Model.WorkSpace;

import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JTable;
import javax.swing.JScrollPane;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;

import java.util.ArrayList;

public class conditionManagment implements ActionListener  {

	/**
	 * appointments frame
	 */
	private JFrame app;
	/**
	 * all future patient's appointments table
	 */
	private JTable apps_table;
	JButton cancel_btn;
	JButton btnSave;

	/**
	 * the patient to show his information
	 */
	private Param patient;
	private String toSwitch;
	AddConditonGui conditionGui;
	private conditionManagment thisref=this;
	private ArrayList<String> apps_list=new ArrayList<String>();
	private ArrayList<String> data;
	private String paramName;
	private String status;
	/**
	 * 
	 * @param patient
	 *            : Models Patient instance
	 */
	public conditionManagment(String paramName,ArrayList<String> data,String toSwitch) {
		this.toSwitch=toSwitch;
		this.data=data;
		this.paramName=paramName;
		initialize();
	}



	/**
	 * Initialize the contents of the frame.
	 */

	private void initialize() {
		app = new JFrame();
		app.setTitle("conditions management - "+WorkSpace.getInstance().getWorkSpaceName());
		app.setResizable(false);
		//Image icon = new ImageIcon(this.getClass().getResource("/img/" + "icon.png")).getImage();
		//app.setIconImage(icon);
		app.setForeground(Color.BLACK);
		app.setFont(new Font("Dialog", Font.PLAIN, 16));
		app.setBackground(Color.WHITE);
		app.getContentPane().setBackground(Color.WHITE);
		app.getContentPane().setLayout(null);

		JLabel logo = new JLabel("conditions management - "+WorkSpace.getInstance().getWorkSpaceName());
		logo.setBounds(0, 0, 495, 59);
		logo.setForeground(Color.DARK_GRAY);
		logo.setFont(new Font("Microsoft New Tai Lue", Font.BOLD, 17));
		logo.setBackground(Color.WHITE);
		//logo.setIcon(Resources.getIcon("logo.png"));
		app.getContentPane().add(logo);

		JPanel panel = new JPanel();
		panel.setBounds(0, 56, 621, 45);
		app.getContentPane().add(panel);
		panel.setLayout(null);

		JLabel lblNewLabel = new JLabel("Parameter Name:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblNewLabel.setBounds(10, 11, 126, 21);
		panel.add(lblNewLabel);

		JLabel name_lbl = new JLabel(""+paramName);
		name_lbl.setFont(new Font("Tahoma", Font.PLAIN, 14));
		name_lbl.setBounds(146, 11, 140, 21);
		panel.add(name_lbl);

		JLabel lblPhone = new JLabel("state");
		lblPhone.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblPhone.setBounds(298, 11, 49, 21);
		panel.add(lblPhone);

		JLabel status_lbl = new JLabel(""+this.status);
		status_lbl.setFont(new Font("Tahoma", Font.PLAIN, 14));
		status_lbl.setBounds(339, 11, 85, 21);
		if(toSwitch.equals(ElementType.getOn())){
			status=new String("OFF-> ON");
			status_lbl.setText(new String("OFF-> ON")); 

		}else if (toSwitch.equals(ElementType.getOff())){
			status_lbl.setText(new String("ON-> OFF")); 
		}else {
			status_lbl.setText(new String("Empty-> NotEmpty")); 

		}
		panel.add(status_lbl);

	

		cancel_btn = new JButton("Delete Selected condition");
		cancel_btn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				int row = apps_table.getSelectedRow();
				if(row<0){
					Messages.errorMessage("Please select an condition from the table below", "No action selected", null);
					return;
				}
			
					if (AppointmentsController.deleteAppointment(patient,apps_list.get(row)) == false) {
						JOptionPane.showMessageDialog(cancel_btn, "Cannot complete the request", "Cancel Action",
								JOptionPane.ERROR_MESSAGE);
					} else {
						apps_list.remove(row);
						DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
						dm.removeRow(row);
						Messages.successMessage("Action Canceled", "Action Appointment", null);
					}
				
				cancel_btn.setEnabled(false);
			}
		});
		cancel_btn.setEnabled(false);

		cancel_btn.setBounds(190, 112, 223, 30);
		app.getContentPane().add(cancel_btn);

		JScrollPane apps_scrollPane = new JScrollPane();
		apps_scrollPane.setBounds(10, 147, 403, 208);
		app.getContentPane().add(apps_scrollPane);

		String[] doc_columnNames = { "conditions"};
		Object[][] doc_data = {};
		apps_table = new JTable();
		apps_table.setModel(new MyTableModel(doc_columnNames, doc_data));
		getAppointments();
		apps_table.setFillsViewportHeight(true);
		apps_table.setSurrendersFocusOnKeystroke(true);
		apps_table.setShowVerticalLines(false);
		apps_table.setRowHeight(30);
		apps_table.setFont(new Font("Tahoma", Font.PLAIN, 16));
		apps_scrollPane.setViewportView(apps_table);
		apps_table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		apps_table.setBackground(Color.WHITE);
		
		TableColumn action = apps_table.getColumn("conditions");
		action.setPreferredWidth(100);
		
		
		
		apps_table.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {
				cancel_btn.setEnabled(true);
			}
		});
		btnSave = new JButton("Save");
		btnSave.setActionCommand("_save_cond_"+toSwitch);
		btnSave.setBounds(85, 366, 112, 23);
		app.getContentPane().add(btnSave);

		JButton newApp_btn = new JButton("Add New Condition");
		newApp_btn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				conditionGui=	new AddConditonGui();
				conditionGui.setAddAconditionListener(thisref);
				conditionGui.setVisible(true);
			WorkSpace.getLog().debug("add new Condition button");
			}

			
		});
		newApp_btn.setBounds(10, 112, 174, 30);
		app.getContentPane().add(newApp_btn);
		
		JButton btnCancel = new JButton("Cancel");
		btnCancel.setBounds(222, 366, 112, 23);
		app.getContentPane().add(btnCancel);

		// ---------------------------------
	//	app.getContentPane().setFocusTraversalPolicy(new FocusTraversalOnArray(new Component[] { logo }));
		app.setBounds(100, 100, 433, 440);
		app.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		app.setLocationRelativeTo(null);
	}

	/**
	 * 
	 * @return current JFrame
	 */
	public JFrame getFrame() {
		return app;
	}

	public void setListener(ActionListener listener ){    
		btnSave.addActionListener(listener);
	}
	public ArrayList<String>  getdata(){
		
		return this.apps_list;
	}
	public void getAppointments() {
		cancel_btn.setEnabled(false);
		ArrayList<String> apps = data;
		if (apps != null) {
			DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
			dm.setRowCount(0);
			if (apps_list != null && apps_list.size() > 0)
				apps_list.clear();
			for (String a : apps) {
				dm.addRow(new Object[] { a});

				apps_list.add(a);
			}
		}
	}



	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		switch (arg0.getActionCommand())
		{
		case ("_save_Condition_param"):
			WorkSpace.getLog().debug("doing add to tables");

			//addActionArrayList(switchTo);
		DefaultTableModel dm = (DefaultTableModel) apps_table.getModel();
		dm.addRow(new Object[] {conditionGui.getParameterNameCombo()+"=="+conditionGui.getParameterValueCombo()});
//
			apps_list.add(conditionGui.getParameterNameCombo()+"=="+conditionGui.getParameterValueCombo());
			break;
		
		}
	}
}
