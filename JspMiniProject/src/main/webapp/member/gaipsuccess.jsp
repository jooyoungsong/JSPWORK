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
<%
	String id=request.getParameter("id");
	MemberDao dao=new MemberDao();
	
	//아이디에 대한 이름 얻기
	String name=dao.getName(id);
	
%>

<div style="margin: 200px 200px;">
	<img alt="" src="image/spacee-scaled.jpg" style="width: 500px;">
	<b><%=name %>님의 회원가입을 축하합니다</b>
	<br><br>
	<button type="button" class="btn btn-info"
	onclick="location.href='index.jsp?main=login/loginMain.jsp'">로그인</button>
</div>
</body>
</html>