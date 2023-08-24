<%@page import="model.intro.IntroDao"%>
<%@page import="model.intro.IntroDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
 	request.setCharacterEncoding("utf-8");
 
 	String num=request.getParameter("num");
 	String name=request.getParameter("intro_name");
 	String blood=request.getParameter("intro_blood");
 	String hp=request.getParameter("hp1")+"-"+request.getParameter("hp2")+"-"+request.getParameter("hp3");
 	String city=request.getParameter("city");
 	//String gaipday=request.getParameter("gaipday");
 	
 	IntroDto dto=new IntroDto();
 	
 	dto.setIntro_num(num);
 	dto.setIntro_name(name);
 	dto.setIntro_blood(blood);
 	dto.setIntro_hp(hp);
 	dto.setIntro_city(city);
 	
 	IntroDao dao=new IntroDao();
 	
 	dao.updateIntro(dto);
 	
 	response.sendRedirect("list.jsp");
 %>
</body>
</html>