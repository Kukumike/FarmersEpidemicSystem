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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sys.classes.DB_class;

/**
 *
 * @author Michael Mukolwe
 */
public class PostEpidemic extends HttpServlet {

    DB_class dbase = new DB_class();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String blog_title = request.getParameter("blog-title");
        String blog_desc = request.getParameter("blog-content");

        if (blog_desc.isEmpty() || blog_title.isEmpty()) {
            String ErrorPage = "/backend/farmer/FarmerDash.jsp";
            String blog_err = "Post a Question correctly";

            request.setAttribute("ErrorMessage", blog_err);

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorPage);
            dispatcher.forward(request, response);
        } else {
            try {
                dbase.newConn();
                int user_id = dbase.getUserId(username);
                int postQuerryStatus = dbase.postQuestion(user_id, blog_title, blog_desc);
                if (postQuerryStatus == 1) {
                    String page_url = "/backend/farmer/FarmerDash.jsp";
                    String post_success = "Successfull Postings";

                    request.setAttribute("post_succ", post_success);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(page_url);
                    dispatcher.forward(request, response);
                } else {
                    String page_url = "/backend/farmer/FarmerDash.jsp";
                    String post_success = "Unsuccessfull Postings";

                    request.setAttribute("post_error", post_success);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(page_url);
                    dispatcher.forward(request, response);
                }

            } catch (SQLException ex) {
                //Tell if no database is connected                    
                String ErrorMessage = "/backend/farmer/FarmerDash.jsp";
                String post_error = "Database Connection Unsuccessfull" + ex;

                request.setAttribute("ErrorMessage", post_error);

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                dispatcher.forward(request, response);
            } catch (Exception ex) {
                //Tell if no database is connected                    
                request.getSession().invalidate();

                String ErrorMessage = "/backend/farmer/FarmerDash.jsp";
                String post_error = "Class Not Found" + ex;

                request.setAttribute("ErrorMessage", post_error);

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(ErrorMessage);
                dispatcher.forward(request, response);
            }
        }
    }

}
