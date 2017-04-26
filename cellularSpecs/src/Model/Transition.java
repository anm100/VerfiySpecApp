package Model;

import java.io.Serializable;

public class Transition implements Serializable {
	private int TransitionID ; 
	private Screen fromScreen; 
	private Screen toScreen ;
	
	
	public Transition(Screen fromScreen, Screen toScreen) {
		super();
		this.fromScreen = fromScreen;
		this.toScreen = toScreen;
	}
	public int getTransitionID() {
		return TransitionID;
	}
	public void setTransitionID(int transitionID) {
		TransitionID = transitionID;
	}
	public Screen getFromScreen() {
		return fromScreen;
	}
	public void setFromScreen(Screen fromScreen) {
		this.fromScreen = fromScreen;
	}
	public Screen getToScreen() {
		return toScreen;
	}
	public void setToScreen(Screen toScreen) {
		this.toScreen = toScreen;
	} 
	
	
	

}
