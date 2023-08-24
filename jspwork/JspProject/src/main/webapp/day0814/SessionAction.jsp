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
	request.setCharacterEncoding("utf-8");
	
	//세션이 있는지 확인 후, 없으면 꽝!!!... object 타입이라 오류 뜨는데, 왼쪽과 자료형 맞춰준다
	String msg=(String)session.getAttribute("msg");
	String travel=request.getParameter("travel");
	
	if(msg==null || !msg.equals("happy"))
	{%>
		<h3 style="color:red;">시간초과로 꽝입니다</h3>
	<%}else{%>
		<h3>축!!!<%=travel %>상품에 당첨됨!!</h3>
	<%}
%>

<a href="SessionForm.jsp">다시 선택</a>
</body>
</html>