<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Gasoek+One&family=Hi+Melody&family=Nanum+Pen+Script&family=Poor+Story&family=Single+Day&display=swap" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function delfunc(num)
	{
		var yes=confirm("강퇴처리 하시겠습니까?")
		
		if(yes)
			{
				location.href='member/memberdelete.jsp?num='+num;
			}
	}
</script>
</head>
<%
	MemberDao dao=new MemberDao();
	List<MemberDto> list=dao.getAllMembers();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	int no=1;
%>
<body>
<table class="table table-bordered" style="width: 1000px;">
	<caption align="top"><b>전체 회원 목록</b></caption>
	<tr class="table-success" align="center">
		<th style="width:80px;">번호</th>
		<th style="width:150px;">회원명</th>
		<th style="width:150px;">아이디</th>
		<th style="width:200px;">핸드폰</th>
		<th style="width:300px;">주소</th>
		<th style="width:300px;">이메일</th>
		<th style="width:200px;">가입일</th>
		<th style="width:150px;">삭제</th>
	</tr>
	
	<%
	for(MemberDto dto:list)
	{%>
		<tr align="center">
			<td><%=no++ %></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getId() %></td>
			<td><%=dto.getHp() %></td>
			<td><%=dto.getAddr() %></td>
			<td><%=dto.getEmail() %></td>
			<td><%=sdf.format(dto.getGaipday()) %></td>
			<td>
				<button type="button" class="btn btn-outline-danger btn-sm"
				onclick="location.href='member/memberdelete.jsp?num=<%=dto.getNum()%>'">강퇴</button>
			</td>
		</tr>	
	<%}
	%>
</table>
</body>
</html>