package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public class CreatePromela {

	  public static void main(String[] args) {
	try{
	   
	    File file = new File ("D:/file.txt");
	    PrintWriter writer = new PrintWriter(file);
	    writer.println("The first line");
	    writer.println("The second line");
	    writer.close();
	} catch (IOException e) {
	   // do something
}
	  }
}
	  