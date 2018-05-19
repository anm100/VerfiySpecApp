package CodeGeneration;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.*;

public class XmlController {
	
	String code;
	
	public void GenerateScreen (File file, Screen s, String rootScreen) {	
		// creating xml code of screen
		code = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"+
			   "<android.support.constraint.ConstraintLayout\n"+
			   "xmlns:android=\"http://schemas.android.com/apk/res/android\"\n"+
			   "	xmlns:app=\"http://schemas.android.com/apk/res-auto\"\n"+
			   "  	xmlns:tools=\"http://schemas.android.com/tools\"\n"+
			   "  	android:layout_width=\"match_parent\"\n"+
			   "  	android:layout_height=\"match_parent\"\n";
		if (s.getScreenName() != rootScreen)
			code += "  	tools:context=\"com.example."+getApplicationName(WorkSpace.getInstance().getWorkSpaceName())+"."+s.getScreenName()+"\"> \n";
		else
			code += "  	tools:context=\"com.example."+getApplicationName(WorkSpace.getInstance().getWorkSpaceName())+".MainActivity\"> \n";
		
		Iterator<Entry<String, Element>> it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen
		while(it.hasNext()){	// going through all the elements in the screen
			Map.Entry pair2 =(Map.Entry) it.next(); 
			Element e = (Element)pair2.getValue();		// current element. generate for all types of elements
			if (e.getType() == ElementType.getStandartBtnType()) 
				GenerateButton((StandartButtonType) e);
			if (e.getType() == ElementType.getOnOffType()) 
				GenerateOnOff((OnOffType) e);
			if (e.getType() == ElementType.getEmptyNotEmptyType())
					GenerateEmptyNotEmpty((EmptyNEmptyType) e);
			if (e.getType() == ElementType.getListType()) 
				GenerateList((ListElementType) e);
		}
		code += "  </android.support.constraint.ConstraintLayout>\n";
		
		try {		// writing all code to java screen file
			FileWriter fw = new FileWriter(file, true);
			PrintWriter pw = new PrintWriter(fw, true);
			pw.println(code);
			pw.close();
		} 
		catch (IOException ex) {
			ex.printStackTrace();
			WorkSpace.getLog().debug("Failed handling files in XmlController.GenerateScreen");
		}
	}
	
	private void GenerateButton (StandartButtonType e) { // Screen size in dp is about 500x250dp		
		String nameOfListenerOfButton = e.getELementName() + "_Listener";
		code += "<Button\n"+
				" 	android:id=\"@+id/"+e.getELementName()+"\"\n"+
				"   android:layout_width=\"128dp\"\n"+			// size of button
				"   android:layout_height=\"58dp\"\n"+			// size of button
				"   android:layout_marginBottom=\""+ getBottom(e) + "dp\"\n"+		// button position (location) in screen
				"   android:layout_marginRight=\""+ getRight(e) + "dp\"\n"+
				"   android:onClick=\""+nameOfListenerOfButton+"\"\n"+
				"   android:text=\""+e.getELementName()+"\"\n"+
				"   app:layout_constraintBottom_toBottomOf=\"parent\"\n"+
				"   app:layout_constraintRight_toRightOf=\"parent\" />\n\n\n";			
	}
	
	private void GenerateOnOff (OnOffType e) {
		code += "<Switch"+
				"    android:id=\"@+id/"+e.getELementName()+"\"\n"+
				"    android:layout_width=\"128dp\"\n"+
				"    android:layout_height=\"58dp\"\n"+
				"    android:layout_marginBottom=\""+ getBottom(e) + "dp\"\n"+		
				"    android:layout_marginRight=\""+ getRight(e) + "dp\"\n"+
				"    android:text=\""+e.getELementName()+"\"\n"+
				"    app:layout_constraintBottom_toBottomOf=\"parent\"\n"+
				"    app:layout_constraintRight_toRightOf=\"parent\" />\n\n\n";		
	}
	
	private void GenerateEmptyNotEmpty (EmptyNEmptyType e) {
		code +="<EditText"+
		       "     android:id=\"@+id/"+e.getELementName()+"\"\n"+
			   "     android:layout_width=\"128dp\"\n"+
		       "     android:layout_height=\"58dp\"\n"+
		       "     android:layout_marginBottom=\""+ getBottom(e) + "dp\"\n"+		
		       "     android:layout_marginRight=\""+ getRight(e) + "dp\"\n"+
			   "     android:text=\""+e.getELementName()+"\"\n"+   	
				"    app:layout_constraintBottom_toBottomOf=\"parent\"\n"+
				"    app:layout_constraintRight_toRightOf=\"parent\" />\n\n\n";		
	}
	
	private void GenerateList (ListElementType e) {
		code +="<Spinner"+
	          "      android:id=\"@+id/"+e.getELementName()+"\"\n"+
			  "      android:layout_width=\"128dp\"\n"+	
	          "      android:layout_height=\"58\"\n"+
	          "      android:layout_marginBottom=\""+ getBottom(e) + "dp\"\n"+	
	          "      android:layout_marginRight=\""+ getRight(e) + "dp\"\n"+
	          "      app:layout_constraintBottom_toBottomOf=\"parent\"\n"+
	          "      app:layout_constraintRight_toRightOf=\"parent\"/>\n\n\n"; 				
	}
	
	private String getApplicationName(String workSpaceName){
		return workSpaceName.toLowerCase();
	}
	
	private int getRight(Element e){
		int dp=0;
		if (e.getIndex() <= 3)
			dp = 200;
		else
			dp = 45;
		return dp;
	}
	
	private int getBottom(Element e){
		int dp=0; 
		if (e.getIndex()==0 || e.getIndex()==4)
			dp = 437;
		if (e.getIndex()==1 || e.getIndex()==5)
			dp = 312;
		if (e.getIndex()==2 || e.getIndex()==6)
			dp = 187;
		if (e.getIndex()==3 || e.getIndex()==7)
			dp = 62;
		return dp;	
	}

}
