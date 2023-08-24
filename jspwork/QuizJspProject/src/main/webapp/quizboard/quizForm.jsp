<%@page import="db.quiz.QuizBoardDto"%>
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

<form action="quizAction.jsp" method="post" enctype="multipart/form-data">

	<table class="table table-bordered" style="width:420px; margin:30px 40px;">

	<tr>
		<th style="text-align:center; width:80px;" valign="middle">작성자</th>
		<td>
			<input type="text" name="writer" class="form-control" placeholder="작성자를 입력하세요" required="required" style="width:200px;">
		</td>
	</tr>


	<tr>
		<th style="text-align:center; width:80px;" valign="middle">제목</th>
		<td>
			<input type="text" name="title" class="form-control" placeholder="제목 입력하세요" required="required" style="width:200px;">
		</td>
	</tr>

	
	<tr>
		<th style="text-align:center; width:80px;" valign="middle">내용</th>
		<td>
			<textarea style="width:300px; height:150px;" name="content" class="form-control"></textarea>
		</td>
	</tr>
	
	<tr>
		<th style="text-align:center; width:80px;" valign="middle">파일</th>
		<td>
			<input type="file" name="imgname" class="form-control">
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<button type="submit" class="btn btn-outline-success"><i class="bi bi-check2-circle"></i>등록</button>
			<button type="submit" class="btn btn-outline-secondary" onclick="location.href='quizList.jsp'"><i class="bi bi-clipboard"></i>목록</button>
		</td>
	</tr>
	
	</table>
</form>
</body>
</html>