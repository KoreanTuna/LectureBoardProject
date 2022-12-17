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

<h1>수정하기</h1>
<form:form modelAttribute="editform" method="get" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>강의명</td><td><form:input type="text" path="name"/></td></tr>
        <tr><td>학점</td><td><form:input type="number" path="credit"/></td></tr>
        <tr><td>영어학점</td><td><form:input type="number" path="englishCredit"/></td></tr>
        <tr><td>전공유무:</td><td><select name="major">
            <option value="선택" selected>선택</option>
            <option value="전공">전공</option>
            <option value="교양">교양</option>
        </select></td></tr>

        <tr><td>강의시간</td><td><form:input type="number" path="time"/></td></tr>
        <tr><td>교수명</td><td><form:input type="text" path="professor"/></td></tr>
        <tr><td>강의학기</td><td><form:input type="number" path="semester"/></td></tr>
        <tr><td>선수과목</td><td><form:input type="text" path="pre"/></td></tr>
        <tr><td>강의설명</td><td><form:input  type="textarea" path="detail"/></td></tr>
    </table>
    <input type="submit" value="수정하기">
    <input type="button" value="취소" onclick="history.back()">
</form:form>
</body>
</html>