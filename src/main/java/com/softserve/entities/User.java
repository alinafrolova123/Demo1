package com.softserve.entities;

import java.util.Objects;

public class User {
    private int idUser;
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
        this.idUser = id_user;
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

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
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
                "idUser=" + idUser +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;
        User user = (User) o;
        return idUser == user.idUser &&
                Objects.equals(name, user.name) &&
                Objects.equals(surname, user.surname) &&
                Objects.equals(phone_number, user.phone_number) &&
                Objects.equals(login, user.login) &&
                Objects.equals(password, user.password) &&
                Objects.equals(role, user.role);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idUser, name, surname, phone_number, login, password, role);
    }
}
