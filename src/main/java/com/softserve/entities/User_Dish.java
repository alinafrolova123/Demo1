package com.softserve.entities;

public class User_Dish {
    private Integer idUser;
    private Integer idDish;

    public User_Dish(Integer idUser, Integer idDish) {
        this.idUser = idUser;
        this.idDish = idDish;
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public Integer getIdDish() {
        return idDish;
    }

    public void setIdDish(Integer idDish) {
        this.idDish = idDish;
    }
}
