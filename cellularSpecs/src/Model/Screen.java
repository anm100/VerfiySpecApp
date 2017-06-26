package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;




public class Screen implements Serializable,screenInterface{
	private String  screenName;
	private int  cordinateX;
	private int cordinateY;
	private int height;
	private int width;
	private String description;
	private ArrayList<String> transPromela= new ArrayList<String>();
	private HashMap <String,Element> elementsMap;
	/**
	 * @return the screenName
	 */
	public Screen()
	{
		this.elementsMap= new HashMap<String,Element>();
	}
	public Screen(String screenName,int cordinateX,int cordinateY,int height,int width,
			String description)
	{
	this.elementsMap= new HashMap<String,Element>();
	
	setScreenName(screenName); 
	this.cordinateX=cordinateX;
	this.cordinateY=cordinateY;
	this.height=height;
	this.width=width;
	this. description= description;
	}
	
	public Screen(String screenName,int cordinateX,int cordinateY,String description)
	{
	this.elementsMap= new HashMap<String,Element>();
	setScreenName(screenName); 
	this.cordinateX=cordinateX;
	this.cordinateY=cordinateY;
	this. description= description;
	}
	
	
	/*
	 *debug/////////////////
	 */
	
	public Screen(String s) {
		setScreenName(s); 
		this.elementsMap= new HashMap<String,Element>();

	}
	 /*
	*debug////////////////////
	 */
	public String getScreenName() {
		return screenName;
	}
	/**
	 * @param screenName the screenName to set
	 */
	public void setScreenName(String screenName) {
		this.screenName = Character.toUpperCase(screenName.charAt(0))+screenName.substring(1);
	}

	/**
	 * @return the cordinateX
	 */
	public int getCordinateX() {
		return cordinateX;
	}
	/**
	 * @param cordinateX the cordinateX to set
	 */
	public void setCordinateX(int cordinateX) {
		this.cordinateX = cordinateX;
	}
	/**
	 * @return the cordinateY
	 */
	public int getCordinateY() {
		return cordinateY;
	}
	/**
	 * @param cordinateY the cordinateY to set
	 */
	public void setCordinateY(int cordinateY) {
		this.cordinateY = cordinateY;
	}
	/**
	 * @return the height
	 */
	public int getHeight() {
		return height;
	}
	/**
	 * @param height the height to set
	 */
	public void setHeight(int height) {
		this.height = height;
	}
	/**
	 * @return the width
	 */
	public int getWidth() {
		return width;
	}
	/**
	 * @param width the width to set
	 */
	public void setWidth(int width) {
		this.width = width;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	public void addElement(Element s){
		this.elementsMap.put(s.getELementName(),s);	
	}
	public void remoceElement(String eLementName) {
		this.elementsMap.remove(eLementName);
		
	}
	public Element getElementByName(String elementName){
		return this.elementsMap.get(elementName);
	}
	public HashMap<String, Element> getElementsMap() {
		return elementsMap;
	}

	public void addTransPromela(String cond,String action,String toState) {
		this.transPromela.add("("+cond+")->atomic{"+action+"state="+toState+"};");
	}
	public void addTransPromela(String toState) {
		this.transPromela.add("atomic{state="+toState+"};");
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
		if(transPromela.size()==0){
			
			out ="\n"+"			 ::atomic{state="+this.getScreenName()+"};";
		}

		return 	startScreen+out
				+"\n"+"	  fi"; 
	}
	


}
