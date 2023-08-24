<%@page import="db.memo.MemoDao"%>
<%@page import="db.memo.MemoDto"%>
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

	
	String writer=request.getParameter("uwriter");
	String story=request.getParameter("ustory");
	String avata=request.getParameter("uavata");
	String num=request.getParameter("unum");
	
	MemoDto dto=new MemoDto();
	
	
	dto.setWriter(writer);
	dto.setStory(story);
	dto.setAvata(avata);
	dto.setNum(num);
	
	MemoDao dao=new MemoDao();
	
	dao.updateMemo(dto);

%>
</body>
</html>