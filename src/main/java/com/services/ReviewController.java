package com.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.model.ReviewModel;
import com.util.DBConnect;

public class ReviewController {

    // Insert data
    public static boolean insertData(String username, String email, String game, float rating, String review) {
        boolean isSuccess = false;

        try {
            String currentDate = LocalDate.now().toString();
            String query = "INSERT INTO reviewss (username, email, game, rating, review, date) VALUES (?, ?, ?, ?, ?, ?)";

            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, game);
            stmt.setFloat(4, rating);
            stmt.setString(5, review);
            stmt.setString(6, currentDate);

            int rowsAffected = stmt.executeUpdate();
            isSuccess = rowsAffected > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Get review by ID
    public static List<ReviewModel> getById(String id) {
        List<ReviewModel> reviewList = new ArrayList<>();

        try {
            String query = "SELECT * FROM reviewss WHERE id = ?";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setInt(1, Integer.parseInt(id));
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                ReviewModel rev = new ReviewModel(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("game"),
                    rs.getFloat("rating"),
                    rs.getString("review"),
                    rs.getString("date")
                );
                reviewList.add(rev);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return reviewList;
    }

    // Get all reviews
    public static List<ReviewModel> getAllReviews() {
        List<ReviewModel> reviewList = new ArrayList<>();

        try {
            String query = "SELECT * FROM reviewss";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                ReviewModel rev = new ReviewModel(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("game"),
                    rs.getFloat("rating"),
                    rs.getString("review"),
                    rs.getString("date")
                );
                reviewList.add(rev);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return reviewList;
    }

    // Update review
    public static boolean updateData(String id, String username, String email, String game, float rating, String review) {
        boolean isSuccess = false;

        try {
            String query = "UPDATE reviewss SET username=?, email=?, game=?, rating=?, review=? WHERE id=?";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, game);
            stmt.setFloat(4, rating);
            stmt.setString(5, review);
            stmt.setInt(6, Integer.parseInt(id));

            int rowsAffected = stmt.executeUpdate();
            isSuccess = rowsAffected > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Delete review
    public static boolean deleteData(String id) {
        boolean isSuccess = false;

        try {
            String query = "DELETE FROM reviewss WHERE id = ?";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setInt(1, Integer.parseInt(id));
            int rowsAffected = stmt.executeUpdate();
            isSuccess = rowsAffected > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Get limited review info for display
    public static List<ReviewModel> getReviews() {
        List<ReviewModel> listRev = new ArrayList<>();

        try {
            String query = "SELECT username, game, rating, review FROM reviewss";
            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                ReviewModel rev = new ReviewModel();
                rev.setUsername(rs.getString("username"));
                rev.setGame(rs.getString("game"));
                rev.setRating(rs.getFloat("rating"));
                rev.setReview(rs.getString("review"));

                listRev.add(rev);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return listRev;
    }
}
