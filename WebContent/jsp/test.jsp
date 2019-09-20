<%@page import="co.micol.dao.Dao"%>
<%@ page import="co.micol.dao.testdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Dao dao = new Dao();
	dao.select();
%>
</body>
</html>