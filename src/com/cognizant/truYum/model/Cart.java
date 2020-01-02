package com.cognizant.truYum.model;

import java.util.List;

public class Cart {
    private List<MenuItem> menuItemList;
    private double total;

    public Cart() {
        // TODO Auto-generated constructor stub
    }

    public Cart(List<MenuItem> menuItemList, double total) {
        super();
        menuItemList = menuItemList;
        this.total = total;
    }

    public List<MenuItem> getMenuItemList() {
        return menuItemList;
    }

    public void setMenuItemList(List<MenuItem> menuItemList) {
        menuItemList = menuItemList;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Cart [total=" + total + ", getTotal()=" + getTotal() + ", getClass()=" + getClass()
                + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
    }
}

