package ToolGUI;

import java.awt.Color;
import java.awt.Component;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Image;
import java.awt.SystemColor;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

import org.eclipse.wb.swing.FocusTraversalOnArray;

import Client.Application;
import Client.Resources;
import Controllers.AppointmentsController;
import Controllers.ReferralController;
import Utils.DateTime;
import Utils.DoctorsComparator;
import Utils.Request;
import models.Appointment;
import models.Doctor;
import models.Param;
import ui.utils.Messages;
import ui.utils.MyTableModel;

import javax.swing.JComboBox;
import javax.swing.JSpinner;
import javax.swing.JList;

import com.j256.ormlite.dao.ForeignCollection;
import com.jgoodies.forms.factories.DefaultComponentFactory;

import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.JSplitPane;
import javax.swing.JScrollPane;
import javax.swing.JInternalFrame;
import javax.swing.JTable;
import javax.swing.JMenuItem;
import javax.swing.JCheckBoxMenuItem;
import javax.swing.border.BevelBorder;
import javax.swing.border.CompoundBorder;
import javax.swing.ListSelectionModel;
import javax.swing.JScrollBar;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.sql.Savepoint;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.awt.event.ActionEvent;

import javax.swing.border.EmptyBorder;
import javax.swing.border.EtchedBorder;
import javax.swing.border.LineBorder;
import javax.swing.border.MatteBorder;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.TitledBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.UIManager;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;
import javax.swing.DefaultComboBoxModel;

/**
 * Add new appointment GUI for patient
 * 
 * @author Muhamad Igbaria
 *
 */
public class AddApointment {

	/**
	 * current frame
	 */
	private JFrame newApp;
	/**
	 * shows all doctors by specific specialty
	 */
	private JTable doctors_table;
	/**
	 * shows all available times for specific doctor
	 */
	private JTable time_table;
	private JScrollPane doctors_scrll_table;
	private JLabel lblDoctors;
	/**
	 * Appointments Controller instance
	 */
	private AppointmentsController app_ctrl = new AppointmentsController();

	/**
	 * Referral Controller instance
	 */
	private ReferralController ref_ctrl = new ReferralController();

	/**
	 * Specialty chooses
	 */
	private String spec;
	/**
	 * specific patient instance
	 */
	private Param patient;
	/**
	 * the doctor id that has choose in doctors table
	 */
	private String doctor_id;
	/**
	 * all available times for doctor
	 */
	private ArrayList<Appointment> times;

	Appointments appointments_class;

