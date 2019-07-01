package com.softserve.dao;

import com.softserve.entities.Email;

import java.util.ArrayList;

public interface EmailDAO {

    void add(Email email);

    ArrayList<Email> getEmails();

    boolean delete(int id);
}
