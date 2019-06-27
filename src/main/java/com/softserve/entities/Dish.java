package com.softserve.entities;

public class Dish {
    private int id_dish;
    private String name;
    private String description;
    private String price;
    private int type;


    public Dish() {
    }

    public Dish(int id_dish, String name, String description, String price, int type) {
        this.id_dish = id_dish;
        this.name = name;
        this.description = description;
        this.price = price;
        this.type = type;
    }
    public Dish(String name, String description, String price, int type) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.type = type;
    }

    public int getId_dish() {
        return id_dish;
    }

    public void setId_dish(int id_dish) {
        this.id_dish = id_dish;
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
}
