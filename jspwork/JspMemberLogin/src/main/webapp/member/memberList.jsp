<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.model.memberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.model.memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function funcdel(num)
	{
		//alert(num);
		$("#myModal").modal();
		$("#btnmdel").click(function () {
			location.href="../member/deleteMember.jsp?num="+num;			
		});
		
		
	}

</script>
</head>
<%
memberDao dao = new memberDao();
ArrayList<memberDto> list = dao.selectMember();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<body>
	<div>
		<button type="button" value="로그인"
			class="btn btn-success btn-sm"
			onclick="location.href='../Login/loginForm.jsp'">로그인</button>
		<button type="button" class="btn btn-success btn-sm"
			onclick="location.href='logoutForm.jsp'">로그아웃</button>
	</div>
	<br>
	<table class="table table-bordered" style="width: 1200px;">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>회원명</th>
			<th>핸드폰</th>
			<th>가입일</th>
			<th>관리</th>
		</tr>
		<tr>
			총 회원수는
			<%=list.size()%>명입니다
		</tr>
		<br>
		<br>

		<%
		for (int i = 0; i < list.size(); i++) {
			memberDto dto = list.get(i);
		%>

		<tr>
			<td><%=(i + 1)%></td>
			<td><%=dto.getId()%></td>
			<td><img src="<%=dto.getImage()%>" width="150px;"
				height="150px;"> <br> <%=dto.getName()%></td>
			<td><%=dto.getHp()%></td>
			<td><%=sdf.format(dto.getGaip())%></td>


			<td>
				<%
				/* 로그인한 본인 것만 수정/삭제 보이도록...!*/
				String loginok = (String) session.getAttribute("loginok");
				String id = (String) session.getAttribute("idok");

				//로그인한 본인 것만 나오도록
				if (loginok != null && dto.getId().equals(id)) {
				%> <input type="button" class="btn btn-success btn-xs" value="수정"
				onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">

				<input type="button" class="btn btn-danger btn-xs" value="삭제"
				onclick="funcdel(<%=dto.getNum()%>)">
				
				
				<%
 				} else {
 				%>
				<h5>권한없음</h5> <%
				 }
 				%>
			</td>
		</tr>
		<%
		}
		%>

	</table>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">회원탈퇴</h4>
				</div>
				<div class="modal-body">
					<p>회원탈퇴를 원하시면 [탈퇴확인]을 눌러주세요</p>
					<button type="button" class="btn btn-danger" id="btnmdel" num="">탈퇴확인</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	</div>
	

</body>
</html>