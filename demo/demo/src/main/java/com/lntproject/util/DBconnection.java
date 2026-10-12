package com.lntproject.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {

    private static final String HOST = System.getenv("MYSQLHOST");
    private static final String PORT = System.getenv("MYSQLPORT");
    private static final String DATABASE = System.getenv("MYSQLDATABASE");
    private static final String USERNAME = System.getenv("MYSQLUSER");
    private static final String PASSWORD = System.getenv("MYSQLPASSWORD");

    public static Connection getConnection() {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE
                    + "?useSSL=true&requireSSL=true";

            return DriverManager.getConnection(url, USERNAME, PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}