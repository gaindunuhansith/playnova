package com.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.model.Admin;
import com.util.DBConnect;

public class AdminService {

    public void regAdmin(Admin ad) {
        try {
            String query = "INSERT INTO admin (name, email, phone, role, username, password) VALUES (?, ?, ?, ?, ?, ?)";

            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, ad.getName());
            stmt.setString(2, ad.getEmail());
            stmt.setString(3, ad.getPhone());
            stmt.setString(4, ad.getRole());
            stmt.setString(5, ad.getUserName());
            stmt.setString(6, ad.getPassword());

            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean validate(Admin ad) {
        try {
            String query = "SELECT * FROM admin WHERE username=? AND password=?";

            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, ad.getUserName());
            stmt.setString(2, ad.getPassword());

            ResultSet rs = stmt.executeQuery();

            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public Admin getOne(Admin ad) {
        try {
            String query = "SELECT * FROM admin WHERE username=? AND password=?";

            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, ad.getUserName());
            stmt.setString(2, ad.getPassword());

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                ad.setId(rs.getInt("id"));
                ad.setName(rs.getString("name"));
                ad.setEmail(rs.getString("email"));
                ad.setPhone(rs.getString("phone"));
                ad.setRole(rs.getString("role"));
                ad.setUserName(rs.getString("username"));
                ad.setPassword(rs.getString("password"));
                return ad;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Admin> getAllAdmins() {
        ArrayList<Admin> listAd = new ArrayList<>();
        try {
            String query = "SELECT * FROM admin";

            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Admin ad = new Admin();

                ad.setId(rs.getInt("id"));
                ad.setName(rs.getString("name"));
                ad.setEmail(rs.getString("email"));
                ad.setPhone(rs.getString("phone"));
                ad.setRole(rs.getString("role"));
                ad.setUserName(rs.getString("username"));
                ad.setPassword(rs.getString("password"));

                listAd.add(ad);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listAd;
    }

    public void updateAdmin(Admin ad) {
        try {
            String query = "UPDATE admin SET name=?, email=?, phone=?, role=?, username=?, password=? WHERE id=?";

            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setString(1, ad.getName());
            stmt.setString(2, ad.getEmail());
            stmt.setString(3, ad.getPhone());
            stmt.setString(4, ad.getRole());
            stmt.setString(5, ad.getUserName());
            stmt.setString(6, ad.getPassword());
            stmt.setInt(7, ad.getId());

            stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteAdmin(int adminId) {
        try {
            String query = "DELETE FROM admin WHERE id = ?";

            Connection con = DBConnect.getInstance().getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setInt(1, adminId);

            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
