<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>cookie실습</h3>
		
		<form action="./proc/createCookie.jsp" method="post">
			<input type="text" name="id" placeholder="아이디 입력"/></br>
			<input type="password" name="pw" placeholder="비밀번호 입력"/></br>
			<input type="submit" value="로그인"/>
		</form>
		
		
	</body>
</html>