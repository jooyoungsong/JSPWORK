<%@page import="java.text.NumberFormat"%>
<%@page import="model.mymall.MallDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.mymall.MallDto"%>
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
	MallDao dao=new MallDao();
	MallDto dto=dao.getData(num);
	
	NumberFormat nf=NumberFormat.getCurrencyInstance();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
	<table>
	<tr>
		<th>상품명</th>
			<td><%=dto.getSangpum() %></td>
	</tr>
	<tr>
		<th>가격</th>
			<td><%=nf.format(dto.getPrice()) %></td>
	</tr>
	<tr>
		<th>등록일</th>
			<td><%=sdf.format(dto.getSangpum()) %></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
			<button type="button" class="btn btn-outline-info btn-lg"
			onclick="history.back()">이전으로 가기</button>
		</td>
	</tr>
	</table>
</body>
</html>