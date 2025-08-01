<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전송데이터수신
	String user_id= request.getParameter("user_id");
	String name= request.getParameter("name");
	String hp= request.getParameter("hp");
	String age= request.getParameter("age");
	
	//데이터베이스 insert
	String host="jdbc:oracle:thin:@localhost:1521:xe";
	String user="sehyeon";
	String pass="1234";
	
	//try-catch
	try{
		//드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");

		//데이터베이스 접속
		Connection conn = DriverManager.getConnection(host,user,pass);
		
		//SQL 실행객체생성
		Statement stmt = conn.createStatement();
		
		String sql = "UPDATE USER3 SET name='" + name+ "', hp='" + hp + "', age=" + age + " ";
		   sql += "WHERE user_id='"+user_id+"'";
		
		//SQL 실행
		stmt.executeUpdate(sql);
		
		//데이터베이스 종료
		stmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	//목록이동	
	response.sendRedirect("../list.jsp");
%>