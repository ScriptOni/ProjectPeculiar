package com.controllers;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.JButton;
import com.views.*;
import com.models.Model;
import com.views.auth.*;



public class Controller implements ActionListener{
	
	private AuthFormView authView;
	private View view;
	private Model model;
	public Controller(AuthFormView authView,Model model){
		this.authView = authView;
		this.model = model;
		setComponents();
		setActionListener();
	}
	private void setComponents(){
		view = new View();
	}
	private void setActionListener(){
		authView.addActionListener(this);
		view.addActionListener(this);
	}
	public void actionPerformed(ActionEvent ev){
		authView.setAuthenticated(ev,view);
		if(ev.getSource() == view.getSource(0)){
				System.out.println("hello");
		}
	}
}