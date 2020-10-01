
import com.peculiar.app.AppAuthForm;
import com.peculiar.app.Application;
import com.peculiar.app.auth.UserModel;
import com.peculiar.app.initial.ContentPane;
import com.peculiar.components.AppButton;
import com.peculiar.components.AppTextField;
import com.peculiar.constants.AppLayout;
import java.util.ArrayList;

public final class App extends Application implements SetApp {
    private AppButton button;
    private AppTextField field;
    public App() {
        super(new ContentPane());
        setAppInit();
        setAppComponents();
        setAppUI();
        setAppListener();
    }

    @Override
    public void setAppInit() {
        setAppSize(800, 500);
        setAppCenterOnScreen();
        setAppFullSize();
        setAppLayout(AppLayout.FLOW_CENTER);
    }
    @Override
    public void setAppComponents() {
        field = new AppTextField(23);
        button = new AppButton("Click me!");
        add(field);
        add(button);
    }
    @Override
    public void setAppUI() {

    }
    @Override
    public void setAppListener() {

    }
    public static void main(String[] args) {
        var auth = new AppAuthForm();
        auth.setAuthenticate(new App(), new ArrayList<UserModel>());
        auth.showApp();
    }

}
