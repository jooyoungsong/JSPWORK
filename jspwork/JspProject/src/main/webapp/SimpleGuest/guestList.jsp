<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
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
<%
	SimpleGuestDao dao=new SimpleGuestDao();
	ArrayList<SimpleGuestDto> list=dao.selectSimpleGuest();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<body>
<div>
	<button type="button" value="목록" class="btn btn-outline-success"
		onclick="location.href='insertForm.jsp'">글쓰기</button>
</div>

	<a href="insertForm.jsp">방명록 추가</a>
	<br>
<table class="table" style="width:600px;">
	<% for(int i=0;i<list.size();i++)
		{
			SimpleGuestDto dto=list.get(i);	
			int no=list.size()-i;
		%>
		
		 <tr>
			<td>No.<%=no %></td>
			<td><%=dto.getNick() %></td>
			<td align="right">
				<b style="color:gray;"><%=sdf.format(dto.getWriteday()) %></b>
			</td>
		 </tr>
		<tr>
			<td>
				<%if(Integer.parseInt(dto.getImage())==10)
				{%>
					<img src="../imageMini/<%=dto.getImage() %>.png" width="80" align="left">
				<%} else{%>
					<img src="../imageMini/0<%=dto.getImage() %>.png" width="80" align="left"></td>
				<%}%>
			<td> 
					<%=dto.getStory() %>
			</td>	
			<td align="right">
				<input type="button" class="btn btn-success btn-sm" value="수정"
				onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">
				<input type="button" class="btn btn-danger btn-sm" value="삭제"
				onclick="location.href='deleteForm.jsp?num=<%=dto.getNum()%>'">
			</td>
		</tr>
		
		<%}%>
		</table>

</body>
</html>