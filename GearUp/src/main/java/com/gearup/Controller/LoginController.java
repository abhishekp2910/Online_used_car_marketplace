package com.gearup.Controller;

import com.gearup.DAO.UserLoginDAO;
import com.gearup.Model.UserLogin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/Login")
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve user input from the form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Create a UserLogin object
            UserLogin userLogin = new UserLogin(email, password);

            // Call the DAO to validate the user
            UserLoginDAO userLoginDAO = new UserLoginDAO();
            boolean isValidUser = userLoginDAO.validateUser(userLogin);

            // Redirect based on the validation result
            if (isValidUser) {
                response.sendRedirect("Main.jsp"); // Redirect to  or Home
            } else {
                response.sendRedirect("Home.jsp"); // Redirect back to Login page with an error
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
