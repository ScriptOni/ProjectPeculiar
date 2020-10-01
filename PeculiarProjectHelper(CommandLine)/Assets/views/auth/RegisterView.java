package com.views.auth;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import com.views.*;

public class RegisterView extends JDialog implements com.interfaces.Interface{
	private JLabel titleLbl;
	private JLabel usernameLbl1,passwordLbl1;
	private JLabel usernameLbl2,passwordLbl2;
	private JTextField usernameFld1;
	private JPasswordField passwordFld1;
	private JTextField usernameFld2;
	private JPasswordField passwordFld2;
	private JButton saveBtn;
	public RegisterView(){
		setInitializer();
		setComponents();
		setUI();
	}
	private void setInitializer(){
		try{
		   UIManager.setLookAndFeel(Constants.FRAME_LOOK_AND_FEEL);
		   setTitle(Constants.REGISTER_TITLE);
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
		titleLbl 		= new JLabel(Constants.REGISTER_TITLE);
		usernameLbl1 	= new JLabel(Constants.REGISTER_STRINGS[0]);
		passwordLbl1 	= new JLabel(Constants.REGISTER_STRINGS[1]);
		usernameFld1 	= new JTextField(Constants.FIELD_SIZE);
		passwordFld1	= new JPasswordField(Constants.FIELD_SIZE);
		usernameLbl2 	= new JLabel(Constants.REGISTER_STRINGS[2]);
		passwordLbl2 	= new JLabel(Constants.REGISTER_STRINGS[3]);
		usernameFld2 	= new JTextField(Constants.FIELD_SIZE);
		passwordFld2 	= new JPasswordField(Constants.FIELD_SIZE);
		saveBtn 		= new JButton(Constants.REGISTER_STRINGS[4]);

		var gc = new GridBagConstraints();
		var insets 	= new Insets(2,0,2,0);
		gc.anchor = GridBagConstraints.CENTER;		
		gc.gridx = 0; gc.gridy=0;gc.insets = insets; add(titleLbl,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(usernameLbl1,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(usernameFld1,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(passwordLbl1,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(passwordFld1,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(usernameLbl2,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(usernameFld2,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(passwordLbl2,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(passwordFld2,gc);
		gc.gridx = 0; gc.gridy++;gc.insets = insets; add(saveBtn,gc);
	}
	private void setUI(){

		titleLbl.setFont(Constants.FONT_TITLE_ARIAL);
		usernameLbl1.setFont(Constants.FONT_ARIAL);
		passwordLbl1.setFont(Constants.FONT_ARIAL);
		usernameFld1.setFont(Constants.FONT_ARIAL);
		passwordFld1.setFont(Constants.FONT_ARIAL);
		usernameLbl2.setFont(Constants.FONT_ARIAL);
		passwordLbl2.setFont(Constants.FONT_ARIAL);
		usernameFld2.setFont(Constants.FONT_ARIAL);
		passwordFld2.setFont(Constants.FONT_ARIAL);
		saveBtn.setFont(Constants.FONT_ARIAL);
	}
	public String[] getFieldsValue(){
		var values = new String[4];
		var username1 = usernameFld1.getText();
		var password1 = usernameFld1.getText();
		var username2 = usernameFld1.getText();
		var password2 = usernameFld1.getText();
		if(!(username1.equals("") && password1.equals("")&&username2.equals("") && password2.equals(""))){
			values[0] = username1;
			values[1] = password1;
			values[2] = username2;
			values[3] = password2;
		}
		return values;
	}
	public void clearFields(){
		usernameFld1.setText("");
		passwordFld1.setText("");
		usernameFld2.setText("");
		passwordFld2.setText("");

	}
	public  void addActionListener(ActionListener listener){
		saveBtn.addActionListener(listener);
	}
	public Object getSource(int index){
		return saveBtn;
	}
}