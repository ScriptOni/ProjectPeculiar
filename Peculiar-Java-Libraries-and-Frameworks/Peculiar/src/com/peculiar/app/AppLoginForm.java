package com.peculiar.app;

import com.peculiar.app.initial.ContentPane;
import com.peculiar.components.AppButton;
import com.peculiar.constants.AppColor;
import com.peculiar.constants.AppDefault;
import com.peculiar.constants.AppLayout;
import java.awt.GridBagConstraints;

class AppLoginForm extends Application {

    private AppButton submitBtn;
    public AppLoginForm() {
        super(new ContentPane());
        setAppInit();
        setAppComponents();
        setAppUI();
    }

    private void setAppInit() {
        setAppSize(AppDefault.WIDTH, AppDefault.HEIGHT);
        setAppResizable(false);
        setAppLayout(AppLayout.GRIDBAG);
    }
    private void setAppComponents() {
        submitBtn = new AppButton("submit");

        var gc = new GridBagConstraints();
        gc.gridx = 0;
        gc.gridy = 0;
        add(submitBtn, gc);
    }
    private void setAppUI() {
        submitBtn.setUI(new java.awt.Color(11, 19, 201), AppColor.PRIMARY);
    }
    private void setAppListener() {

    }
    public AppButton getSubmitBtn() {
        return submitBtn;
    }
}
