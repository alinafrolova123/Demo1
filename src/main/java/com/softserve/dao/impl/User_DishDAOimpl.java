package com.softserve.dao.impl;

import com.softserve.dao.User_DishDAO;
import com.softserve.db.DataSource;
import com.softserve.entities.Dish;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class User_DishDAOimpl implements User_DishDAO {

    @Override
    public void add(int idUser, int idDish) {
        Connection con = null;
        String sql = "INSERT INTO restaurant.user_dish (idUser,idDish)  " +
                "VALUES( " + idUser + "," + idDish + ")";
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
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
            finally {
                try{
                    if(con != null){
                        con.close();
                    }
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public boolean delete(int idDish) {
        Connection con = null;
        String sql = "DELETE FROM restaurant.user_dish WHERE idDish = " + idDish;
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            return ps.executeUpdate(sql) > 0;

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

    @Override
    public int getBill() {
        ArrayList<Integer> price = new ArrayList<Integer>();
        int bill = 0;
        Connection con = null;
        ResultSet resultSet;
        String sql = "SELECT price FROM restaurant.user_dish u JOIN restaurant.dishes d ON u.idDish = d.idDish;";
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                bill += Dish.removeFirstChar(resultSet.getString("price"));
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
        return bill;
    }

    @Override
    public void deleteAll() {
        Connection con = null;
        String sql = "TRUNCATE TABLE restaurant.user_dish;";
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.executeUpdate(sql);

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
}
