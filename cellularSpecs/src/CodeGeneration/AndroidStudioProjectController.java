package CodeGeneration;

import java.io.File;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import Model.*;

public class AndroidStudioProjectController {
	
	JavaController java;
	XmlController xml;
	WorkSpace workSpace;
	String rootScreen;
	Path path;
	
	public AndroidStudioProjectController(String rootSc, Path p) {
		java = new JavaController();
		xml = new XmlController();
		workSpace = WorkSpace.getInstance();
		rootScreen = rootSc;
		path = p;
	}
	
	public void GenerateAutomaticFiles() {}
	
	public void GenerateJavaFiles() {			 // for all screens: java.generateScreen
		String screenJavaName;
		Screen screen = new Screen();
		Iterator<Entry<String, Screen>> it = workSpace.getScreensMap().entrySet().iterator(); // iterator for screens
		while(it.hasNext()){		// going through all the screens
			Map.Entry pair =(Map.Entry) it.next(); 
			screen = (Screen)pair.getValue();	// current screen
			screenJavaName = screen.getScreenName();
			WorkSpace.getLog().debug("ASPC> Generating JAVA file of screen: "+screen.getScreenName());
			File javaFile;
			if (screen.getScreenName() != rootScreen)
				javaFile = new File("D:/FINAL _PROJECT/Generated_Files/"+screenJavaName+".java"); // CHANGE!!! path according to user
			else javaFile = new File("D:/FINAL _PROJECT/Generated_Files/MainActivity.java"); // CHANGE!!! path according to user
			java.GenerateScreen(javaFile, screen,  rootScreen);
		}	
	} 
	
	public void GenerateXmlFiles() {			// for all screens: xml.generateScreen
		String screenXmlName;
		Screen screen = new Screen();
		Iterator<Entry<String, Screen>> it = workSpace.getScreensMap().entrySet().iterator(); // iterator for screens
		while(it.hasNext()){		// going through all the screens
			Map.Entry pair =(Map.Entry) it.next(); 
			screen = (Screen)pair.getValue();	// current screen
			screenXmlName =getXmlFileName(screen.getScreenName());	
			WorkSpace.getLog().debug("ASPC> Generating XML file of screen: "+screen.getScreenName());
			File xmlFile;
			if (screen.getScreenName() != rootScreen)
				xmlFile = new File("D:/FINAL _PROJECT/Generated_Files/"+screenXmlName+".xml"); // CHANGE!!! path according to user
			else xmlFile = new File("D:/FINAL _PROJECT/Generated_Files/activity_main.xml"); // CHANGE!!! path according to user
			xml.GenerateScreen(xmlFile, screen, rootScreen);
		}
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
}








