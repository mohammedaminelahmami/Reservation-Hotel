package com.example.hotelkharboucha.Room;
//import dbConnecting form file Database
import com.Database.DbConnecting.DbConnecting;
import java.sql.*;
import java.util.*;

public class RoomRepository {
    
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    
    //Methode to add room
    public void addRoom(Room room) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO room VALUES(?, ?, ?, ?)");
            preparedStatement.setInt(1, room.getNum());
            preparedStatement.setInt(2, room.getIdType());
            preparedStatement.setString(3, room.getStatus());
            preparedStatement.setString(4, room.getDescription());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //Method for updating room
    public void updateRoom(Room room) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE room SET idType = ?, status = ?, description = ? WHERE num = ?");
            preparedStatement.setInt(1, room.getIdType());
            preparedStatement.setString(2, room.getStatus());
            preparedStatement.setString(3, room.getDescription());
            preparedStatement.setInt(4, room.getNum());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //Method for deleting room by number
    public void deleteRoom(int num) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM room WHERE num = ?");
            preparedStatement.setInt(1, num);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //Method for get room by number
    public Room getRoom(int num) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM room WHERE num = ?");
            preparedStatement.setInt(1, num);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return new Room(resultSet.getInt(1), resultSet.getInt(2), resultSet.getString(3), resultSet.getString(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //Method to get all rooms
    public List<Room> getAllRooms() {
        List<Room> rooms = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM room");
            ResultSet resultSet = preparedStatement.executeQuery();
            rooms = new ArrayList<>();
            while (resultSet.next()) {
                rooms.add(new Room(resultSet.getInt(1), resultSet.getInt(2), resultSet.getString(3), resultSet.getString(4)));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rooms;
    }
    //methode to check if room is exist
    public boolean isRoomExist(int num) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM room WHERE num = ?");
            preparedStatement.setInt(1, num);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
