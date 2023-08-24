<%@page import="data.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gasoek+One&family=Hi+Melody&family=Nanum+Pen+Script&family=Poor+Story&family=Single+Day&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div style="margin:100px 200px;">
<img alt="" src="image/spacee-scaled.jpg" width="600">
<%
//세션으로부터 아이디를 얻는다
String myid=(String)session.getAttribute("myid");

//db에 있는 이름 가져온다
MemberDao dao=new MemberDao();
String name=dao.getName(myid);
%>

<br><br>
<b><%=name %>님이 로그인하셨습니다</b>
<button type="button" class="btn btn-danger" onclick="location.href='login/logoutAction.jsp'">로그아웃</button>
</div>
</body>
</html>