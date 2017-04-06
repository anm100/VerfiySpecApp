package utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;




import Model.Element;
import Model.Screen;
import Model.WorkSpace;

public class WriteObject {
	
	//WorkSpace  

	public static void main(String args[]) {
		
		WriteObject obj = new WriteObject();
		WorkSpace w= WorkSpace.getInstance();
		w.setWorkSpaceName("name");
		Screen s = new Screen();
		s.setScreenName("main_screen");
		s.setDescription("aaaaaaaaaaaaaaaaaaaaaaaaaa");
		Element e =new Element(); 
		e.setElementName("element ana ahmad ");
		s.addElement(e);
		w.addScreen(s.getScreenName(),s);

		obj.serializeAddressJDK7(w);

	}

	public void serializeAddress(WorkSpace s) {

		FileOutputStream fout = null;
		ObjectOutputStream oos = null;

		try {

			fout = new FileOutputStream("filename.ser");
			oos = new ObjectOutputStream(fout);
			oos.writeObject(s);

			System.out.println("Done");

		} catch (Exception ex) {

			ex.printStackTrace();

		} finally {

			if (fout != null) {
				try {
					fout.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if (oos != null) {
				try {
					oos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		}
	}

	public void serializeAddressJDK7(WorkSpace s) {

	

	}

}