	/**
	 * 
	 * @param patient
	 *            : patient instance to add new appointment for him
	 * @param thisRef
	 *            : reference to the appointments GUI class to back
	 */
	public AddApointment(Param patient, Appointments thisRef) {
		this.patient = patient;
		this.appointments_class = thisRef;
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		newApp = new JFrame();
		newApp.setResizable(false);
		newApp.getContentPane().setFont(new Font("Tahoma", Font.PLAIN, 16));
		newApp.setTitle("New Appointment- GHealth");
		Image icon = new ImageIcon(this.getClass().getResource("/img/" + "icon.png")).getImage();
		newApp.setIconImage(icon);
		newApp.setForeground(Color.BLACK);
		newApp.setFont(new Font("Dialog", Font.PLAIN, 16));
		newApp.setBackground(Color.WHITE);
		newApp.getContentPane().setBackground(Color.WHITE);
		newApp.getContentPane().setLayout(null);

		JLabel logo = new JLabel("GHealth - New Appointment");
		logo.setBounds(0, 0, 465, 64);
		logo.setForeground(SystemColor.textHighlight);
		logo.setFont(new Font("Microsoft New Tai Lue", Font.BOLD, 17));
		logo.setBackground(Color.WHITE);
		logo.setIcon(Resources.getIcon("logo.png"));
		newApp.getContentPane().add(logo);

		JComboBox speciality = new JComboBox();
		speciality.setName("");
		speciality.setModel(new DefaultComboBoxModel(AppointmentsController.getSpecialties()));

		speciality.setBounds(120, 106, 247, 25);
		newApp.getContentPane().add(speciality);

		JLabel lblSpeciality = new JLabel("Speciality:");
		lblSpeciality.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblSpeciality.setBounds(30, 100, 105, 32);
		newApp.getContentPane().add(lblSpeciality);

		JButton btnSave = new JButton("Save");
		btnSave.setEnabled(false);
		btnSave.setBounds(272, 567, 89, 23);
		newApp.getContentPane().add(btnSave);

		JButton btnCancel = new JButton("Cancel");
		btnCancel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int choise = JOptionPane.showConfirmDialog(null,
						"Are you sure you want to cancel this appointment setting", "Cancel", JOptionPane.YES_NO_OPTION,
						JOptionPane.WARNING_MESSAGE);
				if (choise == JOptionPane.YES_OPTION)
					newApp.setVisible(false);
			}
		});
		btnCancel.setBounds(361, 567, 89, 23);
		newApp.getContentPane().add(btnCancel);

		lblDoctors = new JLabel("Doctors:");
		lblDoctors.setVisible(false);
		lblDoctors.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblDoctors.setBounds(30, 142, 99, 32);
		newApp.getContentPane().add(lblDoctors);

		JLabel lblTime = new JLabel("Time:");
		lblTime.setVisible(false);
		lblTime.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblTime.setBounds(30, 357, 62, 25);
		newApp.getContentPane().add(lblTime);

		doctors_scrll_table = new JScrollPane();
		doctors_scrll_table.setVisible(false);
		doctors_scrll_table.setBounds(30, 171, 420, 175);
		newApp.getContentPane().add(doctors_scrll_table);

		String[] doc_columnNames = { "", "Doctor", "Clinic", "Last Visit" };
		Object[][] doc_data = {};
		doctors_table = new JTable();
		doctors_table.setModel(new MyTableModel(doc_columnNames, doc_data));
		doctors_table.setFillsViewportHeight(true);
		doctors_table.setSurrendersFocusOnKeystroke(true);
		doctors_table.setShowVerticalLines(false);
		doctors_table.setRowHeight(30);
		doctors_table.setFont(new Font("Tahoma", Font.PLAIN, 16));
		doctors_scrll_table.setViewportView(doctors_table);
		doctors_table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		doctors_table.setBackground(Color.WHITE);

		TableColumn doctorId = doctors_table.getColumn("");
		doctorId.setMaxWidth(0);
		doctorId.setMinWidth(0);
		doctorId.setPreferredWidth(0);
		
		TableColumn doc = doctors_table.getColumn("Doctor");
		doc.setPreferredWidth(140);
		
		TableColumn clinic = doctors_table.getColumn("Clinic");
		clinic.setPreferredWidth(180);
		
		TableColumn lVisit = doctors_table.getColumn("Last Visit");
		lVisit.setPreferredWidth(100);
		

		JScrollPane time_scrll_table = new JScrollPane();
		time_scrll_table.setVisible(false);
		time_scrll_table.setBounds(30, 381, 420, 175);
		newApp.getContentPane().add(time_scrll_table);

		String[] columnNames = { "Date", "Day", "Hour" };
		Object[][] data = {};
		time_table = new JTable();
		time_table.setModel(new MyTableModel(columnNames, data));
		time_table.setFillsViewportHeight(true);
		time_table.setSurrendersFocusOnKeystroke(true);
		time_table.setShowVerticalLines(false);
		time_table.setRowHeight(30);

		time_table.setFont(new Font("Tahoma", Font.PLAIN, 16));
		time_scrll_table.setViewportView(time_table);
		time_table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		time_table.setBackground(Color.WHITE);

		JLabel noApps_lbl = new JLabel("No appointments available for this doctor");
		noApps_lbl.setVisible(false);
		noApps_lbl.setForeground(Color.RED);
		noApps_lbl.setFont(new Font("Tahoma", Font.PLAIN, 16));
		noApps_lbl.setBounds(30, 345, 420, 25);
		newApp.getContentPane().add(noApps_lbl);

		JLabel no_confm_lbl = new JLabel("*No Conformation for this client at this speciality");
		no_confm_lbl.setVisible(false);
		no_confm_lbl.setForeground(Color.RED);
		no_confm_lbl.setBounds(120, 135, 345, 25);
		newApp.getContentPane().add(no_confm_lbl);

		/**
		 * Combobox handler to choose specific specialty use getDoctorsBySpec to
		 * show the doctors in doctors table
		 */
		speciality.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				time_scrll_table.setVisible(false);
				lblTime.setVisible(false);
				btnSave.setEnabled(false);
				no_confm_lbl.setVisible(false);
				JComboBox cb = (JComboBox) e.getSource();
				spec = (String) cb.getSelectedItem();
				if (!spec.equals("")) {
					if (ref_ctrl.referralActiveForSpec(patient, spec)) {
						getDoctorsBySpec(spec);
						doctors_scrll_table.setVisible(true);
						lblDoctors.setVisible(true);
					} else {
						doctors_scrll_table.setVisible(false);
						lblDoctors.setVisible(false);
						btnSave.setEnabled(false);
						noApps_lbl.setVisible(false);
						no_confm_lbl.setVisible(true);
					}
				} else {
					doctors_scrll_table.setVisible(false);
					lblDoctors.setVisible(false);
					btnSave.setEnabled(false);
					noApps_lbl.setVisible(false);
					no_confm_lbl.setVisible(false);
				}

			}
		});

		/**
		 * Doctor table Handler , shows all available times for doctor by select
		 * doctor row . use the getTimes method from appointments controller
		 */

		doctors_table.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {

				if (event.getValueIsAdjusting())
					return;

				noApps_lbl.setVisible(false);
				btnSave.setEnabled(false);

				DefaultTableModel dm = (DefaultTableModel) time_table.getModel();

				dm.setRowCount(0);

				int row = doctors_table.getSelectedRow();

				if (row < 0)
					return;

				doctor_id = (String) doctors_table.getModel().getValueAt(row, 0);

				times = AppointmentsController.getTimes(doctor_id, patient.getSid());
				if (times.size() == 0) {
					noApps_lbl.setVisible(true);
					lblTime.setVisible(false);
					time_scrll_table.setVisible(false);
					return;
				}

				for (Appointment time : times) {

					dm.addRow(new Object[] { DateTime.getDateString(time.getAppointmentTime()),
							DateTime.getDayOfWeekString(time.getAppointmentTime()),
							DateTime.getTimeString(time.getAppointmentTime())

					});
				}

				lblTime.setVisible(true);
				time_scrll_table.setVisible(true);

			}
		});

		/**
		 * choose specific time to set as appointment
		 */

		time_table.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent event) {

				if (event.getValueIsAdjusting())
					return;
				if (time_table.getSelectedRow() > -1)
					btnSave.setEnabled(true);
			}
		});
		/**
		 * call to addNewAppointment method in appointment controller to add new
		 * appointment this handler send to the controller the patient id ,
		 * doctor id and time of appointment
		 */
		btnSave.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {

				int row = time_table.getSelectedRow();
				Date timeToSet = times.get(row).getAppointmentTime();
				if (AppointmentsController.addNewAppointment(doctor_id, patient.getSid(), timeToSet)) {
					Messages.successMessage("Appointment saved successfully", "Add new appointment", null);
					newApp.setVisible(false);
					appointments_class.getAppointments();
				} else {
					Messages.errorMessage(
							"Cannot complete the request, Please choose another appointment",
							"Add new appointment", null);
				}

			}
		});

		newApp.getContentPane().setFocusTraversalPolicy(new FocusTraversalOnArray(new Component[] { logo }));
		newApp.setBounds(100, 100, 481, 632);
		newApp.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		newApp.setLocationRelativeTo(null);
	}

	/**
	 * call getDoctorsBySpeciality method from appointments controller to show
	 * all doctors by specialty
	 * 
	 * @param spec
	 *            : the chooses specialty from the specialty combobox
	 */
	private void getDoctorsBySpec(String spec) {
		DefaultTableModel dm = (DefaultTableModel) doctors_table.getModel();
		dm.setRowCount(0);
		ArrayList<Object[]> doctors = AppointmentsController.getDoctorsBySpeciality(spec, patient.getSid());
		for (Object[] record : doctors) {
			dm.addRow(record);
		}
	}

	/**
	 * 
	 * @return current JFrame
	 */
	public JFrame getFrame() {
		return newApp;
	}
}
