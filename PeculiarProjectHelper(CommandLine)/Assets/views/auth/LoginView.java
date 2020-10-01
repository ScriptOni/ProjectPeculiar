package com.views.auth;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import com.views.Constants;

public class LoginView extends JDialog implements com.interfaces.Interface{
	private JLabel titleLbl;
	private JLabel usernameLbl,passwordLbl;
	private JTextField usernameFld;
	private JPasswordField passwordFld;
	private JButton submitBtn;
	public LoginView(){
		setInitializer();
		setComponents();
		setUI();
	}
	private void setInitializer(){try{
		   UIManager.setLookAndFeel(Constants.FRAME_LOOK_AND_FEEL);
		   setTitle(Constants.LOGIN_TITLE);
		   setSize(Constants.FRAME_WIDTH-500,Constants.FRAME_HEIGHT-300);
		   setUndecorated(Constants.FRAME_UNDECORATED);
       	   setIconImage(new ImageIcon(Constants.FRAME_LOGO_URL).getImage());
	       setLocationRelativeTo(Constants.FRAME_LOCATION);
	       setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
		   setResizable(false);  
		   setLayout(new GridBagLayout());
		   
	   }catch(Exception e){
	       e.printStackTrace();
	   }
	}

	private void setComponents(){
		titleLbl 	= new JLabel(Constants.LOGIN_TITLE);
		usernameLbl = new JLabel(Constants.LOGIN_STRINGS[0]);
		passwordLbl = new JLabel(Constants.LOGIN_STRINGS[1]);
		usernameFld = new JTextField(Constants.FIELD_SIZE);
		passwordFld = new JPasswordField(Constants.FIELD_SIZE);
		submitBtn 	= new JButton(Constants.LOGIN_STRINGS[2]);


		var gc 		= new GridBagConstraints();
		var insets 	= new Insets(5,0,5,0);
		gc.anchor = GridBagConstraints.CENTER;		
		gc.gridx = 0; gc.gridy=0;gc.insets = insets; add(titleLbl,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(usernameLbl,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(usernameFld,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(passwordLbl,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(passwordFld,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(submitBtn,gc);
	}
	
	private void setUI(){
		titleLbl.setFont(Constants.FONT_TITLE_ARIAL);
		usernameLbl.setFont(Constants.FONT_ARIAL);
		passwordLbl.setFont(Constants.FONT_ARIAL);
		usernameFld.setFont(Constants.FONT_ARIAL);
		passwordFld.setFont(Constants.FONT_ARIAL);
		submitBtn.setFont(Constants.FONT_ARIAL);
	}
	public String[] getFieldsValue(){
		var values = new String[2];
		values[0] = usernameFld.getText();
		values[1] = passwordFld.getText();
		return values;
	}
	public void clearFields(){
		usernameFld.setText("");
		passwordFld.setText("");
	}
	 public void addActionListener(ActionListener listener){
		submitBtn.addActionListener(listener);
	}
	public Object getSource(int index){
		return submitBtn;
	}
}