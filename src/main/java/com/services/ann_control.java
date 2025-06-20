package com.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.ann_model;
import com.util.DBConnect;

public class ann_control {

    // Insert Data 
    public static boolean insertdata(String A_Title, String A_Description, String A_GameName, String A_RelDate, String A_GCategory, String A_GOwner) {
        boolean isSuccess = false;

        try {
            Connection con = DBConnect.getInstance().getConnection();
            String sql = "INSERT INTO ann_info (A_Title, A_Description, A_GameName, A_RelDate, A_GCategory, A_GOwner) VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, A_Title);
            stmt.setString(2, A_Description);
            stmt.setString(3, A_GameName);
            stmt.setString(4, A_RelDate);
            stmt.setString(5, A_GCategory);
            stmt.setString(6, A_GOwner);

            int rs = stmt.executeUpdate();
            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Get by ID
    public static List<ann_model> getById(String A_id) {
        List<ann_model> Ann = new ArrayList<>();

        try {
            int convertedID = Integer.parseInt(A_id);
            Connection con = DBConnect.getInstance().getConnection();
            String sql = "SELECT * FROM ann_info WHERE A_ID = ?";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, convertedID);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                ann_model ann = new ann_model(
                    rs.getInt("A_ID"),
                    rs.getString("A_Title"),
                    rs.getString("A_Description"),
                    rs.getString("A_GameName"),
                    rs.getString("A_RelDate"),
                    rs.getString("A_GCategory"),
                    rs.getString("A_GOwner")
                );
                Ann.add(ann);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return Ann;
    }

    // Get all data
    public static List<ann_model> getAllAnn() {
        List<ann_model> Anns = new ArrayList<>();

        try {
            Connection con = DBConnect.getInstance().getConnection();
            String sql = "SELECT * FROM ann_info";

            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                ann_model ann = new ann_model(
                    rs.getInt("A_ID"),
                    rs.getString("A_Title"),
                    rs.getString("A_Description"),
                    rs.getString("A_GameName"),
                    rs.getString("A_RelDate"),
                    rs.getString("A_GCategory"),
                    rs.getString("A_GOwner")
                );
                Anns.add(ann);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return Anns;
    }

    // Update data
    public static boolean updatedata(String A_ID, String A_Title, String A_Description, String A_GameName, String A_RelDate, String A_GCategory, String A_GOwner) {
        boolean isSuccess = false;

        try {
            int id = Integer.parseInt(A_ID);
            Connection con = DBConnect.getInstance().getConnection();
            String sql = "UPDATE ann_info SET A_Title = ?, A_Description = ?, A_GameName = ?, A_RelDate = ?, A_GCategory = ?, A_GOwner = ? WHERE A_ID = ?";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, A_Title);
            stmt.setString(2, A_Description);
            stmt.setString(3, A_GameName);
            stmt.setString(4, A_RelDate);
            stmt.setString(5, A_GCategory);
            stmt.setString(6, A_GOwner);
            stmt.setInt(7, id);

            int rs = stmt.executeUpdate();
            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Delete Data
    public static boolean deletedata(String A_id) {
        boolean isSuccess = false;

        try {
            int id = Integer.parseInt(A_id);
            Connection con = DBConnect.getInstance().getConnection();
            String sql = "DELETE FROM ann_info WHERE A_ID = ?";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            int rs = stmt.executeUpdate();
            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
}
