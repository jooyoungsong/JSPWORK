<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap&family=Permanent+Marker&display=swap&family=Do+Hyeon&display=swap" rel="stylesheet"> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style>
#mainMap{
margin-top: 30px;
padding-top : 45px;
text-align:center;
}

#map, #maptxt{
height: 500px;
display: inline-block;
}




ul{
list-style-type: none;
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


/*  label span{display:none;}*/

h1{
	cursor: pointer;
}
</style>

</head>
<body>

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
  
   <section class="ftco-section">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5" style="margin-top:70px;">
               <h2 class="heading-section" style="font-family:Do Hyeon">찾아 오시는 길</h2>
            </div>
         </div>
      </div>
      
      
      
      
      
  
  
  
  
  

<div id="mainMap" class="border border-5">

      <div id="map">
         <!--제목 부분 -->
         <!-- <div class="title">
            <span>seven motors로 오시는 길을 안내해 드립니다.</span>
         </div> -->



         <!-- * 카카오맵 - 지도퍼가기 -->
         <!-- 1. 지도 노드 -->
         <div id="daumRoughmapContainer1692232051256"
            class="root_daum_roughmap root_daum_roughmap_landing"></div>

         <!--
   2. 설치 스크립트
   * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
         <script charset="UTF-8" class="daum_roughmap_loader_script"
            src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

         <!-- 3. 실행 스크립트 -->
         <script charset="UTF-8">
   new daum.roughmap.Lander({
      "timestamp" : "1692232051256",
      "key" : "2fvzu",
      "mapWidth" : "640",
      "mapHeight" : "360"
   }).render();
</script>

      </div>

      <!-- 길 안내 텍스트 -->
      <div id="maptxt">
         <div class="top">
            <h4>
               <span class="mont">Gangnam SevenMotors Center</span> <br /> <b>강남세븐모터스센터</b>
            </h4>
            <p>
               서울 강남구 테헤란로 132(역삼동) 한독약품 빌딩 8층 <br /> <span class="mont">02-3482-4632~5</span>
            </p>
         </div>
         <div class="bot">
            <h5>
               <img src="../image/subway.png" width="30" alt="icon" /> 지하철 이용시
            </h5>
            <ul>
               <li>
                  <h6>
                     <span class="col01">2호선</span> 역삼역
                  </h6>
                  <p>3번출구 도보3분 거리</p>
               </li>
               <li>
                  <h6>
                     <span class="col01">2호선</span> 강남역
                  </h6>
                  <p>1번출구 도보5분 거리</p>
               </li>
            </ul>
            <h5>
               <img src="../image/bus.png" width="30" alt="icon" /> 버스 이용시
            </h5>
            <ul>
               <li class="w85">
                  <h6>역삼역 하차</h6>
                  <p>N13, N61, 146,341, 360, 740, 6000, 6020, 1100, 1700, 2000,
                     2000-1, 7007, 8001</p>
               </li>
            </ul>
         </div>
      </div>
</div>
   </section>


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