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
<style>
div{
 display:inline-block;
 border: 2px solid black;
}
</style>
</head>
<body>
<%
	String sangname=request.getParameter("sangname");
	String size=request.getParameter("size");
	String [] color=request.getParameterValues("color");
	String addSang=request.getParameter("addSang");
%>

<br><br>
<h2>주문 상품</h2>
상품명 : <%=sangname %><br>
사이즈 : <%=size %><br>
색상 : 

<% 
	if(color==null)
	{%>
		<b>none color</b><br>
	<%}else{
		for(int i=0;i<color.length;i++)
		{%>
			<%=color[i] %>&nbsp;<div style="width:15px ; height:15px; background-color:<%=color[i]%>" ></div>
		<%}
}%>

<br>
추가상품: <%=addSang %>

</body>
</html>