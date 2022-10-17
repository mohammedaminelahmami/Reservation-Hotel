package com.example.hotelkharboucha.Room;

public class Room {
    private int num;
    private int idType;
    private String status;
    private String description;
    public Room(int num, int idType, String status, String description) {
        this.num = num;
        this.idType = idType;
        this.status = status;
        this.description = description;
    }
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }
    public int getIdType() {
        return idType;
    }
    public void setIdType(int idType) {
        this.idType = idType;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    
}   
