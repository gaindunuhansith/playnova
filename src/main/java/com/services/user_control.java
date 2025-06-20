package com.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.user_model;
import com.util.DBConnect;

public class user_control {

    // Insert User
    public static boolean insertData(String U_UserName, String U_Email, String U_PhoneNumber, String U_Password) {
        boolean isSuccess = false;

        try {
            String query = "INSERT INTO user_info (U_UserName, U_Email, U_PhoneNumber, U_Password) VALUES (?, ?, ?, ?)";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, U_UserName);
            stmt.setString(2, U_Email);
            stmt.setString(3, U_PhoneNumber);
            stmt.setString(4, U_Password);

            int result = stmt.executeUpdate();
            isSuccess = result > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Get User by ID
    public static List<user_model> getById(String userId) {
        List<user_model> users = new ArrayList<>();

        try {
            String query = "SELECT * FROM user_info WHERE U_ID = ?";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setInt(1, Integer.parseInt(userId));
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                user_model user = new user_model(
                    rs.getInt("U_ID"),
                    rs.getString("U_UserName"),
                    rs.getString("U_Email"),
                    rs.getString("U_PhoneNumber"),
                    rs.getString("U_Password")
                );
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }

    // Get All Users
    public static List<user_model> getAllUsers() {
        List<user_model> users = new ArrayList<>();

        try {
            String query = "SELECT * FROM user_info";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                user_model user = new user_model(
                    rs.getInt("U_ID"),
                    rs.getString("U_UserName"),
                    rs.getString("U_Email"),
                    rs.getString("U_PhoneNumber"),
                    rs.getString("U_Password")
                );
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }

    // Update User
    public static boolean updateData(String  U_ID, String U_UserName, String U_Email, String U_PhoneNumber, String U_Password) {
        boolean isSuccess = false;

        try {
            String query = "UPDATE user_info SET U_UserName = ?, U_Email = ?, U_PhoneNumber = ?, U_Password = ? WHERE U_ID = ?";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, U_UserName);
            stmt.setString(2, U_Email);
            stmt.setString(3, U_PhoneNumber);
            stmt.setString(4, U_Password);
            stmt.setInt(5, Integer.parseInt(U_Password));

            int result = stmt.executeUpdate();
            isSuccess = result > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Delete User
    public static boolean deleteData(String userId) {
        boolean isSuccess = false;

        try {
            String query = "DELETE FROM user_info WHERE U_ID = ?";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setInt(1, Integer.parseInt(userId));
            int result = stmt.executeUpdate();
            isSuccess = result > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Login Validate
    public static List<user_model> loginValidate(String email, String password) {
        List<user_model> users = new ArrayList<>();

        try {
            String query = "SELECT * FROM user_info WHERE U_Email = ? AND U_Password = ?";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, email);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user_model user = new user_model(
                    rs.getInt("U_ID"),
                    rs.getString("U_UserName"),
                    rs.getString("U_Email"),
                    rs.getString("U_PhoneNumber"),
                    rs.getString("U_Password")
                );
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }

    // Display User Profile
    public static List<user_model> userProfile(String userId) {
        return getById(userId); // Reuse getById logic for user profile
    }

    // Update User Profile
    public static boolean updateUserData(String userId, String username, String email, String phone, String password) {
        return updateData(userId, username, email, phone, password); // Reuse update logic
    }
}
