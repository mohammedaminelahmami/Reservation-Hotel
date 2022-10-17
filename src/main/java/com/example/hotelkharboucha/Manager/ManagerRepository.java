package com.example.hotelkharboucha.Manager;

import java.sql.*;

public class ManagerRepository {
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;


    //Methode to check if manager exist
    public boolean isExist(String username) {
        boolean exist = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM manager WHERE username = ?");
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
                exist = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
    }
        return exist;
    }
    // Login method
    public Manager login(String username, String password) {
        Manager manager = null;
        try {
            if(isExist(username)) {
                PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM manager WHERE username = ? AND password = ?");
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, password);
                ResultSet resultSet = preparedStatement.executeQuery();
                if(resultSet.next()) {
                    manager = new Manager(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
    }
        return manager;
    }

    //Methode to add manager
    public void newManager(Manager manager) {
        try {
            if(!isExist(manager.getUsername()))
            {
                PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO manager (username,password) VALUES(?, ?)");
                preparedStatement.setString(1, manager.getUsername());
                preparedStatement.setString(2, manager.getPassword());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


