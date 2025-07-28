<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 내장객체 - request</title>
	</head>
	
	<body>
		<h3>JSP 내장객체 - request</h3>
		
		<h4>GET 요청</h4>
		<a href="./proc/result1.jsp?uid=a101">결과페이지1</a>
		<a href="./proc/result2.jsp?uid=a101">결과페이지2</a>
		
		
		<h4>POST 요청</h4>
		<form action="" method="post">
			<table border = "1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" placeholder="아이디 입력 하세요."/></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="전송하기"/>
					</td>
				</tr>
			</table>
		</form>
		
	</body>
</html>