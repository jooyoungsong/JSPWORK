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
<style>

</style>
</head>
<body>
	<body>
  
<div id="pagetop" class="w3-bar notranslate w3-white" style="position:fixed;padding-left:1px;padding-right:16px">
  <a href="https://www.w3schools.com " class="w3-bar-item w3-button w3-hover-none w3-left ga-top ga-top-w3home" title="Home" style="width:75px;">
    <i class="fa fa-logo ws-hover-text-green" style="position:relative;z-index:1;color:#04AA6D;font-size:36px!important;"></i>
  </a>

  <a class="w3-bar-item w3-button w3-hide-small barex bar-item-hover w3-padding-16 ga-top ga-top-tut-and-ref" href="javascript:void(0)" onclick="w3_open_nav('tutorials')" id="navbtn_tutorials" title="Tutorials and References">Tutorials <i class='fa fa-caret-down' style="font-size:15px;"></i><i class='fa fa-caret-up' style="display:none;font-size:15px;"></i></a>
  <a class="w3-bar-item w3-button w3-hide-small barex bar-item-hover w3-padding-16 ga-top ga-top-exc-and-quz" href="javascript:void(0)" onclick="w3_open_nav('exercises')" id="navbtn_exercises" title="Exercises and Quizzes">Exercises <i class='fa fa-caret-down' style="font-size:15px;"></i><i class='fa fa-caret-up' style="display:none;font-size:15px;"></i></a>
  <a class="w3-bar-item w3-button w3-hide-small barex bar-item-hover w3-padding-16 ga-top ga-top-cert-and-course ws-hide-750" href="javascript:void(0)" onclick="w3_open_nav('certified')" id="navbtn_certified" title="Get Certified">Get Certified <i class='fa fa-caret-down' style="font-size:15px;"></i><i class='fa fa-caret-up' style="display:none;font-size:15px;"></i></a>
  <a class="w3-bar-item w3-button w3-hide-small barex bar-item-hover w3-padding-16 ga-top ga-top-services" href="javascript:void(0)" onclick="w3_open_nav('services')" id="navbtn_services" title="Our Services">Services <i class='fa fa-caret-down' style="font-size:15px;"></i><i class='fa fa-caret-up' style="display:none;font-size:15px;"></i></a>
  <a class="w3-bar-item w3-button bar-item-hover w3-padding-16 ga-top ga-top-menu" href="javascript:void(0)" onclick="w3_open()" id="navbtn_menu" title="Menu" style="width:93px">Menu <i class='fa fa-caret-down' style="font-size:15px;"></i><i class='fa fa-caret-up' style="display:none;font-size:15px;"></i></a>

  <div id="loginactioncontainer" class="w3-right" style="padding-top:8px;padding-bottom:8px;margin-left:1px;width:55px">
    <div id="mypagediv"></div>
    <a id="w3loginbtn" title="Login to your account" class="w3-bar-item w3-btn bar-item-hover w3-right ws-light-green ga-top ga-top-login" href="https://profile.w3schools.com/log-in?redirect_url=https%3A%2F%2Fmy-learning.w3schools.com" target="_self">Log in</a>
  </div>

  <div class="w3-right w3-white" style="padding-top:8px;padding-bottom:8px;">
    <a id="signupbtn_topnav" class="w3-bar-item w3-button w3-right ws-green ws-hover-green ga-top ga-top-signup" style="width: 93px;border-radius: 25px; margin-right: 20px;position:relative;z-index:5;" href="/signup/index.php" title="Sign Up to Improve Your Learning Experience">Sign Up</a>
    <a class="w3-bar-item w3-button w3-right w3-white ws-hide-860 ga-top ga-top-spaces" style="width: auto!important;border-radius: 25px;margin-right:10px; text-align:center" href="/spaces/index.php" title="Get Your Own Website With W3Schools Spaces"><svg style="position:relative;right:2px;top:2px;margin-right:3px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#04AA6D" class="bi bi-gift" viewBox="0 0 16 16">
        <path d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a1.5 1.5 0 0 1-1.5 1.5h-11A1.5 1.5 0 0 1 1 14.5V7a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zM1 4v2h6V4H1zm8 0v2h6V4H9zm5 3H9v8h4.5a.5.5 0 0 0 .5-.5V7zm-7 8V7H2v7.5a.5.5 0 0 0 .5.5H7z" />
      </svg> Spaces</a>

    <a class="w3-bar-item w3-button w3-right ws-hide-980 w3-white ga-top ga-top-bootcamps" style="border-radius: 25px;" href="/bootcamp/index.php" title="W3Schools Bootcamps"><svg style="position:relative;right:2px;top:2px;margin-right:3px;" width="12" height="16" viewBox="0 0 12 16" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M6.65723 6.24707C6.76704 5.91764 7.233 5.91765 7.34281 6.24707L7.98828 8.1835C8.276 9.04666 8.95332 9.72399 9.81648 10.0117L11.7529 10.6572C12.0824 10.767 12.0824 11.233 11.7529 11.3428L9.81649 11.9883C8.95332 12.276 8.27599 12.9533 7.98828 13.8165L7.34281 15.7529C7.233 16.0823 6.76704 16.0823 6.65723 15.7529L6.01173 13.8165C5.72401 12.9533 5.04669 12.276 4.18353 11.9883L2.24707 11.3428C1.91764 11.233 1.91764 10.767 2.24707 10.6572L4.18353 10.0117C5.04669 9.72399 5.72401 9.04667 6.01173 8.18352L6.65723 6.24707Z" fill="#9763f6"></path>
        <path d="M2.79434 1.14824C2.86023 0.950586 3.1398 0.950587 3.20569 1.14824L3.59297 2.3101C3.7656 2.828 4.172 3.2344 4.6899 3.40703L5.85177 3.79432C6.04942 3.86021 6.04942 4.13978 5.85177 4.20567L4.6899 4.59296C4.172 4.76559 3.7656 5.17199 3.59297 5.68989L3.20569 6.85176C3.13981 7.04941 2.86023 7.04942 2.79434 6.85176L2.40704 5.68988C2.23441 5.17198 1.82801 4.76559 1.31012 4.59296L0.148241 4.20567C-0.0494137 4.13978 -0.0494138 3.86021 0.148241 3.79432L1.31012 3.40703C1.82802 3.2344 2.23441 2.82801 2.40704 2.31011L2.79434 1.14824Z" fill="#9763f6"></path>
        <path d="M9.8629 0.0988265C9.90682 -0.032943 10.0932 -0.0329419 10.1371 0.098828L10.3953 0.873401C10.5104 1.21867 10.7813 1.4896 11.1266 1.60469L11.9012 1.86288C12.0329 1.9068 12.0329 2.09319 11.9012 2.13711L11.1266 2.39531C10.7813 2.51039 10.5104 2.78133 10.3953 3.12659L10.1371 3.90117C10.0932 4.03294 9.90682 4.03294 9.8629 3.90117L9.6047 3.12659C9.48961 2.78132 9.21868 2.5104 8.87342 2.39531L8.09883 2.13711C7.96706 2.09319 7.96706 1.9068 8.09883 1.86288L8.87342 1.60469C9.21868 1.4896 9.48961 1.21867 9.6047 0.873408L9.8629 0.0988265Z" fill="#9763f6"></path>
      </svg> Bootcamps</a>
  </div>
</div>
</body>
</html>