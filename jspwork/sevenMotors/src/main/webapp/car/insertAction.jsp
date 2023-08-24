<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="model.car.carDto"%>
<%@page import="model.car.carDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&family=Noto+Sans+KR:wght@500&family=Orbit&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>

<%


String realPath = getServletContext().getRealPath("/upload");
int uploadSize = 1024 * 1024 * 3;

MultipartRequest multi = null;

multi = new MultipartRequest(request, realPath, uploadSize, "utf-8", new DefaultFileRenamePolicy());

carDao dao = new carDao();

carDto dto = new carDto();

dto.setName(multi.getParameter("name"));
dto.setCname(multi.getParameter("cname"));
dto.setCid(multi.getParameter("cid"));

String[] arr = multi.getParameterValues("device");
String s ="";
for(int i=0; i<arr.length;i++){
	s += arr[i] + " ";
}
dto.setDevice(s);

//dto.setImage(multi.getFilesystemName("uploadImage"));
String photo = multi.getFilesystemName("uploadImage");

if (photo == null)
	dto.setCimage("../image/noimage.png"); //사진이 없는 경우
else
	dto.setCimage("../upload/" + photo); //사진선택한 경로

//db에 insert
dao.insertCar(dto);

//성공 후 이동
response.sendRedirect("carList.jsp");
%>
</body>
</html>