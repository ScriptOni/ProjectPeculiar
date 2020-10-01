package com.views.auth;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import com.views.Constants;


public class AuthFormView extends JFrame{
	private LoginView loginView;
	private RegisterView registerView;


	private ArrayList<String> usernames;
	private ArrayList<String> passwords;
	private JLabel titleLbl;
	private JButton loginBtn,registerBtn;
	private JLabel copyrightLbl;
	public AuthFormView(){
		setInitializer();
		setComponents();
		setUI();
		setVisible(Constants.FRAME_VISIBLITY);
	}
	private void setInitializer(){
		try{
		   UIManager.setLookAndFeel(Constants.FRAME_LOOK_AND_FEEL);
		   setTitle(Constants.AUTH_TITLE);
		   setSize(Constants.FRAME_WIDTH-500,Constants.FRAME_HEIGHT-300);
		   setUndecorated(Constants.FRAME_UNDECORATED);
       	   setIconImage(new ImageIcon(Constants.FRAME_LOGO_URL).getImage());
	       setLocationRelativeTo(Constants.FRAME_LOCATION);
		   setResizable(false);
		   setLayout(new GridBagLayout());
	   }catch(Exception e){
	       e.printStackTrace();
	   }
	}
	private void setComponents(){
		loginView    = new LoginView();
		registerView = new RegisterView();
		
		titleLbl     = new JLabel(Constants.AUTH_TITLE);
		loginBtn     = new JButton(Constants.AUTH_STRINGS[0]);
		registerBtn  = new JButton(Constants.AUTH_STRINGS[1]);
		copyrightLbl  = new JLabel(Constants.COPYRIGHT);

		loginBtn.setPreferredSize(new Dimension(100,40));
		registerBtn.setPreferredSize(new Dimension(100,40));

		usernames = new ArrayList<String>();
		passwords = new ArrayList<String>();
		usernames.add("admin");
		passwords.add("admin");
		usernames.add("root");
		passwords.add("root");
	
		var gc 		 = new GridBagConstraints();
		var insets 	 = new Insets(5,0,5,0);
		gc.gridx = 0; gc.gridy = 0;gc.insets = insets;add(titleLbl,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets;add(copyrightLbl,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets;add(loginBtn,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets;add(registerBtn,gc);
		
	}
	private void setUI(){
		titleLbl.setFont(Constants.FONT_TITLE_ARIAL);
		loginBtn.setFont(Constants.FONT_ARIAL);
		registerBtn.setFont(Constants.FONT_ARIAL);
		copyrightLbl.setFont(Constants.FONT_SMALL_ARIAL);

		


	}
	public void addActionListener(ActionListener listener){
		loginBtn.addActionListener(listener);
		registerBtn.addActionListener(listener);
		loginView.addActionListener(listener);
		registerView.addActionListener(listener);
	}
	public void setAuthenticated(ActionEvent ev,Component component){
		
		var source 	  = ev.getSource();
		var submitBtn = loginView.getSource(0);
		var saveBtn   = registerView.getSource(0);

		if(source == loginBtn){ 
			loginView.setVisible(true);
		}
		if(source == registerBtn){ 
			registerView.setVisible(true);	
		}

		if(source == submitBtn){
			var loginFields = loginView.getFieldsValue();
			var username = loginFields[0];
			var password = loginFields[1];
			if(usernames.contains(username) && passwords.contains(password)){
				loginView.clearFields();
				component.setVisible(true);
				loginView.dispose();
				dispose();
			}else{
				JOptionPane.showMessageDialog(this,Constants.AUTH_STRINGS[3]);
			}
		}
		if(source == saveBtn){
			try{
				var registerFields = registerView.getFieldsValue();
			var username1 = registerFields[0];
			var password1 = registerFields[1];
			var username2 = registerFields[2];
			var password2 = registerFields[3];
			if(username1.equals(username2)&&password1.equals(password2)){
				usernames.add(username1);
				passwords.add(password1);
				registerView.clearFields();
				registerView.dispose();
			}
			
			}catch(NullPointerException ex){
				JOptionPane.showMessageDialog(null,Constants.AUTH_STRINGS[2]);
			}
			
		}
	}
	
}