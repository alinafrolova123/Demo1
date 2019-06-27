package com.softserve.dao.impl;

import com.softserve.db.DataSource;
import com.softserve.entities.Dish;
import com.softserve.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DishDAOimpl {

    public static boolean add(Dish dish) {
        Connection con = null;

        String sql = "INSERT INTO dishes (name, description, price, type)  " +
                "VALUES(?,?,?,?)";
        try {

             con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, dish.getName());
            ps.setString(2, dish.getDescription());
            ps.setString(3, dish.getPrice());
            ps.setInt(4, dish.getType());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(con != null){
                    con.close();
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return false;
    }


    public static void getAllDishes(int id_dish) {
        ArrayList<Dish> dishes = new ArrayList<>();
        dishes.add(getById(id_dish));
    }

    public static List<Dish> getDishes() {
        List<Dish> dishes = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.dishes WHERE type=true;";
        ResultSet resultSet;
        Dish dish;
        Connection con=null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                dish = new Dish();
                dish.setName(resultSet.getString("name"));
                dish.setDescription(resultSet.getString("description"));
                dish.setPrice(resultSet.getString("price"));
                dishes.add(dish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(con != null){
                    con.close();
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return dishes;
    }

    public static List<Dish> getDrinks() {
        List<Dish> drinks = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.dishes WHERE type=false;";
        ResultSet resultSet;
        Dish dish;
        Connection con=null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                dish = new Dish();
                dish.setName(resultSet.getString("name"));
                dish.setDescription(resultSet.getString("description"));
                dish.setPrice(resultSet.getString("price"));
                drinks.add(dish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(con != null){
                    con.close();
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return drinks;
    }


    public static List<Dish> getItems() {
        List<Dish> dishes = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.dishes;";
        ResultSet resultSet;
        Dish dish;
        Connection con=null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                dish = new Dish();
                dish.setId_dish(resultSet.getInt("id_dish"));
                dish.setName(resultSet.getString("name"));
                dish.setDescription(resultSet.getString("description"));
                dish.setPrice(resultSet.getString("price"));
                dishes.add(dish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(con != null){
                    con.close();
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return dishes;
    }


    public static Dish getById(int id_dish) {
        Connection con =null;
        String sql = "SELECT name, description, price FROM dishes WHERE id_dish = ?";
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id_dish);
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.first()) {
                Dish dish = new Dish();
                dish.setName(resultSet.getString(1));
                dish.setDescription(resultSet.getString(2));
                dish.setPrice(resultSet.getString(3));
                return dish;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(con != null){
                    con.close();
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return null;

    }
}
