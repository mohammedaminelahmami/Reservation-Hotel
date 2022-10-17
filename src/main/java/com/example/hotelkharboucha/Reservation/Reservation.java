package com.example.hotelkharboucha.Reservation;

public class Reservation {
    private int id;
    private int idClient;
    private int idRoom;
    private String date_debut;
    private String date_fin;
    private int idExtra;

    public Reservation(int id, int idClient, int idRoom, String date_debut, String date_fin, int idExtra) {
        this.id = id;
        this.idClient = idClient;
        this.idRoom = idRoom;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.idExtra = idExtra;
    }
     public Reservation(int idClient, int idRoom, String date_debut, String date_fin, int idExtra) {
        this.idClient = idClient;
        this.idRoom = idRoom;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.idExtra = idExtra;
    }
    //setter and getter

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getIdClient() {
        return idClient;
    }
    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }
    public int getIdRoom() {
        return idRoom;
    }
    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }
    public String getDate_debut() {
        return date_debut;
    }
    public void setDate_debut(String date_debut) {
        this.date_debut = date_debut;
    }
    public String getDate_fin() {
        return date_fin;
    }
    public void setDate_fin(String date_fin) {
        this.date_fin = date_fin;
    }
    public int getIdExtra() {
        return idExtra;
    }
    public void setIdExtra(int idExtra) {
        this.idExtra = idExtra;
    }
    

    
}