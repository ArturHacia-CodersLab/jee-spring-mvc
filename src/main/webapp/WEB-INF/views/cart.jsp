<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: artur
  Date: 15.06.19
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <c:forEach var="cartItem" items="${cart.cartItems}">
        <tr>
            <td>${cartItem}</td>
        </tr>
    </c:forEach>
</table>
<br><br>
W koszyku jest ${cartItemsCount} pozycji.<br>
W koszyku jest ${productCount} produktów.<br>
Wartość koszyka to: ${sum}
</body>
</html>
