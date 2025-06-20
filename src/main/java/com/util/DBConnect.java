package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

    private static DBConnect instance;
    private Connection connection;
    private final String username = "root";
    private final String password = "Abc@123456";
    private final String url = "jdbc:mysql://localhost:3306/playnova?useSSL=false&serverTimezone=UTC";

    private DBConnect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        this.connection = DriverManager.getConnection(url, username, password);
    }

    public static DBConnect getInstance() throws ClassNotFoundException, SQLException {
        if (instance == null || instance.getConnection().isClosed()) {
            instance = new DBConnect();
        }
        return instance;
    }

    public Connection getConnection() {
        return connection;
    }
}
