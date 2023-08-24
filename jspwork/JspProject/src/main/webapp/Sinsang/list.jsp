<%@page import="model.sinsang.SinsangDto"%>
<%@page import="java.util.Vector"%>
<%@page import="model.sinsang.SinsangDao"%>
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
	SinsangDao dao=new SinsangDao();
	Vector<SinsangDto> list=dao.getAllDatas();
%>
</body>
<button type="button" class="btn btn-info" onclick="location.href='insertForm.jsp'">데이터추가</button>
<br>
<table class="table table-bordered" style="width:700px;">
<tr class="table-warning" style="text-align:center">
	<th width="60">번호</th>
	<th width="100">이름</th>
	<th width="250">주소</th>
	<th width="250">날짜</th>
	<th width="150">편집</th>
</tr>

<%
	for(int i=0;i<list.size();i++)
	{
		SinsangDto dto=list.get(i);
		%>
		
		<tr>
			<td><%=i+1 %></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getAddr() %></td>
			<td><%=dto.getSdate() %></td>
			<td><button type="button" class="btn btn-info btn-sm"
			onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
			<button type="button" class="btn btn-danger btn-sm"
			onclick="location.href='delete.jsp?num=<%=dto.getNum()%>'">삭제</button></td>
		</tr>
	<%}
%>
</table>
</html>