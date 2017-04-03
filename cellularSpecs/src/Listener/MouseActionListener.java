package Listener;

import java.awt.Dimension;
import java.awt.Point;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;

import ToolGUI.MainScreenGui;






public class MouseActionListener implements MouseListener,MouseMotionListener   {
	public  int x1,y1;
	public int x2,y2;
	MainScreenGui mainScreenGui;
	@Override
	public void mouseClicked(MouseEvent me) {

		// TODO Auto-generated method stub

		
	}

	@Override
	public void mouseEntered(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub
		 y1=arg0.getY(); 
	  	  x1=arg0.getX(); 
	  	//mainScreenGui.S.setLocation(x1, y1);
	  	System.out.println(x1);
			mainScreenGui.removeMouseListener(this);
		
	}

	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void mouseDragged(MouseEvent arg0) {
		// TODO Auto-generated method stub

		
	}

	@Override
	public void mouseMoved(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}


	


}
