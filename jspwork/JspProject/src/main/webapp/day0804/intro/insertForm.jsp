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
<script>
	function mousecusor(text)
	{
		if(text.value.length==4)
			{
				$("#hp3").focus();
			}
	}
</script>
</head>
<body>
	<form action="insertAction.jsp" method="post">
		<table class="table table-bordered" style="width:600px">
		<tr>
			<th>Name</th>
			<td>
				<input type="text" id="name" name="intro_name"
				required="required" style="width:120px;" placeholder="이름">
			</td>
		</tr>
		<tr>
			<th>Blood Type</th>
			<td>
				<select name="intro_blood"style="width:60px;" >
					<option value="A형">A형</option>
					<option value="B형">B형</option>
					<option value="O형">O형</option>
					<option value="AB형">AB형</option>
					
				</select>
			</td>
		</tr>
		<tr>
			<th>Phone number</th>
			<td>
				<select name="hp1" id="hp" style="width:60px;" >
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
					<option value="070">070</option>
				</select>
				-
				<input type="text" name="hp2" id="hp2"
				required="required" size="3" maxlength="4" style="width:70px;" onkeydown="mousecusor(this);">
				-
				<input type="text" name="hp3" id="hp3"
				required="required" size="3" maxlength="4" style="width:70px;" >
			</td>
		</tr>
		<tr>
			<th>City</th>
			<td>
				<input type="radio" name="city" value="한국">한국
				<input type="radio" name="city" value="미국">미국
				<input type="radio" name="city" value="영국">영국
				<input type="radio" name="city" value="중국">중국
				<input type="radio" name="city" value="일본">일본		
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info">전송</button>
				<button type="button" class="btn btn-success"
				onclick="location.href='list.jsp'">목록</button>
			</td>
		</tr>
		</table>
	</form>
	
</body>
</html>