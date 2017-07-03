package Controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;

import javax.annotation.processing.Processor;

import Model.WorkSpace;

public class RunSpin {

	//static String promela=new String("C:\\Users\\Ahmad Mnasra\\Desktop\\FinalProject\\VerfiySpecApp\\cellularSpecs\\");
	//static String promela=new String("C:\\Users\\saeed\\VerfiySpecApp\\cellularSpecs\\");
	//static String PGpath=new String ("C:\\verification\\");
	static String fileslocation=new String("C:\\verification\\");
	static String batfileName=new String("runbat.bat");
	static String scriptfileName=new String("runScript.vbs");
	public static void verifyUsingSpin() throws IOException, InterruptedException {
		int count=0;
		creterVBSfile();
		for(int i=0;i<WorkSpace.getReqlist().size();i++)
		{
			if(WorkSpace.getReqlist().get(i).isSelected()){
			for(int j=1;j<=WorkSpace.getReqlist().get(i).getLtlCount();j++)
			{
				removeOutFile();
				String req="";
				WorkSpace.getReqlist().get(i).getrID();
				if(WorkSpace.getReqlist().get(i).getLtlCount()>1)
				req=WorkSpace.getReqlist().get(i).getrID()+"_"+j;
				else
				req=WorkSpace.getReqlist().get(i).getrID();
				createbat(req);
				runScript();
				if(!getResult())
				{
				break;
				}
				
			}
			if(getResult())
				WorkSpace.getReqlist().get(i).setResult(true);
			else
				WorkSpace.getReqlist().get(i).setResult(false);
		}
		}
	}

	private static void removeOutFile() {
		File outCheckfile=new File(fileslocation+"OutReq.txt");

		if(outCheckfile.exists())
		{
			boolean p = outCheckfile.delete();
			while(!p)
			{
				p = outCheckfile.delete();
				System.out.println(p);
			}
			System.out.println("delete OutReq");
		}
		
	}

	private static Boolean getResult() throws FileNotFoundException {
		Scanner scan=new Scanner(new File(fileslocation+"OutReq.txt"));
		Boolean flag=false;
		while(scan.hasNext()){
		String line=scan.nextLine().toLowerCase().toString();
		if(line.contains("errors: 0"))
		{
			flag=true;

			break;
		}
		else
			flag=false;
		}
		scan.close();
		return flag;	
	}

	private static void runScript() throws IOException, InterruptedException {			
	String runbat=fileslocation+batfileName;
	//if (WorkSpace.getLog().isDebug()==true)
		//System.out.println("arg0");
	Process p=Runtime.getRuntime().exec("cmd /c start/wait "+runbat);
	WorkSpace.getLog().debug("Watting for batch file");
	WorkSpace.getLog().debug("RunSpin-waitting!!");
	p.waitFor();
	WorkSpace.getLog().debug("RunSpin-finished");
	p.exitValue();
	//if (WorkSpace.getLog().isDebug()==false)
		//  Runtime.getRuntime().exec( "wscript exe/excute.vbs" );
	}
	private static void createbat(String req) throws IOException {

				String str="cd "+fileslocation+"\n"
						+"spin -a "+WorkSpace.getInstance().getWorkSpaceName()+".pml\n"
						+"gcc -DMEMLIM=1024 -O2 -DXUSAFE -w -o pan pan.c \n"
						+"pan -m10000  -a -N "+req +">> OutReq.txt \n"
						+"exit \n";
				String  s=fileslocation+batfileName;
				File file=new File(s);
				FileOutputStream is=new FileOutputStream(file);
				OutputStreamWriter osw=new OutputStreamWriter(is);
				Writer w=new BufferedWriter(osw);
				w.write(str);
				w.close();

		
	}

	private static void creterVBSfile() throws IOException {
		String st="Set WshShell = CreateObject("+'"'+"WScript.Shell"+'"'+")\n"
				+"WshShell.Run chr(34) & "+"'"+batfileName+"'"+" & Chr(34), 0\n"+
				"Set WshShell = Nothing\n";
		String  s=fileslocation+scriptfileName;
		File file=new File(s);
		FileOutputStream is=new FileOutputStream(file);
		OutputStreamWriter osw=new OutputStreamWriter(is);
		Writer w=new BufferedWriter(osw);
		w.write(st);
		w.close();
	}

}
