<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>1.스크립트릿</title>
		<!-- 
			날짜: 2025/07/28
			이름: 전세현
			내용: 스크립트 요소 기본
		 -->
	</head>
	<body>
		<h3>1.스크립트 요소</h3>
		<h4>스크립트 릿(Scriptlet)</h4>
		<%
			//스크립트 릿
			int var1 = 1;
		    boolean var2 = true;
		    double var3 = 4.14;
		    
		    //브라우저 출력
		    out.println("<p>var1 :"+var1+"</p>");
		%>
		<h4>표현식(Expression)</h4>
		
		<p>var2 :<%=var2 %>
	</body>
</html>