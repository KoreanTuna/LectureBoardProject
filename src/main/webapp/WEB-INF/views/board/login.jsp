<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <div style="width: 100%; text-align: center; padding-top: 100px">
        <img src="${path}/resources/img/dog.JPG" style="padding-bottom: 48px">
        <form method="post", action="loginOK">
            <div style="display: inline-block"><label>UserID :</label><input type="text" name="userid"></div>
            <div style="display: inline-block"><label>Password :</label><input type="password" name="password"></div>
            <button type="submit">로그인</button>
        </form>
    </div>
</body>
</html>
