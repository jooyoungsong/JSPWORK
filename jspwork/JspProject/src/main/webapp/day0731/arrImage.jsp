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
	String [] str={"2.jpg","18.jpg","19.jpg","20.jpg","21.jpg","22.jpg","24.jpg","28.jpg","30.jpg"};
	int n=0;
%>

<table class="table table-bordered" style="width: 460px;">
	<%
	for(int i=0;i<3;i++)
	{%>
		<tr>
			<%
			  for(int j=0;j<3;j++)
			  {%>
				<td>
					<img alt="" src="../image/<%=str[n]%>" width="150" height="150">
				</td> 
			  <%
			  	n++;
			  }
			%>
		</tr>
	<%}
	%>

</table>
</body>
</html>