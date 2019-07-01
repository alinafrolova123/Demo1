package com.softserve.dao.impl;

import com.softserve.dao.UserDAO;
import com.softserve.db.DataSource;
import com.softserve.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAOimpl implements UserDAO {

    public boolean add(User user) {

        String sql = "INSERT INTO restaurant.user(name, surname, phone_number, login, password, role) " +
                "VALUES(?,?,?,?,?,?)";
        try {

            Connection con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getSurname());
            ps.setString(3, user.getPhone_number());
            ps.setString(4, user.getLogin());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getRole());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static ArrayList<User> getUsers() {
        ArrayList<User> users = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.user;";
        ResultSet resultSet;
        User user;
        Connection con;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                user = new User();
                user.setIdUser(resultSet.getInt("idUser"));
                user.setName(resultSet.getString("name"));
                user.setSurname(resultSet.getString("surname"));
                user.setPhone_number(resultSet.getString("phone_number"));
                user.setLogin(resultSet.getString("login"));
                user.setPassword(resultSet.getString("password"));
                user.setRole("user");
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public void edit(User user) {
        String sql = "UPDATE restaurant.user SET name = ?, surname = ?, phone_number = ?, login = ?, password = ? where idUser = ?";
        Connection con = null;
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getSurname());
            ps.setString(3, user.getPhone_number());
            ps.setString(4, user.getLogin());
            ps.setString(5, user.getPassword());
            ps.setInt(6,user.getIdUser());

            ps.executeUpdate();

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


    public boolean delete(int id) {
        String sql = "DELETE FROM restaurant.user WHERE idUser =" + id;
        Connection con = null;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            return ps.executeUpdate(sql)>0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    public User getByLogin(String login) {
        Connection con = null;
        String sql = "SELECT idUser, name, surname, phone_number, login, password, role FROM restaurant.user WHERE login = ?";
        try {

            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, login);
            ResultSet resultSet = ps.executeQuery();
            if(resultSet.first()){
                User user = new User();
                user.setIdUser(resultSet.getInt(1));
                user.setName(resultSet.getString(2));
                user.setSurname(resultSet.getString(3));
                user.setPhone_number(resultSet.getString(4));
                user.setLogin(resultSet.getString(5));
                user.setPassword(resultSet.getString(6));
                user.setRole(resultSet.getString(7));
                return user;
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
