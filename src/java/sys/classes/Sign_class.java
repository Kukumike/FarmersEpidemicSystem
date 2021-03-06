/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sys.classes;

import java.io.Serializable;

/**
 *
 * @author Michael Mukolwe
 */
public class Sign_class implements Serializable {

    //field
    private String full_name;
    private String user_email;
    private String user_phone;
    private String user_pass;
    private int user_group;

    public Sign_class() {
        full_name = "";
        user_email = "";
        user_phone = "";
        user_pass = "";
        user_group = 2;
    }

    public Sign_class(String full_name, String u_email, String u_phone, String u_pass, int u_group) {
        this.full_name = full_name;
        user_email = u_email;
        user_phone = u_phone;
        user_pass = u_pass;
        user_group = u_group;
    }

    //setters and getters
    
    public void set_full_name(String full_name) {
        this.full_name = full_name;
    }

    public String get_full_name() {
        return full_name;
    }

    public void set_user_email(String u_email) {
        user_email = u_email;
    }

    public String get_user_email() {
        return user_email;
    }

    public void set_user_phone(String u_phone) {
        user_phone = u_phone;
    }

    public String get_user_phone() {
        return user_phone;
    }

    public void set_user_pass(String u_pass) {
        user_pass = u_pass;
    }

    public String get_user_pass() {
        return user_pass;
    }

    public void set_user_group(int u_group) {
        user_group = u_group;
    }

    public int get_user_group() {
        return user_group;
    }
}
