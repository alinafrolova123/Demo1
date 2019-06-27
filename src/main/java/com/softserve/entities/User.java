package com.softserve.entities;

public class User {
    private int id_user;
    private String name;
    private String surname;
    private String phone_number;
    private String login;
    private String password;
    private String role;

    public User() {
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public User(int id_user, String name, String surname, String phone_number, String login, String password, String role) {
        this.id_user = id_user;
        this.name = name;
        this.surname = surname;
        this.phone_number = phone_number;
        this.login = login;
        this.password = password;
        this.role = role;
    }

    public User(String name, String surname, String phone_number, String login, String password, String role) {
        this.name = name;
        this.surname = surname;
        this.phone_number = phone_number;
        this.login = login;
        this.password = password;
        this.role = role;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public boolean isAdmin() {
        if (this.role.equals("admin")) {
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return "User{" +
                "id_user=" + id_user +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
