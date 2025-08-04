<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전송데이터 수신
	String user_id= request.getParameter("user_id");
	String name= request.getParameter("name");
	String hp= request.getParameter("hp");
	String age= request.getParameter("age");
	
	//데이터 베이스 insert
	String host="jdbc:oracle:thin:@localhost:1521:xe";
	String user="sehyeon";
	String pass="1234";
	
	try{
		//드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//데베 접속
		Connection conn = DriverManager.getConnection(host,user,pass);
		
		//SQL 실행 객체 생성
		Statement stmt = conn.createStatement();
		
		String sql = "UPDATE USER4 SET name='" + name+ "', hp='" + hp + "', age=" + age + " ";
		   sql += "WHERE user_id='"+user_id+"'";
		//Sql 실행
		stmt.executeUpdate(sql);
		
		stmt.close();
		conn.close();
	}catch(Exception e){
		e.printStackTrace();//이게 예외처리 인가?
	}
	
	response.sendRedirect("../list.jsp");
%>