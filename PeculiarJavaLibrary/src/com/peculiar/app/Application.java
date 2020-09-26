package com.peculiar.app;

import com.peculiar.components.AppFrame;
import com.peculiar.components.AppLabel;
import com.peculiar.components.AppPanel;
import java.awt.LayoutManager;

public  class Application extends AppFrame {
    public Application() {
        super();
        setPeculiarIcon("background.jpg");
        super.setLocationRelativeTo(null);
    }
    public Application(AppLabel peculiarLabel) {

        setFramePane(peculiarLabel);
        setPeculiarIcon("background.jpg");
        super.setLocationRelativeTo(null);
        
    }
    public Application(AppPanel peculiarPanel) {

        setFramePane(peculiarPanel);
        setPeculiarIcon("background.jpg");
        super.setLocationRelativeTo(null);
       
    }

    public void setAppFullSize() {
        super.setExtendedState(6);
    }

    public void setAppSize(int width, int height) {
        super.setFrameSize(width, height);
    }

        
    public void setAppIcon(String iconURL) {
        super.setPeculiarIcon(iconURL);
    }
    public void setAppResizable(boolean isResizable) {
        super.setResizable(isResizable);
    }
    public void setAppLayout(LayoutManager layout) {
        super.setLayout(layout);
    }
    public void showApp() {
        super.showFrame();
    }
    public void hideApp() {
        super.hideFrame();
    }

}
