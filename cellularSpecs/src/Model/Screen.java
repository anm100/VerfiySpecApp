package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import ToolGUI.ScreenGUI;

public class Screen implements Serializable{
	private String  screenName;
	private int  cordinateX;
	private int cordinateY;
	private int height;
	private int width;
	private String description;
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
	this.screenName=screenName;
	this.cordinateX=cordinateX;
	this.cordinateY=cordinateY;
	this.height=height;
	this.width=width;
	this. description= description;
	}
	
	public Screen(String screenName,int cordinateX,int cordinateY,String description)
	{
	this.elementsMap= new HashMap<String,Element>();
	this.screenName=screenName;
	this.cordinateX=cordinateX;
	this.cordinateY=cordinateY;
	this. description= description;
	}
	
	
	/*
	 *debug/////////////////
	 */
	
	public Screen(String s) {
		this.screenName=s;
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
		this.screenName = screenName;
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
	
	public void addElement(String elementName , Element s){
		this.elementsMap.put(elementName,s);	
	}
	public Element getElementByName(String elementName){
		return this.elementsMap.get(elementName);
	}
	public HashMap<String, Element> getElementsMap() {
		return elementsMap;
	}
	public  String getStringPromela(){
		Element e ;
		String elemets=new String("");
		Iterator it = this.elementsMap.entrySet().iterator();
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			e= (Element)pair.getValue();
			elemets+=""+e.getStringPromela()+"\n";
		}

		return "::(state=="+this.getScreenName()+")->\n"
				+"if\n"
				+elemets
				+"fi"; 
	}
	public  String getChangeStates(){
		Element e ;
		String states=new String("");
		Iterator it = this.elementsMap.entrySet().iterator();
		while(it.hasNext()){
			Map.Entry pair =(Map.Entry) it.next(); 
			e= (Element)pair.getValue();
			states+="Cahnge"+this.getScreenName()+e.getParamName()+",";
		}
		return states;
	}
}
