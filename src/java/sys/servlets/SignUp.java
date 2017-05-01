/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sys.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sys.classes.*;
import sys.security.HashPassword;

/**
 *
 * @author Michael Mukolwe
 */
public class SignUp extends HttpServlet {
//    Objects

    GetLocation loc = new GetLocation();
    HashPassword hp = new HashPassword();
    DB_class db = new DB_class();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//       user signup details
        String full_name = request.getParameter("user-full-name");
        String email = request.getParameter("user-email");
        String phone = request.getParameter("user-phone");
        String pass = request.getParameter("user-password");
        String cpass = request.getParameter("user-con-password");
        String check = request.getParameter("user-location");
        int group_id = 2;
        //not activated
        int account_status = 0;

//        verify  fields if empty
        if (full_name.isEmpty() | email.isEmpty() | phone.isEmpty()
                | pass.isEmpty() | cpass.isEmpty() | check == null) {
            String signuperr = "/backend/SignUp.jsp";
            String sign_error = "Fill the Empty Fields Please...";
            Error_class user_error = new Error_class(sign_error);
            request.setAttribute("signupErr", user_error);

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(signuperr);
            dispatcher.forward(request, response);

        } else {
            //if not empty; check data and submit, then redirect
            Sign_class user_details = new Sign_class(full_name, email, phone, pass, group_id);
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            try {
                String passcode = hp.hashPassword(pass);
                InetAddress ip = loc.run();
                db.addFarmer(full_name, email, phone, passcode, group_id, account_status,ip.toString());
                HttpSession session = request.getSession();
                String signupsucc = "/backend/Login.jsp";
                String sign_succ = "User Details Saved Successfully, Now Login";
                Success_class user_succ = new Success_class(sign_succ);
                
                request.setAttribute("signupSuccess", user_succ);
//                request.setAttribute("user_details",user_details);
                session.setAttribute("user_details", user_details);

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(signupsucc);
                dispatcher.forward(request, response);
            } catch (ClassNotFoundException cl) {
                out.println("Class not found" + cl);
            } catch (Exception e) {
                throw new RuntimeException("Cannot connect the Database!, " + e);
            }

        }

    }
}
