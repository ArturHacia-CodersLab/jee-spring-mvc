<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: artur
  Date: 15.06.19
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" cellpadding="2" cellspacing="2">
    <c:forEach begin="0" end="${rows}" var="i">
        <tr>
            <c:forEach begin="0" end="${cols}" var="j">
                <td>
                    <c:choose>
                        <c:when test="${i == 0 && j == 0}">
                            x
                        </c:when>
                        <c:when test="${i == 0 && j != 0}">
                            ${j}
                        </c:when>
                        <c:when test="${i != 0 && j == 0}">
                            ${i}
                        </c:when>
                        <c:otherwise>
                            ${i*j}
                        </c:otherwise>
                    </c:choose>
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
