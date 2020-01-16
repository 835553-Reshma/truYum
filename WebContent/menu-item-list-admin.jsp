<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List Admin</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> &nbsp;&nbsp;truYum &nbsp;&nbsp; <image src="images\truyum-logo-light.png"
        width=30 height=30 /> <nav> <a class="menu" href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <h1 class="heading">Menu Items</h1>
    <table cellspacing=10>
        <tr>
            <th align="left" width=25%>Name</th>
            <th class="align-right">Price</th>
            <th class="align-mid">Active</th>
            <th class="align-mid">Date of Launch</th>
            <th class="align-mid">Category</th>
            <th class="align-mid">Free Delivery</th>
            <th class="align-mid">Action</th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td class="align-left">${menuItem.getName()}</td>
                <td class="align-right"><f:setLocale value="en_In" /> <f:formatNumber
                        type="currency" value="${menuItem.getPrice()}" minFractionDigits="2"></f:formatNumber>
                </td>
                <td class="align-mid"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="align-mid"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy"></f:formatDate></td>
                <td class="align-mid">${menuItem.getCategory()}</td>
                <td class="align-mid"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="align-mid"><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>

            </tr>
        </c:forEach>

    </table>



    <footer> Copyright &copy; 2019 </footer>
</body>

</html>