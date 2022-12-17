<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<html>
<head>
    <meta charset="UTF-8">
    <title>
        LectureList
    </title>
    <style>
    </style>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<h1>강의 리스트</h1>

<div style="font-weight: bold; font-size: 18px; display: inline-block; padding-right: 12px">
    전체학점 :${credit.credit}
</div>
<div style="font-weight: bold; font-size: 18px; display: inline-block">
    전공학점 :${credit.majorCredit}
</div>
<div style="font-weight: bold; font-size: 18px; display: inline-block">
    전공영어학점 :${credit.englishCredit}
</div><br><br>

<table id="list" width="90%">
    <tr>
        <td>강의명</td>
        <td>학점</td>
        <td>영어학점</td>
        <td>전공유무</td>
        <td>강의시간</td>
        <td>교수명</td>
        <td>수업학기</td>
        <td>선수과목</td>
        <th>보기</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <a href="post/${u.seq}">
            <tr>
                <td>${u.name}</td>
                <td>${u.credit}</td>
                <td>${u.englishCredit}</td>
                <td>${u.major}</td>
                <td>${u.time}</td>
                <td>${u.professor}</td>
                <td>${u.semester}</td>
                <td>${u.pre}</td>
                    <td><a href="post/${u.seq}">보기</a></td>
                    <td><a href="editform/${u.seq}">수정</a></td>
                    <td><a href="javascript:delete_ok('${u.seq}')">삭제</a></td>
        </tr>
        </a>
    </c:forEach>
</table>
<a style="display:inline-block; text-decoration:none; padding: 4px 12px; background: red; color: #dddddd; margin-bottom: 20px" href="javascript:logout()">로그아웃</a>
<a style=" display:inline-block;text-decoration:none; padding: 4px 12px; background: #006bb3; color: #dddddd;margin-bottom: 20px" href="addform">강의 추가하기</a>
<script>
    function delete_ok(seq){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='deleteok/' + seq;
    }
    function logout(){
        location.href='logout/';
    }
</script>
</body>
</html>