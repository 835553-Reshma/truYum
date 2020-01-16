<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js\script.js"></script>
</head>
<body>
    <header> &nbsp;&nbsp;truYum &nbsp;&nbsp; <image src="images\truyum-logo-light.png"
        width=30 height=30 /> <nav> <a class="menu" href="ShowMenuItemListCustomer">Menu</a>
    <a class="cart" href="l">Cart</a> </nav> </header>
    <h1 class="heading">Cart</h1>
    <c:if test="${removeCartItemStatus==true}">
        <h4 class="paragraph" align="center">
            <b>Item removed from Cart successfully</b>
        </h4>
    </c:if>
    <c:set var="cart" value="${cart}"></c:set>
    <table cellpadding=5px>
        <tr>
            <th align="left" width=40%>Name</th>
            <th class="align-left">Free Delivery</th>
            <th class="align-right">Price</th>
            <th class="align-mid"></th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td class="align-left">${menuItem.getName()}</td>
                <td class="align-left"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="align-right"><f:setLocale value="en_In" /> <f:formatNumber
                        type="currency" value="${menuItem.getPrice()}" minFractionDigits="2"></f:formatNumber></td>
                <td class="align-mid"><a href="RemoveCart?menuItemId=${menuItem.getId()}">
                        Delete</a></td>

            </tr>
        </c:forEach>
        <th></th>
        <th class="align-left">Total</th>
        <th>Rs.${cart.getTotal()}</th>
        </tr>

    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>