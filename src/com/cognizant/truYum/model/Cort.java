package com.cognizant.truYum.model;

public class Cort {
    private List<MenuItem> menuItemList;
    private double total;
    
public Cort() {
    // TODO Auto-generated constructor stub
}

public Cort(List<MenuItem> menuItemList, double total) {
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
    return "Cort [total=" + total + ", getTotal()=" + getTotal() + ", getClass()=" + getClass()
            + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}
}
