<%@page import="db.simpleboard.SimpleBoardDto"%>
<%@page import="db.simpleboard.SimpleBoardDao"%>
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
<%
	//num값 받기
	String num=request.getParameter("num");

	SimpleBoardDao dao=new SimpleBoardDao();
	SimpleBoardDto dto=dao.getBoard(num);
%>
<body>
	<div style="margin: 30px 30px; width:400px;">
		<form action="updateAction.jsp" method="post">
		<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered">
				<caption align="top"><b><i class="bi bi-pencil-square"></i>작성자</b></caption>
				<tr>
					<th style="background-color:#ffb6c1">작성자</th>
					<td>
						<input type="text" name="writer" class="form-control"
						required="required" autofocus="autofocus" style="width:150px;"
						value="<%=dto.getWriter()%>">
					</td>
				</tr>

				<tr>
					<th style="background-color:#ffb6c1">제목</th>
					<td>
						<input type="text" name="subject" class="form-control"
						required="required" style="width:270px;"
						value="<%=dto.getSubject()%>">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea style="width:500px; height:150px;"
						class="form-control" required="required" name="story"><%=dto.getStory() %></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<!--type이 image이거나 submit이면 기본이 submit입니다  -->
					<input type="image" src="../image/submit버튼.JPG" style="width:150px; height:80px;">
					<input type="image" src="../image/목록버튼.JPG" style="width:50px; margin-bottom: 20px;"
					onclick="location.href='boardList.jsp'; return false;">
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
</body>
</html>