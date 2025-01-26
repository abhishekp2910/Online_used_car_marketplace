package com.gearup.DAO;

import com.gearup.Model.UserLogin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserLoginDAO {

    public boolean validateUser(UserLogin userLogin) {
        boolean isValid = false;
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver Loaded");
            // Establish a connection
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/gearup",
                "root",
                "root"
            );
            System.out.println("Database connected successfully!");

            // Prepare SQL query
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, userLogin.getEmail());
            preparedStatement.setString(2, userLogin.getPassword());

            // Execute query
            ResultSet resultSet = preparedStatement.executeQuery();

            // If a record exists, the credentials are valid
            if (resultSet.next()) {
                isValid = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isValid;
    }
}
