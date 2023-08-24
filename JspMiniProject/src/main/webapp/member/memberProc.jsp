<%@page import="data.dao.MemberDao"%>
<%@page import="data.dto.MemberDto"%>
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
	request.setCharacterEncoding("utf-8");

	//데이터 읽어서 dto에 넣기
	MemberDto dto = new MemberDto();
	
	String name=request.getParameter("name");
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String hp=request.getParameter("hp");
	String addr=request.getParameter("addr");
	String email=request.getParameter("email1")+"@"+request.getParameter("email2");
	
	dto.setName(name);
	dto.setId(id);
	dto.setPass(pass);
	dto.setHp(hp);
	dto.setAddr(addr);
	dto.setEmail(email);
	
	//dao 선언 이후 insert 호출
	MemberDao dao= new MemberDao();
	dao.insertMember(dto);
	
	//gaipsuccess 페이지로 이동
	response.sendRedirect("../index.jsp?main=member/gaipsuccess.jsp?id="+id);
%>
</body>
</html>