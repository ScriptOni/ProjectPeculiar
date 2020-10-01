
package com.views;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


public class View extends JFrame {
	
	private MainView mainView;
	private JButton button;
	public View(){
		setInitializer();
		setComponents();
		
	}
	private void setInitializer(){
		try{
		   UIManager.setLookAndFeel(Constants.FRAME_LOOK_AND_FEEL);
		   setTitle(Constants.FRAME_TITLE);
		   setSize(Constants.FRAME_WIDTH,Constants.FRAME_HEIGHT);
		   setUndecorated(Constants.FRAME_UNDECORATED);
       	   setIconImage(new ImageIcon(Constants.FRAME_LOGO_URL).getImage());
	       setDefaultCloseOperation(Constants.FRAME_CLOSE_OPERATION);
	       setLocationRelativeTo(Constants.FRAME_LOCATION);
		   setResizable(Constants.FRAME_RESIZABLE);
		   setExtendedState(Constants.FRAME_EXTENDED_STATE);		   
		   setLayout(Constants.FRAME_LAYOUT);
	   }catch(Exception e){
	       e.printStackTrace();
	   }
	}
	private void setComponents(){
		mainView = new MainView();
		add(mainView,Constants.CENTER);
	}
	public void addActionListener(ActionListener listener){
		
	}
	public Object getSource(int index){
		return null;
		
	}
}
