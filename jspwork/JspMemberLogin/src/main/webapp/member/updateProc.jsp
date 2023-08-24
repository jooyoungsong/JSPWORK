<%@page import="member.model.memberDto"%>
<%@page import="member.model.memberDao"%>
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

	//addProc에서 복붙 후 조금만 수정
	
	String realPath=getServletContext().getRealPath("/upload");
	int uploadSize=1024*1024*3;
	
	MultipartRequest multi=null;
	
	multi=new MultipartRequest(request,realPath,uploadSize,"utf-8",
			new DefaultFileRenamePolicy());
	
	//dao선언
	memberDao dao=new memberDao();
	
	//dto선언
	memberDto dto=new memberDto();
	
	dto.setNum(multi.getParameter("num")); //addProc에서 추가된 내용
	dto.setId(multi.getParameter("id"));
	dto.setPass(multi.getParameter("pass"));
	dto.setName(multi.getParameter("name"));
	dto.setHp(multi.getParameter("hp"));
	
	//dto.setImage(multi.getFilesystemName("uploadImage"));
	String photo=multi.getFilesystemName("uploadImage");
	
	if(photo==null)
	{
		String p=dao.getDta(dto.getNum()).getImage();
		dto.setImage(p);
	}
	else
		dto.setImage("../upload/"+photo); //사진선택한 경로
	
	
	//db에 update
	dao.updateMember(dto);
	
	//성공 후 이동
	response.sendRedirect("../member/memberList.jsp");
%>
</body>
</html>