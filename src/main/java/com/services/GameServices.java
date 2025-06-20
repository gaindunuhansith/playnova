package com.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.model.Game;
import com.util.DBConnect;

public class GameServices implements IGameService {
	private static boolean isSuccess;
	private static Connection con = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;

	@Override
	public boolean addGame(String name, String developer, String category, String description, String price, String image ) {

		isSuccess = false;

		try {
			con = DBConnect.getInstance().getConnection();
			String sql = "insert into games values (0, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, developer);
			pstmt.setString(3, category);
			pstmt.setString(4, description);
			pstmt.setString(5, price);
			pstmt.setString(6, image);
			int rs = pstmt.executeUpdate();

			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	@Override
	public List<Game> getById(String id){

		int convertedID = Integer.parseInt(id);

		ArrayList<Game> game = new ArrayList<>();

		try {
			con = DBConnect.getInstance().getConnection();
			String sql = "select * from games where gameID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, convertedID);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				int gameID = rs.getInt(1);
				String name = rs.getString(2);
				String developer = rs.getString(3);
				String category = rs.getString(4);
				String description = rs.getString(5);
				String price = rs.getString(6);
				String image = rs.getString(7);

				Game gm = new Game(gameID, name, developer, category, description, price, image);
				game.add(gm);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return game;
	}

	@Override
	public List<Game> getAllGames(){
		ArrayList<Game> games = new ArrayList<>();

		try {
			con = DBConnect.getInstance().getConnection();
			String sql = "select * from games";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				int gameID = rs.getInt(1);
				String name = rs.getString(2);
				String developer = rs.getString(3);
				String category = rs.getString(4);
				String description = rs.getString(5);
				String price = rs.getString(6);
				String image = rs.getString(7);

				Game gm = new Game(gameID, name, developer, category, description, price, image);
				games.add(gm);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return games;
	}

	@Override
	public boolean updateGame(String gameID, String name, String developer, String category, String description, String price, String image) {

		int convertedID = Integer.parseInt(gameID);
		isSuccess = false;

		try {
			con = DBConnect.getInstance().getConnection();
			String sql = "update games set name = ?, developer = ?, category = ?, description = ?, price = ?, image = ? where gameID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, developer);
			pstmt.setString(3, category);
			pstmt.setString(4, description);
			pstmt.setString(5, price);
			pstmt.setString(6, image);
			pstmt.setInt(7, convertedID);

			int rs = pstmt.executeUpdate();

			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	@Override
	public boolean deleteGame(String gameID) {

		int convertedID = Integer.parseInt(gameID);

		isSuccess = false;

		try {
			con = DBConnect.getInstance().getConnection();
			String sql = "delete from games where gameID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, convertedID);

			int rs = pstmt.executeUpdate();

			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}