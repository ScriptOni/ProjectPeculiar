/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.peculiar.app;

import com.peculiar.app.initial.ContentPane;
import com.peculiar.components.AppButton;
import com.peculiar.constants.AppColor;
import com.peculiar.constants.AppDefault;
import com.peculiar.constants.AppLayout;
import java.awt.GridBagConstraints;

/**
 *
 * @author admin
 */
public class AppRegisterForm extends Application {
    private AppButton saveBtn;

    public AppRegisterForm() {
        super(new ContentPane());
        setAppInit();
        setAppComponents();
        setAppUI();
    }
    private void setAppInit() {
        setAppSize(AppDefault.WIDTH, AppDefault.HEIGHT);
        setAppResizable(false);
        setAppLayout(AppLayout.GRIDBAG);
        setAppIcon("background.jpg");
    }

    private void setAppComponents() {
        saveBtn = new AppButton("save");

        var gc = new GridBagConstraints();
        gc.gridx = 0;
        gc.gridy = 0;
        add(saveBtn, gc);
    }

    private void setAppUI() {
        saveBtn.setUI(new java.awt.Color(11, 19, 201), AppColor.COLOR_PRIMARY);
    }

    public AppButton getSaveBtn() {
        return saveBtn;
    }

}
