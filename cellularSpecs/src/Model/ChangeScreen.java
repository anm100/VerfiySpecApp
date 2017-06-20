package Model;
import java.util.ArrayList;


public class ChangeScreen implements screenInterface{
	private String  screenName;
	private ArrayList<String> transPromela= new ArrayList<String>();
  
	public ChangeScreen(String s) {
		this.screenName="change"+s;

	}
	
	
	public void addTransPromela(String cond,String action,String toState) {
		this.transPromela.add("("+cond+")->atomic{"+action+"state="+toState+"};");
	}
	public void addTransPromela(String action,String toState) {
		this.transPromela.add("atomic{"+action+"state="+toState+"};");
	}


	public String getScreenName() {
		return screenName;
	}
	/**
	 * @param screenName the screenName to set
	 */
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}


	public ArrayList<String> getTransPromela() {
		return transPromela;
	}
	public  String getStringPromela(){
		String startScreen=new String("	::(state=="+this.getScreenName()+")->\n"+"	  if");
		String out= new String ("");

		for(String i : transPromela)
		{
			out +="\n"+"		 ::"+i;
		}
		return 	startScreen+out
				+"\n"+"	  fi"; 
	}
	

}
