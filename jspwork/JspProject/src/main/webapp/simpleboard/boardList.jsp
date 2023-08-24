<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.simpleboard.SimpleBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="db.simpleboard.SimpleBoardDao"%>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<title>Insert title here</title>
<style type="text/css">
	body *{
		font-family:"Gaegu";
	}
	
	a:link,a:visited{
		text-decoration:none;
		color:black;
	}
	
	a:hover{
		text-decoration: underline;
		color:gray;
	}
</style>

</head>
<%
	SimpleBoardDao dao=new SimpleBoardDao();
	//List<SimpleBoardDto> list=dao.getAllBoards();
	
int totalCount=dao.getTotalcount();
int totalPage;//총 페이지 수
int startPage; //각 블럭에서 보여질 시작 페이지
int endPage; //각 블럭에서 보여질 끝 페이지
int startNum;  //db에서 가져 올 글의 시작번호(mysql은 첫 글이 0,오라클은 1)
int perPage=3;  //제일 먼저 하는 것, 한 페이지 당 보여질 글의 개수
int perBlock=5; //한 블록당 보여질 페이지 개수
int currentPage; //현재 페이지
int no; //각 페이지당 출력할 시작번호 (넘버링 하기)



//현재 페이지 읽기(단 null일 경우 1페이지로 준다.) 계산을 해야하므로 int로 형변환 해줌
if(request.getParameter("currentPage")==null)
        	currentPage=1;
  else
           currentPage=Integer.parseInt(request.getParameter("currentPage"));
     
   //총 페이지수 구하기
   //총 글의 갯수를 /(나누기) 한페이지당 보여질 개수로 나눔 (ex. 7/5=1)
   //나머지가 1이라도 있으면 무조건 1페이지 추가한다(1+1=2페이지가 필요하다)
  	totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
  
   //각 블럭당 보여야 할 시작페이지
   //perBlock=5일 경우 현재 페이지가 1~5까지 시작:1 끝:5
   //현재 페이지가 13 시작:11 끝:15
  	startPage=(currentPage-1)/perBlock*perBlock+1;
     
  	endPage=startPage+perBlock-1;
    
     //만약에 페이지가 23페이지까지 있다면, 25페이지가 아니라 23이라는 의미
      if(endPage>totalPage)
        	endPage=totalPage;
     
     //각 페이지에서 보여질 시작번호
     //1페이지:0 2페이지:5 3페이지: 10....
     startNum=(currentPage-1)*perPage;
     
     //넘버링하기 위한 단계
     //각 페이지당 출력할 시작번호 구하기
     //ex. 총 글 개수가 23개야! perPage가 5개라고 가정_ 1페이지의 no.23부터 시작, 2페이지는 18, 3페이지는 13 ...  이런 순으로 감
     no=totalCount-(currentPage-1)*perPage;
     
     //페이지에서 보여질 글만 가져오기
     List<SimpleBoardDto> list=dao.getPagingList(startNum, perPage);

%>
<body>
	<div style="margin:30px; 30px; width:800px;">
		<button type="button" class="btn btn-outline-info"
		onclick="location.href='addForm.jsp'"><i class="bi bi-pencil-fill"></i>글쓰기</button>

	
	<br><br>
	<h6><b>총<%=list.size() %>개의 게시글이 있습니다</b></h6>
	<table class="table table-bordered">
		<caption><b>간단 게시판 목록</b></caption>
		<tr>
			<th width="60">번호</th>
			<th width="360">제목</th>
			<th width="100">작성자</th>
			<th width="120">작성일</th>
			<th width="60">조회</th>
		</tr>
		
		<%
		if(list.size()==0)
		{%>
			<tr>
				<td colspan="5" align="center">
					<h6><b>등록된 게시글이 없습니다</b></h6>
				</td>
			</tr>
		<%}else{
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd");
			
			for(int i=0;i<list.size();i++)
			{
				SimpleBoardDto dto=list.get(i);
				%>
				<tr>
					<td align="center"><%=no-- %></td>
					<td><a href="detailView.jsp?num=<%=dto.getNum()%>"><%=dto.getSubject() %></a></td>
					<td><%=dto.getWriter() %></td>
					<td><%=sdf.format(dto.getWriteday()) %></td>
					<td align="center"><%=dto.getReadcount() %></td>
				</tr>
			<%}
		}
		%>
	</table>
	
	<!--페이지번호 출력  -->
	
		<div>
			<ul class="pagination justify-content-center">
			
			<%
				//이전에 대한 것
				if(startPage>1)
				{%>
						<li class="page-item">
    					  <a class="page-link" href="boardList.jsp?currentPage=<%=currentPage-1 %>">Previous</a>
  					    </li>
				<%} else{%>
					<li class="page-item">
					  <a class="page-link" href="boardList.jsp?currentPage=<%=(currentPage-1)==0?currentPage:(currentPage-1)%>">Previous</a>
				    </li>
				    
			
				<%}
			
			
			
			
				//페이지 표시별 액션처리
				for(int pp=startPage;pp<=endPage;pp++) 
				{
					if(pp==currentPage) //css 주기 위한 조건 (버튼 누를 때 해당 페이지 숫자는 색상 변경되도록)
					{%>
						<li class="page-item active">
							<a class="page-link" href="boardList.jsp?currentPage=<%=pp%>"><%=pp %></a>
						</li>
					<%}else{%>
						<li class="page-item">
							<a class="page-link" href="boardList.jsp?currentPage=<%=pp%>"><%=pp %></a>
						</li>
					<%}
				}
			%>
			
				
			      	<%
			      	
			      	//다음에 대한 것
			      	if(totalPage>endPage){
			      		%>
			      			<li class="page-item">
			      				<a class="page-link"  href="boardList.jsp?currentPage=<%=(currentPage+1) %>">Next</a>
			      			</li>
			      		<%
			      	}else{%>
			      			<li class="page-item">
			      				<a class="page-link"  href="boardList.jsp?currentPage=<%=(currentPage+1)==endPage?(currentPage+1):currentPage %>">Next</a>
			      			</li>
			      	<%}
			      		
			      	%>
			      	
			</ul>
		</div>
	</div>
</body>
</html>