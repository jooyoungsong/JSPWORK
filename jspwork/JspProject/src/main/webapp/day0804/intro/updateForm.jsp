<%@page import="java.util.StringTokenizer"%>
<%@page import="model.intro.IntroDao"%>
<%@page import="model.intro.IntroDto"%>
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
    System.out.println(num);
	IntroDao dao=new IntroDao();
	IntroDto dto=dao.getData(num);
	StringTokenizer tk=new StringTokenizer(dto.getIntro_hp(),"-");
	String hp1=tk.nextToken();
	String hp2=tk.nextToken();
	String hp3=tk.nextToken();	
%>
<body>
<form action="updateAction.jsp" method="post">
<input type="hidden" name="num" value="<%=num %>">
		<table class="table table-bordered" style="width:600px">
		<tr>
			<th>Name</th>
			<td>
				<input type="text" id="name" name="intro_name" value="<%=dto.getIntro_name() %>"
				required="required" style="width:120px;" placeholder="이름">
			</td>
		</tr>
		<tr>
			<th>Blood Type</th>
			<td>
				<select name="intro_blood"style="width:60px;">
					<option value="A" <%=dto.getIntro_blood().equals("A형")?"selected":"" %>>A형</option>
					<option value="B" <%=dto.getIntro_blood().equals("B형")?"selected":"" %>>B형</option>
					<option value="O" <%=dto.getIntro_blood().equals("O형")?"selected":"" %>>O형</option>
					<option value="AB" <%=dto.getIntro_blood().equals("AB형")?"selected":"" %>>AB형</option>
					
				</select>
			</td>
		</tr>
		<tr>
			<th>Phone number</th>
			<td>
				<select name="hp1" id="hp" style="width:60px;" >
					<option value="010" <%=hp1.equals("010")?"selected":"" %>>010</option>
					<option value="011" <%=hp1.equals("011")?"selected":"" %>>011</option>
					<option value="016" <%=hp1.equals("016")?"selected":"" %>>016</option>
					<option value="017" <%=hp1.equals("017")?"selected":"" %>>017</option>
					<option value="019" <%=hp1.equals("019")?"selected":"" %>>019</option>
					<option value="070" <%=hp1.equals("070")?"selected":"" %>>070</option>
				</select>
				-
				<input type="text" name="hp2" id="hp2" value="<%=hp2 %>"
				required="required" size="3" maxlength="4" style="width:70px;" onkeydown="mousecusor(this);">
				-
				<input type="text" name="hp3" id="hp3" value="<%=hp3 %>"
				required="required" size="3" maxlength="4" style="width:70px;" >
			</td>
		</tr>
		<tr>
			<th>City</th>
			<td>
				<input type="radio" name="city" value="한국" <%=dto.getIntro_city().equals("한국")?"checked":"" %>>한국
				<input type="radio" name="city" value="미국" <%=dto.getIntro_city().equals("미국")?"checked":"" %>>미국
				<input type="radio" name="city" value="영국" <%=dto.getIntro_city().equals("영국")?"checked":"" %>>영국
				<input type="radio" name="city" value="중국" <%=dto.getIntro_city().equals("중국")?"checked":"" %>>중국
				<input type="radio" name="city" value="일본" <%=dto.getIntro_city().equals("일본")?"checked":"" %>>일본		
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" value="수정" class="btn btn-info">수정</button>
				<button type="button" value="목록" class="btn btn-success"
				onclick="location.href='list.jsp'">목록</button>
			</td>
		</tr>
		</table>
	</form>
</body>
</html>