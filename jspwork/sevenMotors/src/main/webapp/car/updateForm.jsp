<%@page import="model.car.carDto"%>
<%@page import="model.car.carDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap&family=Permanent+Marker&display=swap&family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style>
		
.gaipbtn:hover{
 	cursor:pointer;
}

 .gaipbtn{
 	margin-left: 1450px;
 }

.togglebtn{
	cursor:pointer;
	margin-left: 1730px;
	margin-bottom: -22px;
	
}
#chk1{
	position: absolute; left:-1000%;
}

label {
	display: block; position:relative; width:50px; height:20px; background:#d3d3d3;
	border-radius:25px; transition: background: 0.4s;
}

label:after
{content: ""; position:absolute; left:2.5px; top:28%; width:14px; height:13px;
border-radius:100%; background:#fff; transform:translateY(-25%); box-shadow:1px 3px 4px rgba(0,0,0,1);
background: 0.4s;}

#chk1:checked + label{ background:#f1bc31;}
#chk1:checked + label:after{ left:inherit; right:2.5px;}


/*  label span{display:none;}*/

h1{
	cursor: pointer;
}
</style>
</head>
<%
	String num=request.getParameter("num");
	carDao dao=new carDao();
	carDto dto=dao.getData(num);
	
	String[] devices=dto.getDevice().split(" ");
	
%>
<body>

<div class="p-5 bg-white text-black text-center" style="height:250px; padding:10px;">
 
  
  	<div style="text-align: right; margin-right: 107px; color:gray;">
  	
  				<input type="checkbox" id="chk1">
  					<label for="chk1" class="togglebtn">
  						
  					</label>
  				admin
  		
 
    </div>
  <br>
  
  <div style="margin:auto;">
  	<div style="margin-left:1px;">
  		<h1 onclick="location.href='indexPage.jsp'" style="font-family:Permanent Marker; font-size:4em;"><img src='../carimage/machine.png' width='80px'; height='80px';>&nbsp;SevenMotors</h1>
  	</div>
  <h6>Welcome to SevenMotors. <br>Leave it to us and we'll do our best.</h6>  
  </div>

</div>

	<header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 text-white">회사소개</a></li>
          <li><a href="../car/insertForm.jsp" class="nav-link px-2 text-white">견적등록</a></li>
          <li><a href="../car/carList.jsp" class="nav-link px-2 text-white">견적조회</a></li>
          <li><a href="../car/map.jsp" class="nav-link px-2 text-white">센터위치</a></li>
          <li><a href="#" class="nav-link px-2 text-white">고객센터</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
          <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
        </form>

        <div class="text-end">
          <button type="button" class="btn btn-outline-light me-2">Login</button>
          <button type="button" class="btn btn-warning">Sign-up</button>
        </div>
      </div>
    </div>
  </header>
  
  
	<div style="margin: 50px; 100px;">
		<form action="updateAction.jsp" method="post" enctype="multipart/form-data"
			class="form-inline" id="mfrm">
			<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered" style="width: 500px;">
				<caption align="top">
					<b>견적수정</b>
				</caption>
				<tr>
					<td style="background-color: #66cdaa" width="120">차주이름</td>
					<td><b><%=dto.getName() %></b></td>
				</tr>
				<tr>
					<td style="background-color: #66cdaa" width="120">차종</td>
					<td><input type="text" class="form-control"
						style="width: 120px;" name="cname" required="required" value="<%=dto.getCname()%>"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">차량번호</td>
					<td><input type="text" class="form-control"
						style="width: 120px;" name="cid" required="required" value="<%=dto.getCid()%>"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">차량이미지</td>
					<td><input type="file" class="form-control"
						style="width: 250px;" name="uploadImage" value="<%=dto.getCimage()%>"></td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">부품</td>
					<td>
						<input type="checkbox" name="device" value="엔진오일">엔진오일
						<input type="checkbox" name="device" value="타이어">타이어
						<input type="checkbox" name="device" value="엔진">엔진
						<input type="checkbox" name="device" value="백미러">백미러
					</td>
				</tr>
				
				

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-success">견적수정</button>
						<button type="button" class="btn btn-warning"
							onclick="location.href='carList.jsp'">회원목록</button>
					</td>
				</tr>
				
			</table>
		</form>
	</div>
<div class="p-3 bg-dark text-white" style="font-size:0.8em; text-align:center;">
  <p>고객문의 &nbsp 이용약관 &nbsp 개인정보처리방침</p>
  <hr>
  <b>SevenMotors<b><br><br>
  <p>사업자등록번호 110-11-1023</p>
  <p>대표번호 02-3482-4632</p>
  <p>이메일 문의하기</p>
  <p>고객만족센터 1588-5252</p> 
  <br>
  
  <h5 style="color:gray; font-size:0.5px;">Copyrightⓒ2023 SevenMotors.all rights reserved.</h5>
</div>
	
</body>
</html>