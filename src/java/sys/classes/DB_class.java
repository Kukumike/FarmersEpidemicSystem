/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sys.classes;

import java.io.Serializable;
import java.sql.*;

/**
 *
 * @author Michael Mukolwe
 */
public class DB_class implements Serializable {

    private static Connection connection;

//    create connection
    public void newConn() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer_sys_db", "root", "");
    }

    //add new farmer
    public int addFarmer(String full_name, String user_email, String user_phone, String user_passcode, int user_group, int account_status, String ipAddress) throws Exception {
        newConn();

        Statement stmt = connection.createStatement();
        return stmt.executeUpdate("INSERT INTO users VALUES (null,'" + full_name + "','" + user_email + "','" + user_phone + "','" + user_passcode + "',CURDATE()," + user_group + ",'" + account_status + "','" + ipAddress + "')");
    }

    //User login
    public int userLogin(String user_email, String user_pass) throws SQLException, Exception {
        newConn();

        //staus of account
        if (getAccountStatus(user_email) == 3) {
            int account_inactive = 4;
            return account_inactive;
        } else {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT group_id FROM users WHERE user_email='" + user_email + "' and user_password='" + user_pass + "'");
            rs.next();
            return rs.getInt("group_id");
        }
    }

    //Jstl SQL Connector
    public String jstlDriver() {
        return "com.mysql.jdbc.Driver";
    }

    public String jstlUrl() {
        return "jdbc:mysql://localhost:3306/farmer_sys_db";
    }

    public String jstlUser() {
        return "root";
    }

    public String jstlPassword() {
        return "";
    }

    //   post the question
    public int postQuestion(int user, String blog_title, String blog_desc) throws SQLException, Exception {
        newConn();
        Statement stmt = connection.createStatement();
        return stmt.executeUpdate("INSERT INTO post_epidemic VALUES(null,'" + user + "','" + blog_title + "','" + blog_desc + "',CURDATE())");
    }

    //Select all Blog Post
    public String blogsPosted() {
        return "SELECT * FROM post_epidemic";
    }

    //get user details
    
    public String user_Details(String email) {
        return "SELECT * FROM users WHERE user_email='"+email+"'";
    }

    public int getUserId(String username) throws SQLException, Exception {
        newConn();

        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT user_id FROM users WHERE user_email='" + username + "'");
        rs.next();
        return rs.getInt("user_id");
    }

    public int updateProfile(String name, String phone, String email) throws SQLException, Exception {
        newConn();

        Statement stmt = connection.createStatement();
        return stmt.executeUpdate("UPDATE users SET user_full_name = '" + name + "',user_phone = '" + phone + "' WHERE user_email = '" + email + "'");
    }

    public String getPass(String userEmail) throws SQLException, Exception {
        newConn();

        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT user_password FROM users WHERE user_email='" + userEmail + "'");
        rs.next();
        return rs.getString("user_password");
    }

    public int updatePassword(String email, String newPass) throws SQLException, Exception {
        newConn();

        Statement stmt = connection.createStatement();
        return stmt.executeUpdate("UPDATE users SET user_password = '" + newPass + "' WHERE user_email = '" + email + "'");
    }

    public int deactivateAccount(String email) throws SQLException, Exception {
        newConn();

        Statement stmt = connection.createStatement();
        return stmt.executeUpdate("UPDATE users SET account_status = 3 WHERE user_email = '" + email + "'");
    }

    public int countNotifications(String user_email) throws SQLException, Exception {
        newConn();
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT user_id FROM users WHERE user_email='" + user_email + "'");
        rs.next();
        int user_id = rs.getInt("user_id");

        Statement stmt1 = connection.createStatement();
        ResultSet rs1 = stmt1.executeQuery("SELECT COUNT(notification_id) AS totalNotification FROM notification WHERE notification_status= 1 AND user_id ='" + user_id + "'");
        rs1.next();
        return rs1.getInt("totalNotification");
    }

    //account verified or not
    public int getAccountStatus(String user_email) throws SQLException, Exception {
        newConn();
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT account_status FROM users WHERE user_email='" + user_email + "'");
        rs.next();
        return rs.getInt("account_status");
    }

    //searching for mentions of certain epidemics
    public String searchEpidemic(String filter) {
        String query = "SELECT * from post_epidemic WHERE post_title = '" + filter + "' OR post_desc = '" + filter + "'";
        return query;
    }

    public int searchZero(String filter) throws SQLException, Exception {
        newConn();
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT(post_id) AS postCount FROM post_epidemic WHERE post_title = '" + filter + "' OR post_desc = '" + filter + "'");
        rs.next();
        return rs.getInt("postCount");
    }

}
