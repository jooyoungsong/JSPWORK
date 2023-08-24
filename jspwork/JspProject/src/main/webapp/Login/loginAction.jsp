<%@page import="idx.model.IdxDao"%>
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
	String pass=request.getParameter("pass");
	String save=request.getParameter("savechk");
	
	//위에서 받았으면 아이디와 비번 맞는지 확인해봐야함
	IdxDao db=new IdxDao();
	boolean flag=db.isLogin(id, pass);  //무조건 참일 때만 가져온다는 의미, flag는 지금 true인 상태
	
	//맞으면 세션을 지정해준 후,로그인 메인으로 가도록 만들어야 함
	if(flag)
	{
		//session 지정(3개)_1.로그인 중인지 알 수 있는 세션 저장
		session.setAttribute("loginok", "yes");
		//session 지정(3개)_2.아이디 세션 저장
		session.setAttribute("idok", id);
		
		//session 지정(3개)_3.체크값 세션 저장_체크하면 값이 on, 안하면 null_
		//loginForm에서 input태그에 checkbox일 경우, value 값 없으면 null이나 on 하기로 한 거고,value값 있으면 value값 그대로 가져온다.
		session.setAttribute("saveok", save);
		
		//세션 유지시간
		session.setMaxInactiveInterval(60*60*8); //8시간동안 유지(생략시 30분)
		//로그인메인으로 이동
		response.sendRedirect("loginMain.jsp");
	} else{%>
		
		<script type="text/javascript">
			alert("아이디와 비밀번호가 맞지 않습니다");
			history.back();
		</script>
	<%}
%>
</body>
</html>