<%@page import="model.myteam.TeamDto"%>
<%@page import="model.myteam.TeamDao"%>
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
	String num=request.getParameter("num");
	TeamDao dao=new TeamDao();
	TeamDto dto=dao.getData(num);
%>
<body>
	<form action="updateAction.jsp" method="post">
	
	<input type="hidden" name="num" value="<%=num%>">
		<table class="table table-bordered" style="width:300px">
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="name" class="form-control"
				required="required" style="width:120px;" placeholder="이름"
				value="<%=dto.getName() %>">
			</td>
		</tr>
		<tr>
			<th>운전면허</th>
			<td>
				<input type="checkbox" <%=dto.getDriver().equals("있음")?"checked":"" %> name="driver" >있음
			</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>
				<input type="text" name="addr" class="form-control"
				required="required" style="width:180px;" placeholder="주소"
				value="<%=dto.getAddr() %>">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<button type="submit" class="btn btn-warning">팀원정보수정</button>
			<button type="button" class="btn btn-success" onclick="location.href='list.jsp'">목록으로이동</button>
			</td>
		</tr>
	</form>
</body>
</html>