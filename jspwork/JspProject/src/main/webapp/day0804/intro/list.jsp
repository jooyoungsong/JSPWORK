<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.intro.IntroDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.intro.IntroDao"%>
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
<%
	IntroDao dao=new IntroDao();
	ArrayList<IntroDto> list=dao.selectIntro();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
</head>
<body>
	<a href="insertForm.jsp">회원정보</a>
	<br>
	<table class="table table-bordered" style="width:800px;">
	<tr align="center" class="table-warning">
		<th width="50">순서</th>
		<th width="120">이름</th>
		<th width="60">혈액형</th>
		<th width="200">연락처</th>
		<th width="60">도시</th>
		<th width="120">가입일</th>
		<th width="120">수정|삭제</th>
	</tr>
	
	<%
		for(int i=0;i<list.size();i++)
		{
			IntroDto dto=list.get(i);
		%>
			<tr>
				<td align="center"><%=(i+1) %></td>
				<td align="center" onclick="location.href='Introdetail.jsp?num=<%=dto.getIntro_num()%>'"><%=dto.getIntro_name() %></td>
				<td align="center"><%=dto.getIntro_blood() %></td>
				<td align="center"><%=dto.getIntro_hp() %></td>
				<td align="center"><%=dto.getIntro_city() %></td>
				<td align="center"><%=sdf.format(dto.getGaipday()) %></td>
				<td>
					<button type="button" class="btn btn-outline-info btn-sm"
					onclick="location.href='updateForm.jsp?num=<%=dto.getIntro_num()%>'">수정</button>
					<button type="button" class="btn btn-outline-danger btn-sm"
					onclick="location.href='deleteIntro.jsp?num=<%=dto.getIntro_num()%>'">삭제</button>
				</td>
			</tr>
		<%}
	%>
	</table>

</body>
</html>