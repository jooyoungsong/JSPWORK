<%@page import="member.model.memberDto"%>
<%@page import="member.model.memberDao"%>
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
	String num=request.getParameter("num");
	memberDao dao=new memberDao();
	memberDto dto=dao.getDta(num);
%>
	<div style="margin: 50px; 100px;">
		<form action="updateProc.jsp" method="post" enctype="multipart/form-data"
			class="form-inline" id="mfrm">
			<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered" style="width: 500px;">
				<caption align="top">
					<b>회원수정</b>
				</caption>
				<tr>
					<td style="background-color: #66cdaa" width="120">아이디</td>
					<td><b><%=dto.getId() %></b></td>
				</tr>
				<tr>
					<td style="background-color: #66cdaa" width="120">비밀번호</td>
					<td><input type="password" class="form-control"
						style="width: 120px;" name="pass" value="<%=dto.getPass()%>"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">이름</td>
					<td><input type="text" class="form-control"
						style="width: 120px;" name="name" required="required" value="<%=dto.getName()%>"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">사진</td>
					<td><input type="file" class="form-control"
						style="width: 250px;" name="uploadImage" value=<%=dto.getImage() %>></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">핸드폰</td>
					<td><input type="text" class="form-control"
						style="width: 200px;" name="hp" required="required" value="<%=dto.getHp()%>"></td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-success" id="btnGaip">회원가입</button>
						<button type="submit" class="btn btn-warning"
							onclick="location.href='memberList.jsp'">회원목록</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<script type="text/javascript">
		function openId() {
			window.open("idCheck.jsp", "e",
					"left=400px; top=100px, width=400px, height=250px");
		}
	</script>

</body>
</html>