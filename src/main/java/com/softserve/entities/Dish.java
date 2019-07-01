package com.softserve.entities;

import java.util.Objects;

public class Dish {
    private Integer idDish;
    private String name;
    private String description;
    private String price;
    private Integer type;

    public Dish() {
    }

    public Dish(Integer idDish, String name, String description, String price, Integer type) {
        this.idDish = idDish;
        this.name = name;
        this.description = description;
        this.price = price;
        this.type = type;
    }

    public Dish(String name, String description, String price, Integer type) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.type = type;
    }

    public Integer getIdDish() {
        return idDish;
    }

    public void setIdDish(int idDish) {
        this.idDish = idDish;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }


    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Dish{" +
                "idDish=" + idDish +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price='" + price + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Dish)) return false;
        Dish dish = (Dish) o;
        return Objects.equals(idDish, dish.idDish) &&
                Objects.equals(name, dish.name) &&
                Objects.equals(description, dish.description) &&
                Objects.equals(price, dish.price) &&
                Objects.equals(type, dish.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idDish, name, description, price, type);
    }

    public static int removeFirstChar(String str) {
        return Integer.parseInt(str.substring(1));
    }
}

