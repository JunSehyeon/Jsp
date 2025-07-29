<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그아웃 처리
	session.removeAttribute("sessUser");
	session.invalidate();
	
	//페이지 이동
	response.sendRedirect("../session.jsp");
%>