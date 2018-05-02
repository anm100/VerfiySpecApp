package CodeGeneration;

import java.awt.List;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import Model.*;
import ToolGUI.ListTypeGUI;

public class JavaController {
	
	String code;
	
	public void GenerateScreen (File file, Screen s, String rootScreen) {
		String xmlFileName = getXmlFileName(s.getScreenName()); 
		
		// creating java code of screen	
		code = "package com.example."+getApplicationName(WorkSpace.getInstance().getWorkSpaceName())+";\n\n"+
				  "import android.support.v7.app.AppCompatActivity;\n"+
				  "import android.os.Bundle;\n"+
				  "import android.content.Intent;\n"+
				  "import java.util.ArrayList;\n"+
				  "import java.util.List;\n"+
				  "import android.widget.*;\n"+
				  "import android.view.View;\n\n"+
				  "public class ";
		if (s.getScreenName() != rootScreen) {
			code += s.getScreenName()+" extends AppCompatActivity {\n";
					  if (s.getDescription() != null)
						  code += "// Screen description: "+s.getDescription()+"\n";
					  setElementParameters(s);
					  code += " 	protected void onCreate(Bundle savedInstanceState) {\n"+
							  " 		super.onCreate(savedInstanceState);\n"+
							  " 		setContentView(R.layout."+xmlFileName+");\n\n";
		}
		else {
			code += "MainActivity extends AppCompatActivity {\n";
					  if (s.getDescription() != null)
						  code += "// Screen description: "+s.getDescription()+"\n";
					  setElementParameters(s);
					  code += " 	protected void onCreate(Bundle savedInstanceState) {\n"+
							  " 		super.onCreate(savedInstanceState);\n"+
							  " 		setContentView(R.layout.activity_main);\n\n";
		}	
		findViewsById(s);
		
		// GENERATORS. first generate LIST, then Button and OnOff
		
		Iterator<Entry<String, Element>> it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen	
		it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen
		while(it.hasNext()){	// going through all the elements in the screen. generate LIST
			Map.Entry pair2 =(Map.Entry) it.next(); 
			Element e = (Element)pair2.getValue();	
			if (e.getType() == ElementType.getListType()) 
				GenerateList((ListElementType) e);	
		}
		code += "    	}\n\n"; // end of OnCreate function
		it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen	
		while(it.hasNext()){	
			Map.Entry pair2 =(Map.Entry) it.next(); 
			Element e = (Element)pair2.getValue();		
			if (e.getType() == ElementType.getStandartBtnType()) 
				GenerateButton((StandartButtonType) e, rootScreen, s);
			if (e.getType() == ElementType.getOnOffType()) 
				GenerateOnOff((OnOffType) e);
		}
		code += "}\n";;
		
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
	
	private void GenerateButton (StandartButtonType e, String rootScreen, Screen s) { // writing into "code" only. when finished, "code" is written to the file. this is listener of button.
		String nameOfListenerOfButton = e.getELementName() + "_Listener";
		String nextScreen = ((StandartButtonType) e).getMoveTo();
		
		code += "	public void   "+nameOfListenerOfButton+" (View view) {\n";
		if (e.getComment() != " ")
			code += " 		// Button comment: "+e.getComment()+"\n";
		if (nextScreen != rootScreen) 
			code += " 		Intent intent = new Intent(this,  "+nextScreen+".class);\n";
		else 
			code += " 		Intent intent = new Intent(this,  MainActivity.class);\n";
		ArrayList <MyCondition> list = (ArrayList<MyCondition>) e.getConds();
		if (list.size() > 0) {
			setParametersValues(s);	// handle conditions
			String paramVal=" ";
			if (list.get(0).getParamVal().equals("OFF") || list.get(0).getParamVal().equals("NotEmpty"))
				paramVal = "false";
			if (list.get(0).getParamVal().equals("ON") || list.get(0).getParamVal().equals("Empty"))
				paramVal = "true";
			code += " 		if ( "+list.get(0).getParamName()+" == "+paramVal+" ";
			for (int i=1; i<list.size(); i++) {
				if (list.get(i).getParamVal().equals("OFF") || list.get(i).getParamVal().equals("NotEmpty"))
					paramVal = "false";
				if (list.get(i).getParamVal().equals("ON") || list.get(i).getParamVal().equals("Empty"))
					paramVal = "true";
				code += "&& "+list.get(i).getParamName()+" == "+paramVal+" ";
			}
			code += ") {\n";
		}
		
		code += " 		startActivity(intent);\n"+
				"		}\n		}\n\n";
	}
	
	private void GenerateOnOff (OnOffType e) {
		String nameOfListenerOfOnOff = e.getELementName() + "_Listener";
		code += "	public void   "+nameOfListenerOfOnOff+" (View view) {\n";
		if (e.getComment() != " ")
			code += " 		// "+e.getComment()+"\n";
		writeCommentActionsConditions(e);
		code += "	}\n\n";
	}
	
	private void GenerateList (ListElementType e) {
		String values[]={""} ;
		values=e.getValues();
		ArrayList<String> input = new ArrayList<String>();
		for (int i=0;i<values.length;i++)  { 
			input.add(values[i]);   
		} 
				code +="ListTypeGUI  listTypeGUI; "+"  Spinner spinner = (Spinner) findViewById(R.id.spinner); \n\n\n"+
	            "  spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {\n";
				if (e.getComment() != null)
					code += " // "+e.getComment()+"\n";
				code += "@Override \n"+
	            "public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {\n"
				+"String item = parent.getItemAtPosition(position).toString() \n\n\n;"+
	            "Toast.makeText(parent.getContext(),"+ "Selected: " + "item, Toast.LENGTH_LONG).show(); \n }"+
	            "@Override \n"+"public void onNothingSelected(AdapterView<?> adapterView) {\n}"+" });\n \n"+
	            "List<String> elements = new ArrayList<String>();\n\n" +"elements= "+input+";" +
	            "\n ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, elements);\n"
	            + " dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);\n"
	            + " spinner.setAdapter(dataAdapter);\n";
	}
	
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
	
	private void setElementParameters(Screen s) {
		Iterator<Entry<String, Element>> it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen
		while(it.hasNext()){	
			Map.Entry pair2 =(Map.Entry) it.next(); 
			Element e = (Element)pair2.getValue();
			if (e.getType() == ElementType.getEmptyNotEmptyType()) 
				code += "public static boolean "+e.getParamName()+"; // parameter of element "+e.getELementName()+". false means NotEmpty, true means Empty\n";
			if (e.getType() == ElementType.getOnOffType()) 
				code += "public static boolean "+e.getParamName()+"; // parameter of element "+e.getELementName()+". false means Off, true means On\n";
		}
	}
	
	private void findViewsById(Screen s) {	// connect between xml and java... setting elements. also show comment
		Iterator<Entry<String, Element>> it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen
		while(it.hasNext()){	
			Map.Entry pair2 =(Map.Entry) it.next(); 
			Element e = (Element)pair2.getValue();
			if (e.getType() == ElementType.getOnOffType()) {
				code += "\n		// switch comment: "+e.getComment()+"\n"+
						"		Switch "+e.getELementName()+"Switch = findViewById(R.id."+e.getELementName()+");\n";
			}
			if (e.getType() == ElementType.getEmptyNotEmptyType()) {
				code += "\n		// textview comment: "+e.getComment()+"\n"+
						"		TextView "+e.getELementName()+"Text = findViewById(R.id."+e.getELementName()+");\n";
				writeCommentActionsConditions(((EmptyNEmptyType)e));
			}
		}
	}
	
	private void setParametersValues(Screen s){
		Iterator<Entry<String, Element>> it = WorkSpace.getInstance().getScreenByName(s.getScreenName()).getElementsMap().entrySet().iterator();	// iterator for elements in screen
		while(it.hasNext()){	
			Map.Entry pair2 =(Map.Entry) it.next(); 
			Element e = (Element)pair2.getValue();
			if (e.getType() == ElementType.getOnOffType()) 
				code +="		"+ e.getParamName()+" = ((Switch)findViewById(R.id."+e.getELementName()+")).isChecked();\n";
			if (e.getType() == ElementType.getEmptyNotEmptyType()) 
				code +="		"+ e.getParamName()+" = ((TextView)findViewById(R.id."+e.getELementName()+")).getText().equals(\"\");\n";
		}
	}
	
	private void writeCommentActionsConditions(OnOffType e) {
		ArrayList<MyCondition> cond = e.getParameter().getCond();
		ArrayList<MyAction> act = e.getParameter().getAction();
		if (cond.size() > 0){
			code += " /* Conditions to be checked: \n";
			for (int i=0; i<cond.size(); i++)
				code += "	"+cond.get(i).getParamName() + " == "+ cond.get(i).getParamVal()+"\n";
		}
		if (act.size() > 0){
			code += " Actions to be done: \n";
			for (int i=0; i<act.size(); i++)
				code += "	"+act.get(i).getParamName() + " = "+ act.get(i).getParamVal()+"\n";
			code += " */ \n";
		}
	}
	
	private void writeCommentActionsConditions(EmptyNEmptyType e) {
		ArrayList<MyCondition> cond = e.getParameter().getCond();
		ArrayList<MyAction> act = e.getParameter().getAction();
		if (cond.size() > 0){
			code += " /* Conditions to be checked: \n";
			for (int i=0; i<cond.size(); i++)
				code += "	"+cond.get(i).getParamName() + " == "+ cond.get(i).getParamVal()+"\n";
		}
		if (act.size() > 0){
			code += " Actions to be done: \n";
			for (int i=0; i<act.size(); i++)
				code += "	"+act.get(i).getParamName() + " = "+ act.get(i).getParamVal()+"\n";
			code += " */ \n";
		}
	}
	
}
