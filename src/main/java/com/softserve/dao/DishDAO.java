package com.softserve.dao;

import com.softserve.entities.Dish;

import java.util.List;

public interface DishDAO {

    boolean add(Dish dish);

    void edit(Dish dish);

    boolean delete(int id);

    List<Dish> getDishes();

    List<Dish> getDrinks();

    List<Dish> getItems();

    Dish getById(int idDish);
}
