/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sys.servlets;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sys.classes.DB_class;
import sys.classes.Error_class;
import sys.classes.Success_class;

/**
 *
 * @author Michael Mukolwe
 */
public class Settings extends HttpServlet {

    //database object  
    DB_class db = new DB_class();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        //get setting type params
        String settingType = request.getParameter("settingType");
        String userEmail = request.getParameter("userEmail");
        System.out.println(userEmail);
        switch (settingType) {
            case "profile_settings": {
                //others param
                String userFname = request.getParameter("userFullName");
                String userPhone = request.getParameter("userPhone");
                //check which update is selected
                if (userPhone.isEmpty() | userFname.isEmpty()) {
                    String ErrorMessage = "/backend/farmer/settings.jsp";
                    String setting_error = "No updates;empty fields";

                    Error_class user_error = new Error_class(setting_error);
                    request.setAttribute("ErrorMessage", user_error);
                    request.setAttribute("user_mail", userEmail);

                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                    dispatcher.forward(request, response);
                } else {
                    try {
                        db.updateProfile(userFname, userPhone, userEmail);

                        String SuccessMessage = "/backend/farmer/settings.jsp";
                        String setting_success = "Details Updated...";

                        Success_class user_succ = new Success_class(setting_success);
                        request.setAttribute("signupSuccess", user_succ);
                        request.setAttribute("user_mail", userEmail);

                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(SuccessMessage);
                        dispatcher.forward(request, response);
                    } catch (SQLException e) {
                        String ErrorMessage = "/backend/farmer/settings.jsp";
                        String setting_error = e.toString();

                        Error_class user_error = new Error_class(setting_error);
                        request.setAttribute("ErrorMessage", user_error);
                        request.setAttribute("user_mail", userEmail);

                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                        dispatcher.forward(request, response);
                    } catch (Exception ex) {
                        String ErrorMessage = "/backend/farmer/settings.jsp";
                        String setting_error = ex.toString();

                        Error_class user_error = new Error_class(setting_error);
                        request.setAttribute("ErrorMessage", user_error);
                        request.setAttribute("user_mail", userEmail);

                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                        dispatcher.forward(request, response);
                    }
                }
                break;
            }
            case "pic_settings":
            //  UPDATE PASSWORD
            case "pass_settings":
                String oldPass = request.getParameter("user-old-pass");
                String newPass = request.getParameter("user-new-pass");
                String newConPass = request.getParameter("user-con-new-pass");

                if (oldPass.isEmpty() | newPass.isEmpty() | newConPass.isEmpty()) {
                    String ErrorMessage = "/backend/farmer/settings.jsp";
                    String setting_error = "Fill all fields to be Updated";

                    Error_class user_error = new Error_class(setting_error);
                    request.setAttribute("ErrorMessage", user_error);
                    request.setAttribute("user_mail", userEmail);

                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                    dispatcher.forward(request, response);
                } else {
                    try {
                        String pass = db.getPass(userEmail);
                        if (!pass.equals(oldPass)) {
                            String ErrorMessage = "/backend/farmer/settings.jsp";
                            String setting_error = "check your old password";

                            Error_class user_error = new Error_class(setting_error);
                            request.setAttribute("ErrorMessage", user_error);
                            request.setAttribute("user_mail", userEmail);

                            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                            dispatcher.forward(request, response);
                        } else if (!newPass.equals(newConPass)) {
                            String ErrorMessage = "/backend/farmer/settings.jsp";
                            String setting_error = "New password not matching";

                            Error_class user_error = new Error_class(setting_error);
                            request.setAttribute("ErrorMessage", user_error);
                            request.setAttribute("user_mail", userEmail);

                            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                            dispatcher.forward(request, response);
                        } else {
                            try {
                                db.updatePassword(userEmail, newPass);
                                String SuccessMessage = "/backend/farmer/settings.jsp";
                                String setting_success = "Passwords Updated...";

                                Success_class user_succ = new Success_class(setting_success);
                                request.setAttribute("signupSuccess", user_succ);
                                request.setAttribute("user_mail", userEmail);

                                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(SuccessMessage);
                                dispatcher.forward(request, response);
                            } catch (Exception e) {
                                String ErrorMessage = "/backend/farmer/settings.jsp";
                                String setting_error = e.toString();

                                Error_class user_error = new Error_class(setting_error);
                                request.setAttribute("ErrorMessage", user_error);
                                request.setAttribute("user_mail", userEmail);

                                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                                dispatcher.forward(request, response);
                            }
                        }
                    } catch (Exception e) {
                        String ErrorMessage = "/backend/farmer/settings.jsp";
                        String setting_error = e.toString();

                        Error_class user_error = new Error_class(setting_error);
                        request.setAttribute("ErrorMessage", user_error);
                        request.setAttribute("user_mail", userEmail);

                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                        dispatcher.forward(request, response);
                    }
                }
            case "account_settings":
                try {
                    db.deactivateAccount(userEmail);
                    //delete cookies
                    Cookie cookie = null;
                    Cookie[] cookies = null;
                    // Get an array of Cookies associated with this domain
                    cookies = request.getCookies();
                    if (cookies != null) {
                        for (Cookie cookie1 : cookies) {
                            cookie = cookie1;
                            if ((cookie.getName()).compareTo("user_email") == 0) {
                                cookie.setMaxAge(0);
                                response.addCookie(cookie);
                            }else if((cookie.getName()).compareTo("user_pass") == 0){
                                cookie.setMaxAge(0);
                                response.addCookie(cookie);
                            }
                        }
                    }
                    //remove session
                    HttpSession session = request.getSession();
                    session.removeAttribute("user");
                    session.invalidate();

                    response.sendRedirect("../../index.jsp");
                } catch (Exception ex) {

                }
        }
// else {
//
//            try {
//                db.newConn();
//                int group_num = db.userLogin(useremail, userpass);
//                switch (group_num) {
//                    case 1: {
//                        Login_class user_login = new Login_class(useremail, userpass);
//                        HttpSession session = request.getSession();
//                        session.setAttribute("user", user_login);
//                        //Load admin
//                        String loginSuccess = "./admin/AdminDash.jsp";
//                        response.sendRedirect(loginSuccess);
//                        break;
//                    }
//                    case 2: {
//                        Login_class user_login = new Login_class(useremail, userpass);
//                        HttpSession session = request.getSession();
//                        session.setAttribute("user", user_login);
//                        //Load admin
//                        String loginSuccess = "./farmer/FarmerDash.jsp";
//                        response.sendRedirect(loginSuccess);
//                        break;
//                    }
//                    case 3: {
//                        Login_class user_login = new Login_class(useremail, userpass);
//                        HttpSession session = request.getSession();
//                        session.setAttribute("user", user_login);
//                        //Load admin
//                        String loginSuccess = "./expert/ExpertDash.jsp";
//                        response.sendRedirect(loginSuccess);
//                        break;
//                    }
//                    default:
//                        //destroy any session
//                        request.getSession().invalidate();
//                        String ErrorMessage = "/backend/Login.jsp";
//                        String login_error = "Wrong email or password";
//                        Error_class user_error = new Error_class(login_error);
//                        request.setAttribute("ErrorMessage", user_error);
//                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
//                        dispatcher.forward(request, response);
//                        break;
//                }
//            } catch (SQLException e) {
//                //Tell if no database is connected                    
//                request.getSession().invalidate();
//
//                String ErrorMessage = "/backend/Login.jsp";
//                String login_error = "Wrong email or password";
//
//                Error_class user_error = new Error_class(login_error);
//                request.setAttribute("ErrorMessage", user_error);
//
//                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
//                dispatcher.forward(request, response);
//            } catch (Exception ex) {
//
//            }
//        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doPost(request, response);
    }
}
