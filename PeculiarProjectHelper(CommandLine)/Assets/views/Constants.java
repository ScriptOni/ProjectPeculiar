package com.views;

import java.awt.Color;
import java.awt.Font; 
import java.awt.BorderLayout;
import javax.swing.border.Border;
import java.awt.Component;
import javax.swing.UIManager;
import javax.swing.BorderFactory;
public class Constants{
	
	
	public static final String 		FRAME_TITLE					= "Student Project Management System";
	public static final String 		FRAME_LOGO_URL 				= "assets/logos/peculiar.png"; 
	public static final String 		FRAME_LOOK_AND_FEEL			= UIManager.getSystemLookAndFeelClassName();
	// public static final String 		FRAME_LOOK_AND_FEEL			= "javax.swing.plaf.nimbus.NimbusLookAndFeel";
	public static final int 		FRAME_WIDTH 			    = 1300;
	public static final int 		FRAME_HEIGHT 				= 700;
	public static final int 		FRAME_CLOSE_OPERATION 		= 3;
	public static final Component 	FRAME_LOCATION 				= null;
	public static final BorderLayout FRAME_LAYOUT				= new BorderLayout();

	public static final String 		REGISTER_TITLE				= "Register Form";
	public static final String 		LOGIN_TITLE					= "Login Form";
	public static final String 		AUTH_TITLE					= "Authentication Form";

	public static final String[] 	AUTH_STRINGS				= {"login",
																		"register",
																		"Empty value. Enter password or username!"
																		,"Wrong password or username"};
	public static final String[]	LOGIN_STRINGS				= {"username","password","submit"};

	public static final String[] 	REGISTER_STRINGS			= {"create your username:",
																		"create your password:",
																	"confirm your username:",
																	"confirm your password:",
																	"save"
																	 };
	 public static final int 		FIELD_SIZE 					= 15;

	public static final String 		CENTER 						= BorderLayout.CENTER;
	public static final String		NORTH 						= BorderLayout.NORTH;
	public static final String 		SOUTH 						= BorderLayout.SOUTH;
	public static final String 		WEST 						= BorderLayout.WEST;

	public static final Border 		BORDER_ETCHED 			 	= BorderFactory.createEtchedBorder();


	public static final boolean 	FRAME_VISIBLITY				= true;	
	public static final boolean 	FRAME_UNDECORATED			= false;
	public static final boolean 	FRAME_RESIZABLE				= true;
	public static final int 		FRAME_EXTENDED_STATE		= 0;
	
	public static final Color 		GREY 						= new Color(128,128,128,255);
	public static final Color 		BLACK 						= new Color(0,0,0,255);
	public static final Color 		WHITE 						= new Color(255,255,255,255);
	public static final Color 		TRANSPARENT 	 			= new Color(0,0,0,0);
	public static final Color 		RED 						= Color.RED;
	public static final Color 		GREEN 						= Color.GREEN;
	public static final Color 		BLUE 						= Color.BLUE;
	public static final Color 		YELLOW 						= Color.YELLOW;



	public static final Color 		PRIMARY 	 				= new Color(194,0,0,255);
	public static final Color 		SECONDARY 	 				= new Color(224,30,30,255);
	public static final Color 		TRITIARY 	 				= new Color(255,215,217,255);


	public static final Font 		FONT_TITLE_ARIAL			= new Font("Arial",1,45);
	public static final Font 		FONT_ARIAL					= new Font("Arial",0,15);
	public static final Font 		FONT_SMALL_ARIAL			= new Font("Arial",0,9);
	
	public static final Font 		FONT_ROBOTO					= new Font("Roboto",0,20);
	public static final String 		COPYRIGHT					= "@peculiar.org";

}