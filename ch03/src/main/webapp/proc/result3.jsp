<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//전송데이터 수신
	String queryString = request.getQueryString();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String hobby = request.getParameter("hobby");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		아이디 :<%=id%><br/>
		비번 :<%=pw%><br/>
		이름 :<%=name%><br/>
		생년월일 :<%=birth%><br/>
		성별 :<%=gender.equals("M")?"남자":"여자"%><br/>
		주소: <%=address %><br/>
		취미:<%=hobby %>
	</p>
</body>
</html>