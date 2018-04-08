package CodeGeneration;

import java.io.*;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.*;

public class JavaController {
	
	String code;
	
	public void GenerateScreen (File file, Screen s, String rootScreen) {
		String xmlFileName = getXmlFileName(s.getScreenName()); 
		
		// creating java code of screen	
		code = "package com.example."+getApplicationName(WorkSpace.getInstance().getWorkSpaceName())+"\n;"+
				  "import android.support.v7.app.AppCompatActivity;\n"+
				  "import android.os.Bundle;\n\n"+
				  "public class ";
		if (s.getScreenName() != rootScreen)
			code += s.getScreenName()+" extends AppCompatActivity {\n"+
					  " 	protected void onCreate(Bundle savedInstanceState) {\n"+
					  " 		super.onCreate(savedInstanceState);\n"+
					  " 		setContentView(R.layout."+xmlFileName+");\n"+
					  "    	}\n"+
					  "}\n";
		else
			code += "MainActivity extends AppCompatActivity {\n"+
					  " 	protected void onCreate(Bundle savedInstanceState) {\n"+
					  " 		super.onCreate(savedInstanceState);\n"+
					  " 		setContentView(R.layout.activity_main);\n"+
					  "    	}\n"+
					  "}\n";
		
		
		Iterator<Entry<String, Element>> it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen
		while(it.hasNext()){	// going through all the elements in the screen
			Map.Entry pair2 =(Map.Entry) it.next(); 
			Element e = (Element)pair2.getValue();		// current element. generate for all types of elements
			if (e.getType() == ElementType.getStandartBtnType()) 
				GenerateButton((StandartButtonType) e);
			if (e.getType() == ElementType.getOnOffType()) 
				GenerateOnOff((OnOffType) e);
			if (e.getType() == ElementType.getListType()) 
				GenerateList((ListElementType) e);	
		}
		
		try {		// writing all code to java screen file
			FileWriter fw = new FileWriter(file, true);
			PrintWriter pw = new PrintWriter(fw, true);
			pw.println(code);
			pw.close();
		} 
		catch (IOException ex) {
			ex.printStackTrace();
			WorkSpace.getLog().debug("Failed handling files in JavaController.GenerateScreen");
		}
	}
	
	private void GenerateButton (StandartButtonType e) { // writing into "code" only. when finished, "code" is written to the file
		String nameOfListenerOfButton = e.getELementName() + "_Listener";
		String nextScreen = ((StandartButtonType) e).getMoveTo();
		code += "";
		WorkSpace.getLog().debug("CHECK GIT");
	}
	
	private void GenerateOnOff (OnOffType e) {}
	
	private void GenerateEmptyNotEmpty (EmptyNEmptyType e) {}
	
	private void GenerateList (ListElementType e) {}
	
	private String getXmlFileName(String screenName){
		String xmlFileName=null;
		String[] r = screenName.split("(?=\\p{Upper})");
		xmlFileName="activity"+"_";
		for(int i=0;i<r.length;i++) 	{
		xmlFileName=(xmlFileName+r[i].toLowerCase());
		if(i<r.length-1)
		xmlFileName+="_";
		}
		return xmlFileName; 
	}
	
	private String getApplicationName(String workSpaceName){
		return workSpaceName.toLowerCase();
	}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
