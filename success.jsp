<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	%>
	You are not logged in<br/>
	<a href="DangNhap.jsp">Please Login</a>
	<%} else {
	%>
	response.sendRedirect("TrangChu.jsp");
	<%
	    }
	%>
</body>
</html>