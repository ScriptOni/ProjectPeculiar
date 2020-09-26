package com.peculiar.app;

import com.peculiar.app.initial.ContentPane;
import com.peculiar.components.AppButton;
import com.peculiar.components.AppLabel;
import com.peculiar.constants.AppColor;
import com.peculiar.constants.AppDefault;
import com.peculiar.constants.AppLayout;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class AppAuthForm extends Application {
    private AppLabel titleLabel;
    private AppButton loginBtn;
    private AppButton registerBtn;
    private AppButton recoveryBtn;

    private AppLoginForm loginForm;
    private AppRegisterForm registerForm;
    private AppRecoveryForm recoveryForm;
    private final ArrayList<Object> database;

    public AppAuthForm() {
        super(new ContentPane());
        database = new ArrayList<Object>();
        setAppInit();
        setAppComponents();
        setAppConstraints();
        setAppUI();
    }

    public void setAppInit() {
        setAppSize(AppDefault.WIDTH, AppDefault.HEIGHT);
        setAppResizable(false);
        setAppLayout(AppLayout.GRIDBAG);
        setAppIcon("background.jpg");
    }

    public void setAppComponents() {
        titleLabel = new AppLabel("Authentication Form");
        loginBtn = new AppButton("login");
        recoveryBtn = new AppButton("forgot password?");
        registerBtn = new AppButton("register");

        loginForm = new AppLoginForm();
        registerForm = new AppRegisterForm();
        recoveryForm = new AppRecoveryForm();
    }

    public void setAppUI() {
        loginBtn.setButtonSize(200, 50);
        registerBtn.setButtonSize(200, 50);
        titleLabel.setUI(new java.awt.Font("Candara", 1, 50), AppColor.COLOR_PRIMARY, new java.awt.Color(11, 19, 201));
        loginBtn.setUI(new java.awt.Font("Candara", 1, 23), new java.awt.Color(11, 19, 201), AppColor.COLOR_PRIMARY);
        registerBtn.setUI(new java.awt.Font("Candara", 1, 23), new java.awt.Color(11, 19, 201), AppColor.COLOR_PRIMARY);
    }
    public void setAppListener() {

    }
    private void setAppConstraints() {
        var gc = new GridBagConstraints();
        gc.gridx = 0;
        gc.gridy = 0;
        gc.insets = new Insets(10, 5, 20, 5);
        add(titleLabel, gc);
        gc.gridx = 0;
        gc.gridy++;
        gc.insets = new Insets(20, 5, 10, 5);
        add(loginBtn, gc);
        gc.gridx = 0;
        gc.gridy++;
        gc.insets = new Insets(10, 5, 10, 5);
        add(registerBtn, gc);
    }
    public void setAuthenticate(Application app, ArrayList<Object> database) {
        loginBtn.addActionListener(e -> loginBtnAction());
        registerBtn.addActionListener(e -> registerBtnAction());
        recoveryBtn.addActionListener(e -> recoveryBtnAction(database));
        loginForm.getSubmitBtn().addActionListener(e -> submitBtnAction(app, database));
        registerForm.getSaveBtn().addActionListener(e -> saveBtnAction(database));
    }

    private void loginBtnAction() {
        loginForm.showApp();
        hideApp();
    }
    private void registerBtnAction() {
        registerForm.showApp();
        hideApp();
    }

    private void recoveryBtnAction(ArrayList<Object> database) {

        recoveryForm.showApp();
        this.hideApp();
    }
    private void submitBtnAction(Application app, ArrayList<Object> database) {
        loginForm.hideApp();
        app.showApp();
    }
    private void saveBtnAction(ArrayList<Object> database) {

        JOptionPane.showMessageDialog(null, "successfully register your account!");
        registerForm.hideApp();
        showApp();
    }

}
