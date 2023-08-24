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
<style type="text/css">
	#selphoto{
		
		position: absolute;
		left: 360px;
		top: 20px;
		width:200px;
		border-radius:20px;
	}
</style>

<script type="text/javascript">
	$(function(){
		
		//select된 선택값 얻기
		var srcImg=$("#photo").val();
		//selphoto에 넣기
		$("#selphoto").attr("src",srcImg);
		
		
		$("#photo").change(function(){
			
			var s=$(this).val();
			$("#selphoto").attr("src",s);
		});
	})
</script>
</head>
<body>
<div>
	<form action="addAction.jsp" method="post">
	<table class="table table-bordered" style="width:300px;">
		<tr>
			<th>상품명</th>
			<td>
				<input type="text" name="sangpum" class="form-control"
				required="required" style="width:120px;" placeholder="이름">
			</td>
		</tr>	
		<tr>
			<th>상품사진</th>
			<td>
				<select name="photo" id="photo" class="form-control">
					<option value="../image/2.jpg">롱가디건</option>
					<option value="../image/20.jpg">시계</option>
					<option value="../image/21.jpg">실버반지</option>
					<option value="../image/22.jpg">진주반지</option>
					<option value="../image/24.jpg">바지</option>
					<option value="../image/28.jpg">원피스</option>
					<option value="../image/30.jpg">헤어밴드</option>
				</select>
			</td>
		</tr>	
		<tr>
			<th>가격</th>
			<td>
				<input type="text" name="price" class="form-control"
				required="required" style="width:120px;" placeholder="가격">
			</td>
		</tr>	
		<tr>
			<th>입고일</th>
			<td>
				<input type="date" name="ipgoday" class="form-control"
				required="required" style="width:120px;" placeholder="입고일">
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
</div>
	
		<img alt="" src="" id="selphoto">
</body>
</html>