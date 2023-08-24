<%@page import="db.simpleguest.SimpleGuestDao"%>
<%@page import="db.simpleguest.SimpleGuestDto"%>
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
	<%--
	<%
		request.setCharacterEncoding("utf-8");  //post 방식에서는 한글 깨짐이 있다. 그래서 꼭 한글 깨짐 방지를 위해 추가해야함
	
		String image=request.getParameter("image");
		String nick=request.getParameter("nick");
		String pass=request.getParameter("pass");
		String story=request.getParameter("story");
	
		SimpleGuestDto dto=new SimpleGuestDto();
		dto.setImage(image);
		dto.setNick(nick);
		dto.setPass(pass);
		dto.setStory(story);
		
		SimpleGuestDao dao=new SimpleGuestDao();
		dao.insertSimpleGuest(dto);
		
		//목록으로 이동
		response.sendRedirect("guestList.jsp");
		
	%>
	  --%>
	  
	  <!--자바빈즈로 변경하려면?
	  	useBean은 new 객체를 생성하는 역할을 한다. 생성하는 객체명이 id로 부른다.
	  	setProperty는 id가 없고, name이 id 역할을 한다. 근데 여기서는 재세팅하는 게 name으로 해준다?!  
	  	*는 전체 속성을 가져오는 것을 의미함(get과 set 모두 가져오는 것 같음)-->
	  <%
	  	request.setCharacterEncoding("utf-8");
	  %>
	  
	  <jsp:useBean id="dao" class="db.simpleguest.SimpleGuestDao"/>
	  <jsp:useBean id="dto" class="db.simpleguest.SimpleGuestDto"/>
	  
	  <jsp:setProperty property="*" name="dto"/>
	  
	  <%
	  	//db에 insert
	  	dao.insertSimpleGuest(dto);
		//목록으로 이동
		response.sendRedirect("guestList.jsp");
	  %>
</body>
</html>