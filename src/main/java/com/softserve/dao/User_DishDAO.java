package com.softserve.dao;

public interface User_DishDAO {

    void add(int idUser, int idDish);

    boolean delete(int idDish);

    int getBill();

    void deleteAll();
}
