<%--
  Created by IntelliJ IDEA.
  User: tomas
  Date: 16.03.2020
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Article added</title>
</head>
<body>
<c:if test="${not empty article}">
    <h1><c:out value="${article.title}"/></h1>
    <p>
        <c:out value="${article.content}"/>
    </p>
    <c:if test="${not empty article.tags}">
        <c:forEach var="tag" items="${article.tags}">
            <li><c:out value="${tag}"/></li>
        </c:forEach>
    </c:if>
</c:if>
</body>
</html>
