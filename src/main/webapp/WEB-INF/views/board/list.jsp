<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<html>
<head>
    <meta charset="UTF-8">
    <title>
        PoketmonList
    </title>
    <style>
    </style>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<h1>Poketmon List</h1>
<a href="javascript:logout()">로그아웃</a>
<br/><a href="addform">포켓몬 추가하기</a>
<table id="list" width="90%">
    <tr>
        <th>포켓몬번호</th>
        <th>이름</th>>
        <th>타입</th>
        <th>특성</th>
        <th>분류</th>
        <th>포획률</th>

        <th>키</th>
        <th>몸무게</th>
        <th>친밀도</th>

        <th>도감정보</th>
        <th>보기</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <a href="post/${u.pid}">
            <tr>
        <%--        <td><img src="${pageContext.request.contextPath}/upload/${u.photo}" class="photo" alt="no Image"></td>--%>
            <td>${u.pnumber}</td>
            <td>${u.pname}</td>
            <td>${u.type}</td>
            <td>${u.spcial}</td>
            <td>${u.pclass}</td>
            <td>${u.catch_rate}</td>
            <td>${u.height}</td>
            <td>${u.weight}</td>
            <td>${u.familiar}</td>
            <td>${u.detail}</td>
                    <td><a href="post/${u.pid}">보기</a></td>
                    <td><a href="editform/${u.pid}">수정</a></td>
                    <td><a href="javascript:delete_ok('${u.pid}')">삭제</a></td>
        </tr>
        </a>
    </c:forEach>
</table>
<script>
    function delete_ok(pid){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='deleteok/' + pid;
    }
    function logout(){
        location.href='logout';
    }
</script>
</body>
</html>