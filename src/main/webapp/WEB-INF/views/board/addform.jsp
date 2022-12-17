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
<h1>강의 추가하기</h1>
<form action="addok" method="get">
    <table>
        <tr><td>강의명 : </td><td><input type="text" name="name"></td></tr>
        <tr><td>학점 : </td><td><input type="number" name="credit"></td></tr>
        <tr><td>영어학점 :</td><td><input type="number" name="englishCredit"></td></tr>
        <tr><td>전공유무:</td><td><select name="major">
            <option value="선택" selected>선택</option>
            <option value="전공">전공</option>
            <option value="교양">교양</option>
        </select></td></tr>
        <tr><td>강의시간</td><td><input type="number" name="time"></td></tr>
        <tr><td>교수명 :</td><td><input type="text" name="professor"></td></tr>
        <tr><td>강의학기 :</td><td><input type="number" name="semester"></td></tr>
        <tr><td>선수과목 :</td><td><input type="text" name="pre"></td></tr>
        <tr><td>강의설명 :</td><td><input type="textarea" name="detail"></td></tr>
    </table>
    <input type="reset" value="초기화히기">
    <input type="submit" value="저장하기">
    <input type="button" value="취소" onclick="history.back()">
</form>
</body>
</html>
