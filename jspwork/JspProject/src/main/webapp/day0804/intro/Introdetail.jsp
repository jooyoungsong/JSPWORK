<%@page import="model.intro.IntroDto"%>
<%@page import="model.intro.IntroDao"%>
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
String num=request.getParameter("num");
IntroDao dao=new IntroDao();
IntroDto dto= dao.getData(num);

%>

<table>
	<tr>
		<th>이름</th>
		<td><%=dto.getIntro_name() %></td>
	</tr>
	<tr>
		<th>혈액형</th>
		<td><%=dto.getIntro_blood() %></td>
	</tr>
	<tr>
		<th>핸드폰</th>
		<td><%=dto.getIntro_hp() %></td>
	</tr>
	<tr>
		<th>도시</th>
		<td><%=dto.getIntro_city() %></td>
	</tr>
</table>
</body>
</html>