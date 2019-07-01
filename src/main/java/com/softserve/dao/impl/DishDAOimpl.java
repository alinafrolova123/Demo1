package com.softserve.dao.impl;

import com.softserve.dao.DishDAO;
import com.softserve.db.DataSource;
import com.softserve.entities.Dish;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DishDAOimpl implements DishDAO {
    @Override
    public boolean add(Dish dish) {
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
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public void edit(Dish dish) {
        String sql = "UPDATE restaurant.dishes SET name = ?, description = ?, price = ? where idDish = ?";
        Connection con = null;
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, dish.getName());
            ps.setString(2, dish.getDescription());
            ps.setString(3, dish.getPrice());
            ps.setInt(4, dish.getIdDish());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM restaurant.dishes WHERE idDish = " + id;
        Connection con = null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            return ps.executeUpdate(sql) > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Dish> getDishes() {
        List<Dish> dishes = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.dishes WHERE type=1;";
        ResultSet resultSet;
        Dish dish;
        Connection con = null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                dish = new Dish();
                dish.setIdDish(resultSet.getInt("idDish"));
                dish.setName(resultSet.getString("name"));
                dish.setDescription(resultSet.getString("description"));
                dish.setPrice(resultSet.getString("price"));
                dishes.add(dish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return dishes;
    }

    @Override
    public List<Dish> getDrinks() {
        List<Dish> drinks = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.dishes WHERE type=0;";
        ResultSet resultSet;
        Dish dish;
        Connection con = null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                dish = new Dish();
                dish.setIdDish(resultSet.getInt("idDish"));
                dish.setName(resultSet.getString("name"));
                dish.setDescription(resultSet.getString("description"));
                dish.setPrice(resultSet.getString("price"));
                drinks.add(dish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return drinks;
    }

    @Override
    public List<Dish> getItems() {
        List<Dish> dishes = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.dishes;";
        ResultSet resultSet;
        Dish dish;
        Connection con = null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                dish = new Dish();
                dish.setIdDish(resultSet.getInt("idDish"));
                dish.setName(resultSet.getString("name"));
                dish.setDescription(resultSet.getString("description"));
                dish.setPrice(resultSet.getString("price"));
                dishes.add(dish);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return dishes;
    }

    @Override
    public Dish getById(int idDish) {
        Connection con = null;
        String sql = "SELECT name, description, price, type FROM restaurant.dishes WHERE idDish = ?";
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, idDish);
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.first()) {
                Dish dish = new Dish();
                dish.setIdDish(idDish);
                dish.setName(resultSet.getString(1));
                dish.setDescription(resultSet.getString(2));
                dish.setPrice(resultSet.getString(3));
                dish.setType(resultSet.getInt(4));
                return dish;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;

    }
}
