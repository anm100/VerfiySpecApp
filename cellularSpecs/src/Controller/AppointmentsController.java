package Controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;


import Model.MyAction;
import Model.Param;
import Model.WorkSpace;


/**
 * Appointments Controller . have all the methods that connect the client GUI to
 * the database . the methods send request to the database and recieve the
 * database results.
 * 
 * @author Muhamad Igbaria
 *
 */
public class AppointmentsController {

	/**
	 * send request to the database to delete (Cancel) an appointment
	 * 
	 * @param myAction
	 *            : Appointment instance to delete
	 * @return true if the cancel success , false else.
	 */
	public static boolean deleteAppointment(Param p,MyAction myAction) {
		
		WorkSpace.getLog().debug("action deleted");
		return true;
	}

	/**
	 * send request to database to return all available doctors specialties
	 * list.
	 * 
	 * @return String Array of all specialties ,the first String in the array is
	 *         empty String
	 */


	
//	public static Object setAppointmentDone(String doctor_id, String patient_id){
//		Request r = new Request("appointments/setAppointmentDone");
//		r.addParam("doctor_id", doctor_id);
//		r.addParam("patient_id", patient_id);
//		return Application.client.sendRequest(r);
//	}
	/**
	 * send request to database to return all available doctors by given
	 * specialty .
	 * 
	 * @param spec
	 *            : an specialty
	 * @param patient_id
	 *            : ptient id , to know when the last time this patient visit
	 *            every doctor.
	 * @return sorted arraylist of Objects which has three attributes:
	 * @return doctor name , clinic name, last visit (when was the last time
	 *         this patient visit this doctor)
	 * @return the list sorted In descending order by last visit
	 * 
	 */
//
//	public static ArrayList<Object[]> getDoctorsBySpeciality(String spec, String patient_id) {
//		Request r = new Request("doctors/bySpeciality");
//		r.addParam("speciality", spec);
//		r.addParam("patient_id", patient_id);
//
//		return (ArrayList<Object[]>) Application.client.sendRequest(r);
//	}
//
//	/**
//	 * send request to database to return all future patient's appointments
//	 * 
//	 * @param patient
//	 *            instance
//	 * @return Arraylist of patient's future Appointments
//	 */
//	public static ArrayList<Appointment> getPatientAppointments(Param patient) {
//		Request r = new Request("appointments/getPatientAppointments");
//		r.addParam("patient_id", patient.getSid());
//		Date curr = new Date();
//		try {
//			r.addParam("curr_date", DateTime.getDate(curr.getYear() + 1900, curr.getMonth() + 1, curr.getDate(),
//					curr.getHours(), curr.getMinutes()));
//		} catch (ParseException e) {
//			Config.getConfig().getLogger().exception(e);
//		}
//		return (ArrayList<Appointment>) Application.client.sendRequest(r);
//
//	}

	/**
	 * send request to database to return all available times to set an
	 * appointment , the times has to be not overlap with the patient's and
	 * doctor's appointments .
	 * 
	 * @param doctor_id
	 *            : doctor which the appointment set to him
	 * @param patient_id:
	 *            patient to set appointment fro him
	 * @return all available times for set appointment
	 */
//	public static ArrayList<Appointment> getTimes(String doctor_id, String patient_id) {
//		Request r = new Request("appointments/availableTimes");
//		try {
//			r.addParam("curr_time", DateTime.currentDate());
//		} catch (ParseException e) {
//			Config.getConfig().getLogger().exception(e);
//		}
//		r.addParam("doctor_id", doctor_id);
//
//		r.addParam("patient_id", patient_id);
//		return (ArrayList<Appointment>) Application.client.sendRequest(r);
//	}

	/**
	 * send request to database to add new appointment to appointments table
	 * 
	 * @param doctor_id
	 *            : doctor which the appointment set to him
	 * @param patient_id:
	 *            patient to set appointment fro him
	 * @param time
	 *            : the choosed time from available times to set as appointment
	 * @return true if the add success , false else.
	 */
//	public static boolean addNewAppointment(String doctor_id, String patient_id, Date time) {
//		Request r = new Request("appointments/add");
//		r.addParam("doctor_id", doctor_id);
//		r.addParam("patient_id", patient_id);
//		r.addParam("app_time", time);
//
//		return (boolean) Application.client.sendRequest(r);
//	}
}
