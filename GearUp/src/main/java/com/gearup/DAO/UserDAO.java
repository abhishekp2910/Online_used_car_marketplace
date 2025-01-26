package com.gearup.DAO;

import com.gearup.Model.User_regi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserDAO {

    public boolean registerUser(User_regi user) {
        boolean isRegistered = false;
        String query = "INSERT INTO users (name, email, phone_number, password) VALUES (?, ?, ?, ?)";
        
        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("JDBC Driver loaded successfully!");

            // Establish a connection
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/gearup", 
                "root", 
                "root"
            );
            System.out.println("Database connected successfully!");

            // Prepare SQL query
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPhoneNumber());
            preparedStatement.setString(4, user.getPassword());

            // Execute query
            int rowsInserted = preparedStatement.executeUpdate();
            if (rowsInserted > 0) {
                isRegistered = true;
            }

        } catch (ClassNotFoundException e) {
            System.err.println("Error: JDBC Driver not found!");
            e.printStackTrace();
        } catch (Exception e) {
            System.err.println("Database error: " + e.getMessage());
            e.printStackTrace();
        }

        return isRegistered;
    }
}
