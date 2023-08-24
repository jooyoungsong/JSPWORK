<%@page import="data.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.MemberDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css2?family=Gasoek+One&family=Hi+Melody&family=Nanum+Pen+Script&family=Poor+Story&family=Single+Day&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<%
	MemberDao dao=new MemberDao();
	List<MemberDto> list=dao.getAllMembers();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	
	String myid=(String)session.getAttribute("myid");
%>
<body>
 <table class="table" style="width:600px;">
	<%
	int cnt=1;
	
	for(MemberDto dto:list)
	{
		if(myid.equals(dto.getId()))
		{
		%>
		<tr>
			<td style="width:200px;" align="center" rowspan="5" valign="middle">
			<img src="image/people<%=cnt %>.PNG" style="width:150px; border-radius:30px;">
			</td>
			<td>이름:<%=dto.getName() %></td>
			<td style="width:200px;" align="center" rowspan="5" valign="middle">
				<input type="button" class="btn btn-outline-info btn-sm" value="수정"
				onclick="location.href='index.jsp?main=member/updateForm.jsp?num=<%=dto.getNum() %>'">
				<input type="button" class="btn btn-outline-danger btn-sm" value="삭제"
				onclick="location.href=''">
			</td>
		</tr>
		<tr>
			<td>아이디:<%=dto.getId() %></td>
		</tr>
		<tr>
			<td>핸드폰:<%=dto.getHp() %></td>
			</td>
		</tr>
		<tr>
			<td>주소:<%=dto.getAddr() %></td>
		</tr>
		<tr>
			<td>이메일:<%=dto.getEmail() %></td>
		</tr>
	<% cnt++;}
	}
	%>

 </table>
</body>
</html>