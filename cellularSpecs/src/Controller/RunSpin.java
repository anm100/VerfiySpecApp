package Controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import Model.WorkSpace;

public class RunSpin {
	static String filelocation=new String("C:\\verification\\");
	static String promela=new String("C:\\Users\\Ahmad Mnasra\\Desktop\\FinalProject\\VerfiySpecApp\\cellularSpecs\\");
	static String batfile=new String("runbat.bat");
	public static void verifyUsingSpin() throws IOException {
		int count=0;
		creterVBSfile();
		//for(int i=0;i<WorkSpace.getReqlist().size();i++)
			count+=WorkSpace.getReqlist().get(0).getLtlCount();	
		//for(int i=0;i<count;i++)
		{
			for(int j=1;j<=WorkSpace.getReqlist().get(0).getLtlCount();j++)
			{
				
				String req="";
				WorkSpace.getReqlist().get(0).getrID();
				req=WorkSpace.getReqlist().get(0).getrID()+"_"+j;
				createbat(req,promela);
				runScript();
			}
		}
		
	}

	private static void runScript() throws IOException {
		String runbat=filelocation+batfile;
	//if (WorkSpace.getLog().isDebug()==true)
	Runtime.getRuntime().exec("cmd /c start "+runbat);
	//if (WorkSpace.getLog().isDebug()==false)
		//  Runtime.getRuntime().exec( "wscript exe/excute.vbs" );
	}
	private static void createbat(String req, String promela2) throws IOException {
				String str="spin -a "+ promela2+"examplePG.pml\n"
						+"gcc -DMEMLIM=1024 -O2 -DXUSAFE -w -o pan pan.c\n"
						+"pan -m10000  -a -N "+req +">> outreq11.txt";
				String  s=filelocation+batfile;
				File file=new File(s);
				FileOutputStream is=new FileOutputStream(file);
				OutputStreamWriter osw=new OutputStreamWriter(is);
				Writer w=new BufferedWriter(osw);
				w.write(str);
				w.close();

		
	}

	private static void creterVBSfile() throws IOException {
		String st="Set WshShell = CreateObject("+'"'+"WScript.Shell"+'"'+")\n"
				+"WshShell.Run chr(34) & "+"'"+batfile+"'"+" & Chr(34), 0\n"+
				"Set WshShell = Nothing\n";
		String  s=filelocation+"runScript.vbs";
		File file=new File(s);
		FileOutputStream is=new FileOutputStream(file);
		OutputStreamWriter osw=new OutputStreamWriter(is);
		Writer w=new BufferedWriter(osw);
		w.write(st);
		w.close();
	}
	public static void main(String[] args) {
		try {
			creterVBSfile();
			
			createbat("req",promela);
			runScript();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}

}
