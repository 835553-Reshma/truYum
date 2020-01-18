<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js\script.js">
    
</script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> &nbsp;&nbsp;truYum &nbsp;&nbsp; <image src="images\truyum-logo-light.png"
        width=30 height=30 /> <nav> <a class="menu" href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <h1 class="heading">Edit Menu Item</h1>

    <form action="EditMenuItem" method="post" name="menuItemForm"
        onsubmit="return validateMenuItemForm()">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <div>
            <label for="name">Name</label>
        </div>
        <div class="padding-bottom">
            <input type="text" id="name" name="name" value="${menuItem.getName()}" size=70 />
        </div>

        <span>
            <div>
                <label for="price">Price(Rs.)</label>
            </div>
            <div>
                <input type="text" id="price" name="price" value="${menuItem.getPrice()}" size=10 />
            </div>
        </span> <span>
            <div class="padding">
                <label for="active">Active</label>
            </div>
            <div class="padding-bottom">
                <c:choose>
                    <c:when test="${menuItem.isActive()==true}">
                        <input type="radio" value="Yes" name="active" checked="checked" />Yes
                        <input type="radio" value="No" name="active" />No</c:when>
                    <c:otherwise>
                        <input type="radio" value="Yes" name="active" />Yes
                        <input type="radio" value="No" name="active" checked="checked" />No</c:otherwise>
                </c:choose>

            </div>
        </span> <span> <!--  <div>${menuItem.isActive()}</div> -->
        </span> <span>
            <div class="padding">
                <label for="dateOfLaunch">Date of Launch</label>
            </div>
            <div class="padding">
                <f:formatDate value="${menuItem.getDateOfLaunch()}" var="dateOfLaunch"
                    pattern="dd/MM/yyyy" />
                <input type="text" name="dateOfLaunch" id="dateOfLaunch" value="${dateOfLaunch}" />
            </div>
        </span> <span>
            <div class="padding">Category</div>
            <div class="padding">
                <select name="category">
                    <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                    <option value="Main Course">Main Course</option>
                    <option value="Starters">Starters</option>
                    <option value="Dessert">Dessert</option>
                    <option value="Drinks">Drinks</option>
                </select>
            </div>
        </span>
        <div class="padding-bottom">
            <c:choose>
                <c:when test="${menuItem.isFreeDelivery()==true}">
                    <label for="free-delivery"><input type="checkbox" name="freeDelivery"
                        value="Yes" id="free-delivery" class="checkbox" checked="checked" />
                </c:when>
                <c:otherwise>
                    <input type="checkbox" name="freeDelivery" value="No" />
                </c:otherwise>
            </c:choose>
            <span>Free Delivery</span></label>
        </div>
        <input type="submit" value="Save" name="submit" class="submit" />
    </form>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>