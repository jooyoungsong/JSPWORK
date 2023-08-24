<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.car.carDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.car.carDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap&family=Permanent+Marker&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
   tr:hover{
      background-color: white;
   }
   
   		.imgbox{
			width: 100%;
			height:800px;
			overflow:hidden;
			margin:0px auto;
		}
		
		.videoth{
			width:100%;
			height:800px;
			object-fit: cover;
		}
		
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
input{
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

input:checked + label{ background:#f1bc31;}
input:checked + label:after{ left:inherit; right:2.5px;}

h1{
	cursor: pointer;
}
   
</style>
</head>

<body>
<%
   carDao dao=new carDao();
   ArrayList<carDto> list=dao.selectCar();
   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<div class="p-5 bg-white text-black text-center" style="height:250px; padding:10px;">
 
  
  	<div style="text-align: right; margin-right: 90px; color:gray;">
  	
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
  <!--<h6>Welcome to SevenMotors. <br>Leave it to us and we'll do our best.</h6>  --> 
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

<div>
   <button type="button" class="btn btn-outline-secondary" onclick="location.href='insertForm.jsp'">차량추가</button>
   <br><br>
   <table class="table table-dark" style="width: 1000px;">
   <tr width="60" align="center" class="table-active">
      <th width="120">번호</th>
      <th width="150">차주명</th>
      <th width="180">차종</th>
      <th width="200">차량번호</th>
      <th width="200">부품</th>
      <th width="250">등록일</th>
      <th width="180">수정|삭제</th>
   </tr>
   
   <%
   if(list.size()==0){%>   <%-- insert아무것도 안했을 경우 --%>
      <tr>
         <td colspan="7" align="center">
            <h5>등록된 정보가 없습니다</h5>
         </td>
      </tr>
   <%}
   else{
      
      for(int i=0;i<list.size();i++){
         carDto dto=list.get(i);
         %>
         <tr>
         
            <td align="center">
               <b>No.<%=(i+1) %></b><br>
               <img alt="" src="<%=dto.getCimage()%>" style="width: 150px;">
            </td>
            <td align="center" valign="middle"><%=dto.getName() %></td>
            <td align="center" valign="middle"><%=dto.getCname() %></td>
            <td align="center" valign="middle"><%=dto.getCid() %></td>
            <td align="center" valign="middle"><%=dto.getDevice() %></td>
            <td align="center" valign="middle"><%=sdf.format(dto.getCdate()) %></td>
            <td align="center" valign="middle">
               <button type="button" class="btn btn-outline-success btn-sm" onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
               <button type="button" class="btn btn-outline-danger btn-sm" onclick=del(<%=dto.getNum()%>)>삭제</button>
            </td>
            
         </tr>

      <%}
   }
   %>
   
   
   
   <script>
      function del(num){
         var a=confirm("정말 삭제하겠습니까?")
         
         if(a){
            location.href="deleteCar.jsp?num="+num;
         }
      }
   </script>
   </table>
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