<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.quiz.QuizBoardDao"%>
<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="java.util.ArrayList"%>
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
<style>
.my_hr1{
 	border: 0;
    height: 10px;
    background: #ccc;
}
</style>
</head>
<body>
<%
	QuizBoardDao dao=new QuizBoardDao();
	ArrayList<QuizBoardDto> list=dao.selectQuiz();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>

<div>
	<h2 style="margin: 20px 10px;">전체글보기</h2>
	<br>
	<b style="margin: 20px 10px;"><%=list.size() %>개의 글</b>
	<button type="button" class="btn btn-outline-success btn-sm" onclick="location.href='quizForm.jsp'">글쓰기</button>
		<div style="float:right; margin-right:40px;"><input type="checkbox">&nbsp;공지숨기기&nbsp;&nbsp;|&nbsp;&nbsp;
			<i class="bi bi-grid-fill" onclick="location.href='quizimageList.jsp'"></i>&nbsp;&nbsp;
			<i class="bi bi-card-text" onclick="location.href='quizList.jsp'"></i>
		</div>
	<hr class="my_hr1">
</div>

<table class="table table-striped" style="width:900px;">
	<tr style="text-align:center">
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	
	<%
		for(int i=0;i<list.size();i++)
		{
			QuizBoardDto dto=list.get(i);
		%>
			<tr style="text-align:center">
				<td><%=list.size()-i %></td>
				<td><%=dto.getWriter() %></td>
				<td><label onclick="location.href='contentView.jsp?num=<%=dto.getQ_num()%>'"><%=dto.getTitle() %>&nbsp;&nbsp;<img src="<%=dto.getImgname()%>" width="25px; height:5px;"></label></td>
				<td><%=sdf.format(dto.getWriteday()) %></td>
				<td><%=dto.getReadcount() %></td>
			</tr>
		<%}
	%>
</table>
</body>
</html>