package com.example.hotelkharboucha.Reservation;

import java.sql.*;
import java.util.*;
// ??????? new
import com.Database.DbConnecting.DbConnecting;

public class ReservationRepository {
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    //Methode to check if room reserved or not using status
    public boolean isAvailabe(int idRoom) {
        boolean available = false;
        try {
            // ????
            //connection = DbConnecting.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM room WHERE num = ?");
            preparedStatement.setInt(1, idRoom);
            ResultSet resultSet = preparedStatement.executeQuery();
            String status = preparedStatement.executeQuery().getString(3);
            if(status.equals("reserved")) {
                available = false;
            }
            else{
                available = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
    }
        return available;
    }

    //Methode to add reservation

    public void addReservation(Reservation reservation) {
        try {
            if(!isAvailabe(reservation.getIdRoom()))
            {
                //connection = DbConnecting.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO reservation (idCl,idRoom,date_debut,date_fin,idExtra) VALUES(?, ?, ?, ?, ?)");
                preparedStatement.setInt(1, reservation.getIdClient());
                preparedStatement.setInt(2, reservation.getIdRoom());
                preparedStatement.setString(3, reservation.getDate_debut());
                preparedStatement.setString(4, reservation.getDate_fin());
                preparedStatement.setInt(5, reservation.getIdExtra());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //Method to get all reservation

    public List<Reservation> getAllReservation() {
        List<Reservation> reservations = new ArrayList<>();
        try {
            //connection = DbConnecting.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM reservation");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                reservations.add(new Reservation(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getString(4), resultSet.getString(5), resultSet.getInt(6)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reservations;
    }
    
    //Method to get client reservation 
    
    public Reservation getClientReservation(int id) {
        Reservation reservation = null;
        try {
            //connection = DbConnecting.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM reservation WHERE id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return new Reservation(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getString(4), resultSet.getString(5), resultSet.getInt(6));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reservation;
    }
}
