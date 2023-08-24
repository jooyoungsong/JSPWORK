<%@page import="data.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gasoek+One&family=Hi+Melody&family=Nanum+Pen+Script&family=Poor+Story&family=Single+Day&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String cbsave=request.getParameter("cbsave"); //체크 안하면 null
	
	MemberDao dao=new MemberDao();
	boolean b= dao.isIdPass(id,pass);
	
	//아이디와 비번이 맞으면 3개의 세션을 저장하고 로그인 메인으로 돌아옴
	if(b){
		session.setMaxInactiveInterval(60*60*3);
		session.setAttribute("loginok", "yes");
		session.setAttribute("myid", id);
		session.setAttribute("saveok", cbsave==null?null:"yes");


			//로그인메인으로 이동
			response.sendRedirect("../index.jsp?main=login/loginMain.jsp");
			}else{%>
				<script type="text/javascript">
					alert("아이디/비밀번호가 일치하지 않습니다");
					history.back();
				</script>	
			<%}
%>
</body>
</html>