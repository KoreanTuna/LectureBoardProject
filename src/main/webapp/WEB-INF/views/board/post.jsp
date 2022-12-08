<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <meta charset="UTF-8">
    <title>
        PoketmonPost
    </title>
    <style>
    </style>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<%--(pnumber, pname, type, spcial, pclass, catch_rate,height,weight,familiar, detail) values (?,?,?,?,?,?,?,?,?,?)";--%>

<h1 id="post_title">${post.pname}</h1>
<table id="post">
    <tr><td class="title">포켓몬번호</td><td>${post.pnumber}</td></tr>
    <tr><td  class="title">포켓몬타입</td><td>${post.type}</td></tr>
    <tr><td  class="title">포켓몬특성</td><td>${post.spcial}</td></tr>
    <tr><td  class="title">포획률</td><td>${post.catch_rate}</td></tr>
    <tr><td  class="title">키</td><td>${post.height}</td></tr>
    <tr><td  class="title">몸무게</td><td>${post.weight}</td></tr>
    <tr><td  class="title">친밀도</td><td>${post.familiar}</td></tr>
    <tr><td  class="title">도감정보</td><td>${post.detail}</td></tr>
</table>
</body>
</html>