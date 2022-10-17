package com.example.hotelkharboucha.Manager;

public class Manager {
    private int idM;
    private String username;
    private String password;

    public Manager(int idM, String username, String password) {
        this.idM = idM;
        this.username = username;
        this.password = password;
    }
    public Manager(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    public int getIdM() {
        return idM;
    }
    public void setIdM(int idM) {
        this.idM = idM;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    

}

