<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="db.quiz.QuizBoardDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	ServletContext context=getServletContext();
	
	String realFolder=context.getRealPath("/upload");
	
	int uploadSize=1024*1024*3; //3메가바이트
	
	MultipartRequest multi=new MultipartRequest(request,realFolder,uploadSize,"utf-8",
			new DefaultFileRenamePolicy());
	
	
	//dao선언
	QuizBoardDao dao=new QuizBoardDao();
	
	//dto선언
	QuizBoardDto dto=new QuizBoardDto();
	
	dto.setWriter(multi.getParameter("writer"));
	dto.setTitle(multi.getParameter("title"));
	dto.setContent(multi.getParameter("content"));
	
	//multi 이미지 가져올 때는?
	String photo=multi.getFilesystemName("imgname");
	
	if(photo==null)
		dto.setImgname("../image/none_image.png"); //사진이 없는 경우
	else
		dto.setImgname("../upload/"+photo); //사진선택한 경로
	
	
	//db에 insert
	dao.insertQuiz(dto);
	
	//성공 후 이동
	response.sendRedirect("quizList.jsp");
	
%>
</body>
</html>