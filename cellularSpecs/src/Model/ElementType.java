package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ElementType implements Serializable {
	
	private final static String onOffType=new String ("ON,OFF");
	private final static String emptyNotEmpty=new String ("Empty,Not Empty");
	private final static String standartBtnType=new String ("Pressed,Not pressed");
	private final static String ListType=new String ("List");

	
	

 public static String getOnOffType()
 {
	 return onOffType;
 }
	
 public static String getEmptyNotEmptyType()
 {
	 return emptyNotEmpty;
 }
 public static String getStandartBtnType()
 {
	 return standartBtnType;
 }
 public static String getListType()
 {
	 return ListType;
 }

 }
		
	


