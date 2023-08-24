<%@page import="java.util.Enumeration"%>
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
	ServletContext context=getServletContext();
	//프로젝트의 upload의 실제 경로 구하기
	String realFolder=context.getRealPath("/upload");
	
	System.out.println(realFolder);
	
	//업로드시 허용되는 크기 지정
	int uploadsize=1024*1024*3; //3mb
	
	MultipartRequest multi=null;
	
	try{
	multi=new MultipartRequest(request,realFolder,uploadsize,"utf-8",new DefaultFileRenamePolicy());
	
	//입력된 값을 읽어오기
		String nick=multi.getParameter("nick");
	%>
	
	<h2>작성자명: <%=nick %></h2>
	
	<% 
	
		//파일타입이 여러개인 경우
		Enumeration forNames=multi.getFileNames(); //file타입만 얻어옴
		
		while(forNames.hasMoreElements())
		{
			String fileName=(String)forNames.nextElement();
			System.out.println("file type의 name: "+fileName);
			
			//실제업로드된 파일명 열기
			String uploadName=multi.getFilesystemName(fileName);
			
			//파일 선택 하지 않으면 null
			if(uploadName!=null){%>
				
				<figure>
				<img src="../upload/<%=uploadName%>" style="max-width:200px;" border="1">
				<figurecaption><b><%=uploadName %></b></figurecaption>
				</figure>
			<%}
		}
		%>
	<%}catch(Exception e){
		
		
	}
	
	
%>
</body>
</html>