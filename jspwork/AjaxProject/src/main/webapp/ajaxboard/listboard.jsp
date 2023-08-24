<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="db.ajaxboard.ajaxboardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.ajaxboard.ajaxboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ajaxboardDao db=new ajaxboardDao();
	ArrayList<ajaxboardDto> list= db.getAllDatas();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	JSONArray arr=new JSONArray();
	for(ajaxboardDto dto:list)
	{
		JSONObject ob=new JSONObject();
		ob.put("num", dto.getNum());
		ob.put("writer", dto.getWriter());
		ob.put("subject", dto.getSubject());
		ob.put("story", dto.getStory());
		ob.put("avata", dto.getAvata());
		ob.put("writeday",sdf.format(dto.getWriteday()));
		
		arr.add(ob);
	}
	
	
%>
<%=arr.toString()%>