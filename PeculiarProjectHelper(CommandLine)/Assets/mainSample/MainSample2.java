
public class Main{
	public static void main(String[] args){
		javax.swing.SwingUtilities.invokeLater(() ->{
			new com.controllers.Controller(new com.views.auth.AuthFormView(), new com.models.Model());
		});	
	}
}