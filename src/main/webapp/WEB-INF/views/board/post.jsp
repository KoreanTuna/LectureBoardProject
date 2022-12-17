<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <meta charset="UTF-8">
    <title>
        Lecture Detail information
    </title>
    <style>
    </style>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<%--(pnumber, pname, type, spcial, pclass, catch_rate,height,weight,familiar, detail) values (?,?,?,?,?,?,?,?,?,?)";--%>

<h1 id="post_title">${post.name}</h1>
<table id="post">
    <tr><td class="title">강의명</td><td>${post.name}</td></tr>
    <tr><td  class="title">학점</td><td>${post.credit}</td></tr>
    <tr><td  class="title">영어학점</td><td>${post.englishCredit}</td></tr>
    <tr><td  class="title">전공유무</td><td>${post.major}</td></tr>
    <tr><td  class="title">강의시간</td><td>${post.time}</td></tr>
    <tr><td  class="title">교수명</td><td>${post.professor}</td></tr>
    <tr><td  class="title">선수과목</td><td>${post.pre}</td></tr>
    <tr><td  class="title">강의정보</td><td>${post.detail}</td></tr>
</table>
</body>
</html>