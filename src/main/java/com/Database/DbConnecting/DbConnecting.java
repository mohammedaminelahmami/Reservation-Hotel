package com.Database.DbConnecting;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnecting {
    private static final String URL = "jdbc:postgresql://localhost:5432/kharbouchahotel";
    private static final String USER = "postgres";
    private static final String PASSWORD = "kankuro@1999";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}