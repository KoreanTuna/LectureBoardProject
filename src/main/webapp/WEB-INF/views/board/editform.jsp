<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>Edit Form</title>
    <style>
    </style>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<%--<c:forEach items="${list}" var="u">--%>

<h1>수정하기</h1>
<form:form modelAttribute="editform" method="get" action="../editok">
    <form:hidden path="pid"/>
    <table id="edit">
        <tr><td>포켓몬번호</td><td><form:input type="text" path="pnumber"/></td></tr>
        <tr><td>이름</td><td><form:input type="text" path="pname"/></td></tr>
        <tr><td>타입</td><td><form:input type="text" path="type"/></td></tr>
        <tr><td>분류</td><td><form:input type="text" path="pclass"/></td></tr>
        <tr><td>특성</td><td><form:input type="text" path="spcial"/></td></tr>
        <tr><td>포획률</td><td><form:input type="number" path="catch_rate"/></td></tr>
        <tr><td>키</td><td><form:input type="text" path="height"/></td></tr>
        <tr><td>몸무게</td><td><form:input type="double" path="weight"/></td></tr>
        <tr><td>친밀도</td><td><form:input  type="number" path="familiar"/></td></tr>
        <tr><td>도감설명</td><td><form:input type="text" path="detail"/></td></tr>
    </table>
    <input type="submit" value="수정하기">
    <input type="button" value="취소" onclick="history.back()">
</form:form>
</body>
</html>