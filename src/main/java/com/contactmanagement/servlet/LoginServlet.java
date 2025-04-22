package com.contactmanagement.servlet;

import com.contactmanagement.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // This method is called when a POST request is sent to the "/login" URL
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Creating an instance of the UserDAO to interact with the database
        UserDAO dao = new UserDAO();

        // Set the response type to be HTML
        response.setContentType("text/html");

        // Check if the user is valid
        if (dao.validateUser(username, password)) {
            response.getWriter().println("Login successful! Welcome " + username);
        } else {
            response.getWriter().println("Invalid username or password.");
        }
    }
}
