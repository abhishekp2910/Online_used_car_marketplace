package com.gearup.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.gearup.DAO.UserDAO;
import com.gearup.Model.User_regi;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/register")

public class RegistrationController extends HttpServlet {

  
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve user input from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        
        try {
        // Create a User object
        User_regi user = new User_regi(name, email, phoneNumber, password);

        // Call the DAO to save the user
        UserDAO userDAO = new UserDAO();
        boolean isRegistered = userDAO.registerUser(user);

        // Redirect to success or error page
        if (isRegistered) {
            response.sendRedirect("Home.jsp");
        } else {
            response.sendRedirect("Home.jsp");
        }
        }catch(Exception e) {
        	e.getMessage();
        }
    }
}
