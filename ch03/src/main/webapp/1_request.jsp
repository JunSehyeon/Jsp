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
		<a href="./proc/result3.jsp">결과페이지3</a>
		
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
		
		
		<h4>확인문제</h4>
		<form action="./proc/result3.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type ="text" name="id" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type ="password" name="pw" placeholder="비밀번호 입력"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type ="text" name="name" placeholder="이름 입력"/></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type ="date" name="birth"/></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><label><input type ="radio" name="gender" value="M"/>남자</label></td>
					<td><label><input type ="radio" name="gender" value="F"/>여자</label></td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<select>
							<option>서울</option>
							<option>대전</option>
							<option>대구</option>
							<option>부산</option>
							<option>울산</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<select>
							<option>등산</option>
							<option>수영</option>
							<option>발레</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="전송하기"/>
					</td>
				</tr>
			</table>
		</form>
		
		<h4>request 자주 사용하는 클라이언트 정보</h4>
		<p>
			헤더정보 #1: <%=request.getHeader("User-Agent") %><br/>
			헤더정보 #2: <%=request.getHeader("referer") %><br/>
			헤더정보 #3: <%=request.getHeader("cookie") %><br/>
			프로토콜: <%=request.getProtocol() %><br/>
			서버이름: <%=request.getServerName() %><br/>
			요청주소: <%=request.getRequestURL() %><br/>
			요청경로: <%=request.getRequestURI() %><br/>
			IP주소:  <%=request.getRemoteAddr() %><br/>
			
		</p>
	</body>
</html>