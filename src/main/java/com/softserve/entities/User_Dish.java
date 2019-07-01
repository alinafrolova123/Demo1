package com.softserve.entities;

public class User_Dish {
    int idUser;
    int idDish;

    public User_Dish(int idUser, int idDish) {
        this.idUser = idUser;
        this.idDish = idDish;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdDish() {
        return idDish;
    }

    public void setIdDish(int idDish) {
        this.idDish = idDish;
    }
}
