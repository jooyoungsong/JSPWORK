<%@page import="db.simpleguest.SimpleGuestDto"%>
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
	String num=request.getParameter("num");
	SimpleGuestDao dao=new SimpleGuestDao();
	SimpleGuestDto dto=dao.getData(num);
	
%>
<body>
<div style="margin:50px; 100px;">
	<form action="updateAction.jsp" method="post">
	<input type="hidden" name="num" value="<%=num%>">
		<table class="table table-bordered" style="width:1000px;">
			<caption align="top"><b>방명록 수정</b></caption>
				<tr>
					<th width="80" style="background-color: #fffacd">닉네임</th>
					<td>
						<input type="text" name="nick" required="required" style="width:120px;" value="<%=dto.getNick()%>">
					</td>
					<th width="80" style="background-color: #fffacd">비밀번호</th>
					<td>
						<input type="password" name="pass" required="required" style="width:120px;" value="<%=dto.getPass()%>">
					</td>
				</tr>
				
				<tr>
					<th width="80" style="background-color: #fffacd">이미지선택</th>
					<td colspan="3">				
						<%
							for(int i=1;i<=10;i++)
							{%>
								<% if(i==10)	
								{%>
									<image src="../imageMini/<%=i %>.png" width="80">
								<%}else{%>
									<image src="../imageMini/0<%=i %>.png" width="80">
								<%}%>
							<%}%>
						
						<br>
						<%
							for(int i=1;i<=10;i++)
							{%>
								<input type="radio" name="image" value="<%=i%>" style="width: 80px" <%=Integer.parseInt(dto.getImage())==i?"checked":"" %>>
							<%}
						%>					
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
						<textarea style="width:1000px; height:150px;" name="story"><%=dto.getStory() %></textarea>
					</td>
				</tr>
				
				<tr>
					<td colspan="4" align="center">
						<input type="submit" value="수정" class="btn btn-outline-warning">
						<input type="button" value="목록" class="btn btn-outline-success"
						onclick="location.href='guestList.jsp'">
					</td>
				</tr>
		</table>
	</form>
</div>
</body>
</html>