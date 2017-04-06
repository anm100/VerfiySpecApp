package utils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import Model.Element;
import Model.Screen;
import Model.WorkSpace;

public class ReadObject {
	public static void main(String args[]) {

		ReadObject obj = new ReadObject();

		WorkSpace w = obj.deserialzeAddressJDK7("filename1.ser");
		
		System.out.println(w.getInstance().getWorkSpaceName());
		
	//	System.out.println(w.getInstance().getScreenByName("name").getElements().get(0).getElementName());

	}

	public WorkSpace deserialzeAddress(String filename) {

		WorkSpace s = null;

		FileInputStream fin = null;
		ObjectInputStream ois = null;

		try {

			fin = new FileInputStream(filename);
			ois = new ObjectInputStream(fin);
			s = (WorkSpace) ois.readObject();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {

			if (fin != null) {
				try {
					fin.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if (ois != null) {
				try {
					ois.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		}

		return s;

	}

	public WorkSpace deserialzeAddressJDK7(String filename) {


}
