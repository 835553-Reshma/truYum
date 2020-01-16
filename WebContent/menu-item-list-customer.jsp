<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List Customer</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js\script.js"></script>
</head>
<body>


    <header> &nbsp;&nbsp;truYum &nbsp;&nbsp; <image src="images\truyum-logo-light.png"
        width=30 height=30 /> <nav> <a class="menu" href="ShowMenuItemListCustomer">Menu</a>
    <a class="cart" href="ShowCart">Cart</a> </nav> </header>
    <h1 class="heading">Menu Items</h1>
    <c:if test="${addCartStatus==true}">
        <h4 class="paragraph" align="center">
            <b>Item added to Cart Successfully</b>
        </h4>
    </c:if>
    <table cellpadding=5px>
        <tr>
            <th align="left" width=30%>Name</th>
            <th class="align-mid">Free Delivery</th>
            <th class="align-right">Price</th>
            <th class="align-mid">Category</th>
            <th class="align-mid">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td class="align-left">${menuItem.getName()}</td>
                <td class="align-mid"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="align-right">${menuItem.getPrice()}</td>
                <td class="align-mid">${menuItem.getCategory()}</td>

                <td class="align-mid"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                        to Cart</a></td>

            </tr>
        </c:forEach>


        <footer> Copyright &copy; 2019 </footer>
</body>
</html>