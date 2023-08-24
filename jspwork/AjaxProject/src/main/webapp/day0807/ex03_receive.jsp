<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//front에서 보낸 데이터 읽어오기

	String photono=request.getParameter("photono");
	String photoname=request.getParameter("photoname");
	String like1=request.getParameter("like1");
	String like2=request.getParameter("like2");
	String like3=request.getParameter("like3");

//총점==>String을 int로 변환해줘야 함 
//평균
	
	int p1=Integer.parseInt(like1);
	int p2=Integer.parseInt(like2);
	int p3=Integer.parseInt(like3);
	
	int total=p1+p2+p3;
	double avg=total/3.0;
	
	//(선생님 풀이)
	//int tot=Integer.parseInt(like1)+Integer.parseInt(like2)+Integer.parseInt(like3);
	//double avg=tot/3.0;
	
	
//front 형태로 만들어서 다시 front로 보내기(Json)
//ob.put("","../Food/"+1+".jpg")

	JSONObject ob=new JSONObject();
	ob.put("photo","../Food/"+photono+".jpg");
	ob.put("food", photoname);
	ob.put("total", total);
	ob.put("avg", String.format("%.2f",avg));
%>

	<%--실제로 화면에 뜨는지 확인하기 --%>
	<%=ob.toString()%>