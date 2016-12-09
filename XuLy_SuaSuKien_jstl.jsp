<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding ="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% request.setCharacterEncoding("UTF-8"); %>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/QuanLyLichCaNhan?useUnicode=yes&characterEncoding=UTF-8"
		user="root" password="trongtri96"/>
		
<sql:update dataSource="${snapshot}" var="result1">
        	
        	Update SuKien set TenSuKien = ?, DiaDiem = ?, NgayBatDau = ?, GioBatDau = ?, NgayKetThuc = ?,
        	GioKetThuc = ?, BaoQua = ?, BaoTruoc = ?, SoLanLap = ?, KhoangThoiGianLap = ?, ChuKyLap = ?,
        	MoTa = ?
        	where MaSuKien = '${param.id}';
        	
            
            <sql:param value="${param.tensukien}" />
            <sql:param value="${param.diadiem}" />
            <sql:param value="${param.ngaybatdau}" />
            <sql:param value="${param.giobatdau}" />
            <sql:param value="${param.ngayketthuc}" />
            <sql:param value="${param.gioketthuc}" />
            <sql:param value="${param.BaoQua}" />
            <sql:param value="${param.BaoTruoc}" />
            <sql:param value="${param.SoLanLap}" />
            <sql:param value="${param.KhoangThoiGianLap}" />
            <sql:param value="${param.ChuKyLap}" />
            <sql:param value="${param.comment}" />
            
        </sql:update>
        
        <c:if test="${result1>=1}">
             <% request.setCharacterEncoding("UTF-8"); %>
 
            <c:redirect url="SuKienCuaToi.jsp" >
                <c:param name="susMsg" value="Đã sửa sự kiện thành công!" />
            </c:redirect>
        </c:if> 
             
</body>
</html>