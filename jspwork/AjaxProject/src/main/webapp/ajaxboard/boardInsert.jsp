<%@page import="db.ajaxboard.ajaxboardDto"%>
<%@page import="db.ajaxboard.ajaxboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
ajaxboardDao dao=new ajaxboardDao();

	request.setCharacterEncoding("utf-8");
	
	String writer= request.getParameter("writer");
	String subject= request.getParameter("subject");
	String story= request.getParameter("story");
	String avata= request.getParameter("avata");

	ajaxboardDto dto = new ajaxboardDto();
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setStory(story);
	dto.setAvata(avata);
	
	dao.insertBoard(dto);
%>
</body>
</html>