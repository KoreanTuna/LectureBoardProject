<%--
  Created by IntelliJ IDEA.
  User: minwoo
  Date: 2022/12/03
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<h1>포켓몬 추가하기</h1>
<form action="addok" method="get">
    <table>
        <tr><td>포켓몬번호 : </td><td><input type="text" name="pnumber"></td></tr>
        <tr><td>이름 : </td><td><input type="text" name="pname"></td></tr>
        <tr><td>타입 :</td><td><input type="text" name="type"></td></tr>
        <tr><td>분류 :</td><td><input type="text" name="pclass"></td></tr>
        <tr><td>특성</td><td><input type="text" name="spcial"></td></tr>
        <tr><td>포획률 :</td><td><input type="number" step=0.1 name="catch_rate"></td></tr>
        <tr><td>키 :</td><td><input type="text" name="height"></td></tr>
        <tr><td>몸무게 :</td><td><input type="number" name="weight"></td></tr>
        <tr><td>친밀도 :</td><td><input type="number" name="familiar"></td></tr>
        <tr><td>도감설명 :</td><td><input type="text" name="detail"></td></tr>
    </table>
    <input type="submit" value="저장하기">
    <input type="button" value="취소" onclick="history.back()">
</form>
</body>
</html>
