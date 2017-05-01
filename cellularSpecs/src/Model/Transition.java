package Model;

import java.io.Serializable;

public class Transition implements Serializable {
	private int TransitionID ; 
	private String fromScreen; 
	private String toScreen ;
	
	
	public Transition(String string, String string2) {
		super();
		this.fromScreen = string;
		this.toScreen = string2;
	}
	public int getTransitionID() {
		return TransitionID;
	}
	public void setTransitionID(int transitionID) {
		TransitionID = transitionID;
	}
	public String getFromScreen() {
		return fromScreen;
	}
	public void setFromScreen(String fromScreen) {
		this.fromScreen = fromScreen;
	}
	public String getToScreen() {
		return toScreen;
	}
	public void setToScreen(String toScreen) {
		this.toScreen = toScreen;
	} 
	
	
	

}
