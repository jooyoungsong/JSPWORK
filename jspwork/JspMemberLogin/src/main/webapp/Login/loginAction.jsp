<%@page import="member.model.memberDao"%>
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
	String id=request.getParameter("id");
	String pw=request.getParameter("pass");
	String save=request.getParameter("savechk");
	
	memberDao db=new memberDao();
	boolean flag=db.isLogin(id,pw);
	
	if(flag)
	{
		session.setAttribute("loginok", "yes");
		session.setAttribute("idok", id);
		session.setAttribute("saveok", save);
		session.setMaxInactiveInterval(60*60*8);
		
		response.sendRedirect("loginMain.jsp");
	} else{%>
		<script type="text/javascript">
			alert("아이디와 비밀번호가 맞지 않습니다");
			history.back;
		</script>	
	<%}
%>
</body>
</html>