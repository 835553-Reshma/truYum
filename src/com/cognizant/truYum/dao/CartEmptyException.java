package com.cognizant.truYum.dao;

import java.util.Arrays;

public class CartEmptyException extends Exception {

    private static final long serialVersionUID = 1L;

    @Override
    public String toString() {
        return "Cart is Empty";

    }

}
