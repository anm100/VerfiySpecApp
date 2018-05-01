package CodeGeneration;




///////////// YAEL REMEMBER TO RETURN THE FILES AND PATHS

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.DirectoryNotEmptyException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
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
	
	public void GenerateAutomaticFiles() { // Here will be generated all directories and files
		GenerateManifestFile();
	} // Here will be generated all directories and files
	
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
				//javaFile = new File(path.toString()+"/"+"src"+"/"+"main"+"/"+"java"+"/"+"com"+"/"+"example"+"/"+getApplicationName(WorkSpace.getInstance().getWorkSpaceName())+"/"+screenJavaName+".java"); 
				javaFile = new File(path.toString()+"/"+screenJavaName+".java"); 
			else {
				//javaFile = new File(path.toString()+"/"+"src"+"/"+"main"+"/"+"java"+"/"+"com"+"/"+"example"+"/"+getApplicationName(WorkSpace.getInstance().getWorkSpaceName())+"/MainActivity.java");
				javaFile = new File(path.toString()+"/MainActivity.java"); 
				if(javaFile.exists()) {
					javaFile.delete();
					try {
						javaFile.createNewFile();
					} catch (IOException e) {
						WorkSpace.getLog().debug("ASPC> Problem occurred while generating automatic files");
						e.printStackTrace();
					}
				}
			}
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
				//xmlFile = new File(path.toString()+"/"+"src"+"/"+"main"+"/"+"res"+"/"+"layout"+"/"+screenXmlName+".xml"); 
				xmlFile = new File(path.toString()+screenXmlName+".xml");
			else { 
				try{
		            Files.deleteIfExists(Paths.get(path.toString()+"/"+"src"+"/"+"main"+"/"+"res"+"/"+"layout"+"/main.xml"));
		        }
		        catch(NoSuchFileException e) {
		            System.out.println("ASPC> Problem occurred generating files: No such file/directory exists");
		        }
		        catch(DirectoryNotEmptyException e){
		            System.out.println("ASPC> Problem occurred generating files: Directory is not empty.");
		        }
		        catch(IOException e)
		        {
		            System.out.println("ASPC> Problem occurred generating files: Invalid permissions.");
		        } 
		        System.out.println("Deletion successful.");
			    // xmlFile = new File(path.toString()+"/"+"src"+"/"+"main"+"/"+"res"+"/"+"layout"+"/activity_main.xml"); 
		        xmlFile = new File(path.toString()+"/activity_main.xml"); 
			
			    }
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
	
	private void GenerateManifestFile(){	
		///////////////////////////////
		File manifestFile = new File("D:\\AndroidManifest.xml"); // change
		String code = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"+
					  "<manifest xmlns:android=\"http://schemas.android.com/apk/res/android\"\n"+
					  "    package=\"com.example."+getApplicationName(WorkSpace.getInstance().getWorkSpaceName())+"\">\n\n"+
					  "    <application\n"+
				      "			android:allowBackup=\"true\"\n"+
				      "			android:icon=\"@mipmap/ic_launcher\"\n"+
				      "			android:label=\"@string/app_name\"\n"+
				      "			android:roundIcon=\"@mipmap/ic_launcher_round\"\n"+
				      "			android:supportsRtl=\"true\"\n"+
				      "			android:theme=\"@style/AppTheme\">\n"+
        			  "			<activity android:name=\".MainActivity\">\n"+
        			  "				<intent-filter>\n"+
        			  "					<action android:name=\"android.intent.action.MAIN\" />\n\n"+
        			  "					<category android:name=\"android.intent.category.LAUNCHER\" />\n"+
        			  "				</intent-filter>\n"+
        			  "			</activity>\n";
		Iterator<Entry<String, Screen>> it = workSpace.getScreensMap().entrySet().iterator(); // iterator for screens
		while(it.hasNext()){		// going through all the screens
			Map.Entry pair =(Map.Entry) it.next(); 
			Screen screen = (Screen)pair.getValue();	// current screen
			if (screen.getScreenName() != rootScreen)
				if (it.hasNext()) 
					code += "		<activity android:name=\"."+screen.getScreenName()+"\" />\n";
				else code += "		<activity android:name=\"."+screen.getScreenName()+"\"></activity>\n";
		}
		code += "	</application>\n\n";
		code += "</manifest>";  
		try {		// writing all code to manifest file
			FileWriter fw = new FileWriter(manifestFile, true);
			PrintWriter pw = new PrintWriter(fw, true);
			pw.println(code);
			pw.close();
		} 
		catch (IOException ex) {
			ex.printStackTrace();
			WorkSpace.getLog().debug("Failed handling files in ASPC.GenerateMenifestFile");
		}
	}
	
	private String getApplicationName(String workSpaceName){
		return workSpaceName.toLowerCase();
	}
}








