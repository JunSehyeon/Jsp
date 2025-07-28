<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전송데이터 수신
	String queryString = request.getQueryString();
	String uid = request.getParameter("uid");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>요청결과</h3>
	<p>
		쿼리스트링 : <%=queryString %><br/>
		아이디 : <%=uid %><br/>
	</p>
	<a href="../1_request.jsp">뒤로가기</a>
</body>
</html>