<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="db.quiz.QuizBoardDao"%>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String num=request.getParameter("num");
	QuizBoardDao dao=new QuizBoardDao();
	QuizBoardDto dto=dao.getData(num);
%>

	<table class="table table-bordered" style="width:500px; margin:auto; margin-top:200px;">
		<tr>
			<th>제목</th>
				<td><b><%=dto.getTitle() %></b></td>
		</tr>
		<tr>
			<th>내용</th>
				<td><%=dto.getContent() %></td>
		</tr>
		<tr>
			<th>이미지</th>
				<td><img src="<%=dto.getImgname() %>"></td>
		</tr>
		
		<tr>
			<td  colspan="2" align="center">
				<button class="btn btn-outline-warning btn-sm" onclick="history.back();"><i class="bi bi-arrow-left-square"></i>&nbsp;뒤로가기</button>
			</td>
		</tr>
	</table>
</body>
</html>