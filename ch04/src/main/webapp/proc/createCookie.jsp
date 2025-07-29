<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//전송 데이터 수신
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//아이디가 abc123이고 비밀번호가 1234일때
	if(id.equals("abc123") && pw.equals("1234")){
		//회원이 맞을 경우
		Cookie cookie = new Cookie("username",id);
		cookie .setMaxAge(60*3);
		cookie.setPath("./resultCookie.jsp");
		
		//응답 객체로 클라이언트 쿠키 전송
		response.addCookie(cookie);
		response.sendRedirect("./success.jsp");
	}else{
		//회원이 아닐 경우
		response.sendRedirect("../cookie.jsp");
		
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>