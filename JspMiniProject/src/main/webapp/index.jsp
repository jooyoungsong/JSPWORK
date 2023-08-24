<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gasoek+One&family=Hi+Melody&family=Nanum+Pen+Script&family=Poor+Story&family=Single+Day&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<title>Insert title here</title>
<style type="text/css">
	div.layout{
		border: 0px solid gray;
		position: absolute;
	}

	div.title{
		width: 100%;
		height: 80px;
		line-height: 80px;
		font-size: 30px;
		font-family:'Single Day';
		text-align: center;	
	}
	
	div.menu{
		width: 100%;
		height: 80px;
		line-height: 80px;
		font-family:'Single Day';
		text-align: center;
		top:230px;
		
	}
	
	div.info{
		width: 250px;
		height: 500px;
		line-height: 10px;
		font-family: 'Single Day';
		font-size: 15pt;
		left: 30px;
		top: 400px;
		padding: 20px 10px;
		border: 2px groove gray;
		border-radius: 30px;
	}
	
	div.main{
	
		width: 1500px;
		height: 800px;
		font-size: 13pt;
		left: 400px;
		top: 400px;
	}
</style>
</head>
<%
	//절대경로잡기
	String root=request.getContextPath();
	String mainPage="layout/main.jsp"; //기본페이지

	//url을 통해서 main값 얻고 메인웹페이지애서 출력한다
	if(request.getParameter("main")!=null)
	{
		mainPage=request.getParameter("main");
	}
%>
<body>
<div class="layout title">
	<jsp:include page="layout/title.jsp"/>
</div>
<div class="layout menu">
	<jsp:include page="layout/menu.jsp"/>
</div>
<div class="layout info">
	<jsp:include page="layout/info.jsp"/>
</div>
<div class="layout main">
	<jsp:include page="<%=mainPage %>"/>
</div>
</body>
</html>