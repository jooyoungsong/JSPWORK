<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.simpleboard.SimpleBoardDto"%>
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
<style type="text/css">
	span.day{
		color:#ccc;
		font-size:0.8em;
	}
	
	body *{
		font-family:"Gaegu";
	}
</style>
</head>
<body>
<jsp:useBean id="dao" class="db.simpleboard.SimpleBoardDao"/>
<%
	//num을 읽는다
	String num=request.getParameter("num");

	//dao선언...위에서 선언
	//조회수 1증가
	dao.updateReadCount(num);

	
	//dto
	SimpleBoardDto dto=dao.getBoard(num);
	
	//날짜형식
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
%>

<div style="margin:30px 30px; width:500px;">
	<table class="table table-bordered">
		<caption align="top"><b><%=dto.getSubject() %></b></caption>
		<tr>
			<td>
				<b>작성자:<%=dto.getWriter() %></b><br>
				<span class="day"><%=sdf.format(dto.getWriteday()) %>
				&nbsp;&nbsp;&nbsp;조회:  <%=dto.getReadcount() %>
				</span>
			</td>
		</tr>
		
		<tr height="150">
			<td>
			<!--pre 태그 안에 쓰거나 replace()이용한다: db저장 시, br 태그가 \n으로 저장된다.
			그러므로 출력 시 다시 br로 변환  -->
				<%=dto.getStory().replace("\n", "<br>") %>
			</td>
		</tr>
		
		<tr>
			<td>
				<button type="button" class="btn btn-outline-success"
				onclick="location.href='addForm.jsp'"><i class="bi bi-pencil-square"></i>글쓰기</button>
				<button type="button" class="btn btn-outline-info"
				onclick="location.href='boardList.jsp'"><i class="bi bi-list"></i>목록</button>
				<button type="button" class="btn btn-outline-warning"
				onclick="location.href='updatepassForm.jsp?num=<%=dto.getNum()%>'"><i class="bi bi-eraser-fill"></i>수정</button>
				<button type="button" class="btn btn-outline-danger"
				onclick="location.href='deletepassForm.jsp?num=<%=dto.getNum()%>'"><i class="bi bi-trash3"></i>삭제</button>
			</td>
		</tr>
	</table>
</div>
</body>
</html>