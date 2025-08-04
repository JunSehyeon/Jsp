<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="vo.User4VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전송데이터 수신
	String user_id= request.getParameter("user_id");

	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "sehyeon";
	String pass= "1234";
	
	User4VO user4 = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host,user,pass);
		
		String sql = "SELECT * FROM USER4 WHERE USER_ID=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			user4 = new User4VO(); 
			user4.setUser_id(rs.getString(1));
			user4.setName(rs.getString(2));
			user4.setHp(rs.getString(3));
			user4.setAge(rs.getInt(4));
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h3>User4 등록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list.jsp">목록이동</a>
		
		<%if(user4 != null){ %>
		<form action="./proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="user_id" readonly value="<%= user4.getUser_id()%>" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%= user4.getName()%>" placeholder="이름 입력"/></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="hp" value="<%= user4.getHp()%>" placeholder="번호 입력"/></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="text" name="age" value="<%= user4.getAge()%>" placeholder="숫자 입력"/></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="등록하기"/>
					</td>
				</tr>
			</table>
		</form>
		<%}else{ %>
		<p style="color:red;">해당 사용자의 정보를 찾을수 없습니다.<a href="list.jsp">목록으로 이동</a></p>
<%}%>
</body>
</html>