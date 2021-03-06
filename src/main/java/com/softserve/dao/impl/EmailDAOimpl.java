package com.softserve.dao.impl;

import com.softserve.dao.EmailDAO;
import com.softserve.db.DataSource;
import com.softserve.entities.Email;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmailDAOimpl implements EmailDAO {
    @Override
    public void add(Email email) {
        String sql = "INSERT INTO user_email(email) " +
                "VALUES(?)";
        try {

            Connection con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email.getEmail());

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public ArrayList<Email> getEmails() {
        ArrayList<Email> emails = new ArrayList<>();
        String sql = "SELECT * FROM restaurant.user_email;";
        ResultSet resultSet;
        Email email;
        Connection con;
        try {
            con = DataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            resultSet = ps.executeQuery(sql);
            while (resultSet.next()) {
                email = new Email();
                email.setEmail(resultSet.getString("email"));
                emails.add(email);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return emails;
    }

    @Override
    public boolean delete(int id) {

        String sql = "DELETE FROM restaurant.email WHERE idEmail = " + id;
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
}
