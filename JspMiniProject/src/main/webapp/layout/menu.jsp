<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Gasoek+One&family=Hi+Melody&family=Nanum+Pen+Script&family=Poor+Story&family=Single+Day&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<%
	//절대경로잡기
	String root = request.getContextPath();
	String myid=(String)session.getAttribute("myid");
%>

<link rel="stylesheet" type="text/css"
	href="<%=root %>/menu/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="<%=root %>/menu/css/menu.css">
<script type="text/javascript" src="<%=root %>/menu/js/jquery.js"></script>
<script type="text/javascript" src="<%=root %>/menu/js/function.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%-- <a href="<%=root%>/index.jsp">메인</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/index.jsp?main=member/memberForm.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/index.jsp?main=member/guestList.jsp">방명록</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/">Q & A</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/">회원게시판</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=root%>/">Shop</a>&nbsp;&nbsp;&nbsp;&nbsp; --%>


	<div id="wrap">
		<header>
			<div class="inner relative">
				<a class="logo" href="#"></a> <a id="menu-toggle"
					class="button dark" href="#"><i class="icon-reorder"></i></a>
				<nav id="navigation">
					<ul id="main-menu">
						<li class="current-menu-item"><a href="<%=root%>/index.jsp">Home</a></li>
						
						<li class="parent">
							<a href="#">about 회원</a>
								<ul class="sub-menu">
								<% 
								String loginok=(String)session.getAttribute("loginok");
								if(loginok!="yes")
								{%>
									<li><a href="<%=root%>/index.jsp?main=login/loginMain.jsp"><i class="icon-wrench"></i> 로그인</a></li>
								 <%}else{%>
								 	<li><a href="<%=root%>/index.jsp?main=login/loginMain.jsp"><i class="icon-wrench"></i> 로그아웃</a></li>
								 <%}%>
									<li><a href="<%=root%>/index.jsp?main=member/memberForm.jsp"><i class="icon-credit-card"></i>회원가입</a></li>
									<%
									if(myid.equals("admin")&&session.getAttribute("loginok")!=null)
									{%>
									<li><a href="<%=root%>/index.jsp?main=member/memberList.jsp"><i class="icon-gift"></i> 회원목록</a></li>
									<%}%>
									<li><a href="<%=root%>/index.jsp?main=member/myinfo.jsp"><i class="icon-wrench"></i> 나의정보</a></li>
									
							    </ul>
						</li>
							
						<li><a href="<%=root%>/index.jsp?main=guest/guestList.jsp">방명록</a></li>
						<li class="parent">
							<a href="#">고객의 소리</a>
							<ul class="sub-menu">
								<li><a href="<%=root%>/index.jsp?main=board/boardList.jsp">회원게시판</a></li>
								<li><a href="#">스마트게시판</a></li>
							</ul></li>
						<li><a href="#">찾아오시는 길</a></li>
					</ul>
				</nav>
				<div class="clear"></div>
			</div>
		</header>
	</div>
</body>
</html>