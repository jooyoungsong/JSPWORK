<%@page import="java.text.NumberFormat"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.mymall.MallDao"%>
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
	MallDao dao=new MallDao();
	ArrayList<MallDto> list=dao.selectMymall();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");

%>
<body>
	<a href="addForm.jsp">상품추가</a>
	<br>
	<table class="table table-bordered" style="width:800px;">
	<tr align="center" class="table-warning">
		<th width="60">번호</th>
		<th width="120">상품명</th>
		<th width="120">상품사진</th>
		<th width="100">가격</th>
		<th width="200">입고일</th>
		<th width="200">등록일</th>
		<th width="160">수정|삭제</th>
	</tr>
	<%
		if(list.size()==0)
		{%>
			<tr>
				<td colspan="6" align="center">
				<h5>등록된 상품이 없습니다</h5>
				</td>
			</tr>
		<%}else{
			
			NumberFormat nf=NumberFormat.getCurrencyInstance();
			
			for(int i=0;i<list.size();i++){
				MallDto dto=list.get(i);
				%>
				
				<tr>
					<td align="center"><%=(i+1) %></td>
					<td align="center"><%=dto.getSangpum() %></td>
					<td align="center"><img src='<%=dto.getPhoto()%>' width="100"></td>
					<td align="center"><%=dto.getPrice()%></td>
					<td align="center"><%=dto.getIpgoday() %></td>
					<td align="center"><%=sdf.format(dto.getWriteday()) %></td>
					<td>
						<button type="button" class="btn btn-outline-info btn-sm"
					 	onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
						<button type="button" class="btn btn-outline-danger btn-sm"
						onclick="location.href='malldelete.jsp?num=<%=dto.getNum()%>'">삭제</button>
					</td>
				</tr>
			<%}
	}%>
	</table>
</body>
</html>