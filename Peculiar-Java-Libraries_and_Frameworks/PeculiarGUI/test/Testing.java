
import com.peculiar.app.Application;
import com.peculiar.app.initial.ContentPane;

public class Testing extends Application {
    public Testing() {
        super(new ContentPane());
    }

    public static void main(String[] args) {
        new Testing().showApp();
    }
}
