<%@page import="db.ajaxboard.ajaxboardDao"%>
<%@page import="db.ajaxboard.ajaxboardDto"%>
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
	//post방식
	request.setCharacterEncoding("utf-8");

	String num=request.getParameter("unum");
	String writer=request.getParameter("uwriter");
	String subject=request.getParameter("usubject");
	String story=request.getParameter("ustory");
	String avata=request.getParameter("uavata");
	
	//dto선언
	ajaxboardDto dto=new ajaxboardDto();
	
	dto.setNum(num);   //insert할 때는 num 안 쓰고, update할 때는 num 쓴다!
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setStory(story);
	dto.setAvata(avata);
	
	//dao선언_dao에서 만든 updateBoard 가져오기 위해 dao 선언함
	ajaxboardDao dao=new ajaxboardDao();  
	
	dao.updateBoard(dto);
%>
</body>
</html>